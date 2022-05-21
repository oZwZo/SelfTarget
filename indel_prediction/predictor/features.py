import io, csv
import pandas as pd

NTS = ['A','T','G','C']

def feature_DelSize(indel_details ):
    """
    cut deletion size into 5 region + 1 if any deletion
    Arguments:
        indel_details: (uncut_seq, cut_site, left, right, ins_seq)  
    Returns:
        feature list
        feature label list
    """
    features, feature_labels = [],[]
    uncut_seq, cut_site, left, right, ins_seq = indel_details
    dsize = right-left-1
    feature_labels.append('Any Deletion'); features.append( len(ins_seq) == 0 )
    feature_labels.append('D1'); features.append( len(ins_seq) == 0 and dsize == 1)
    feature_labels.append('D2-3'); features.append( len(ins_seq) == 0 and dsize in range(2,4))
    feature_labels.append('D4-7'); features.append( len(ins_seq) == 0 and dsize in range(4,8))
    feature_labels.append('D8-12'); features.append( len(ins_seq) == 0 and dsize in range(7,13))
    feature_labels.append('D>12'); features.append( len(ins_seq) == 0 and dsize > 12)
    return features, feature_labels

def feature_InsSize(indel_details):
    """
    if any insertion , I1 and I2
    Arguments:
        indel_details: (uncut_seq, cut_site, left, right, ins_seq)  
    Returns:
        feature list : [] length 3
        feature label list
    """
    features, feature_labels = [],[]
    uncut_seq, cut_site, left, right, ins_seq = indel_details
    feature_labels.append('Any Insertion'); features.append( len(ins_seq) > 0 )
    feature_labels.append('I1'); features.append( len(ins_seq) == 1 )
    feature_labels.append('I2'); features.append( len(ins_seq) == 2 )
    return features, feature_labels

def feature_DelLoc(indel_details ):
    """
    Seperately record left deletion starting point and right deletion ending point
    Arguments:
        indel_details: (uncut_seq, cut_site, left, right, ins_seq)  
    Returns:
        feature list : [] length 18
        feature label list
    """
    features, feature_labels = [],[]
    uncut_seq, cut_site, left, right, ins_seq = indel_details
    
    for lmin, lmax in [(-1,-1),(-2,-2),(-3,-3),(-4,-6),(-7,-10),(-11,-15),(-16,-30)]: # 7 features here
        feature_labels.append('DL%d-%d' % (lmin,lmax)); 
        features.append( (left - cut_site) in range(lmin,lmax+1) )
    # 2 more
    feature_labels.append('DL<-30'); features.append( (left - cut_site)< -30 )
    feature_labels.append('DL>=0'); features.append( (left - cut_site) >= 0 )

    for rmin, rmax in [(0,0),(1,1),(2,2),(3,5),(6,9),(10,14),(15,29)]: # 7 features here
        feature_labels.append('DR%d-%d' % (rmin,rmax)); 
        features.append( (right - cut_site) in range(rmin,rmax+1) )
    # 2 more
    feature_labels.append('DR<0'); features.append( (right - cut_site) < 0 )
    feature_labels.append('DR=>30'); features.append( (right - cut_site) > 30 )
    if len(ins_seq) > 0:    #Apply these features to deletions only
        features = [0 for x in features]
    return features, feature_labels

def feature_InsSeq(indel_details):
    """
    the nucleotide composition of the inserted sequence, can cover I1 and I2
    4 + 16 = 20
    Arguments:
        indel_details: (uncut_seq, cut_site, left, right, ins_seq)  
    Returns:
        feature list : [] length 20
        feature label list
    """
    features, feature_labels = [],[]
    uncut_seq, cut_site, left, right, ins_seq = indel_details
    for nt in NTS: 
        feature_labels.append('I1_%s' % (nt)); features.append(ins_seq==nt) # 4
        for nt2 in NTS:  # 4*4 16
            feature_labels.append('I2_%s%s' % (nt, nt2)); features.append(ins_seq==(nt+nt2))
    return features, feature_labels

def feature_InsLoc(indel_details ):
    """
    Describe the location of insertion by its left sites
    Arguments:
        indel_details: (uncut_seq, cut_site, left, right, ins_seq)  
    Returns:
        feature list : [] length 5
        feature label list
    """
    features, feature_labels = [],[]
    uncut_seq, cut_site, left, right, ins_seq = indel_details

    # 3 here
    for lmin, lmax in [(-1,-1),(-2,-2),(-3,-3)]:
        feature_labels.append('IL%d-%d' % (lmin,lmax)); 
        features.append( (left - cut_site) in range(lmin,lmax+1) )

    # 2 more here
    feature_labels.append('IL<-3'); features.append( (left - cut_site) < -3 )
    feature_labels.append('IL>=0'); features.append( (left - cut_site) >= 0 )

    if len(ins_seq) == 0:    #Apply these features to insertions only
        features = [0 for x in features]
    return features, feature_labels

def feature_LocalCutSiteSequence(indel_details, lims=(-5, 4) ):
    """
    Describe the sequence context flanking around the cut site
    Arguments:
        indel_details: (uncut_seq, cut_site, left, right, ins_seq)  
    Returns:
        feature list : [] length 36
        feature label list
    """
    features, feature_labels = [],[]
    uncut_seq, cut_site, left, right, ins_seq = indel_details
    for offset in range(lims[0],lims[1]): # -5 <-> 3 , totally 9 sites
        # from 5 left to the right of PAM
        for nt in NTS:
            # 9 * 4
            feature_labels.append('CS%d_NT=%s' % (offset, nt)); features.append(uncut_seq[cut_site+offset]==nt)
    return features, feature_labels 

def feature_LocalCutSiteSeqMatches(indel_details, lims=(-3, 2) ):
    """
    Combination of any two sites from -3 to 2 around the cut site, 5 sites -> 10 combinations, 4 nucleotdie -> 40 features

    Arguments:
        indel_details: (uncut_seq, cut_site, left, right, ins_seq)  
    Returns:
        feature list : [] length 40
        feature label list
    """
    features, feature_labels = [],[]
    uncut_seq, cut_site, left, right, ins_seq = indel_details

    for offset1 in range(lims[0],lims[1]): # -3 <-> 2, 5 
        for offset2 in range(lims[0],offset1):
            for nt in NTS:
                feature_labels.append('M_CS%d_%d_NT=%s' % (offset1, offset2, nt))
                features.append((uncut_seq[cut_site+offset1]==uncut_seq[cut_site+offset2]) and (uncut_seq[cut_site+offset1]==nt))
    return features, feature_labels 

def feature_LocalRelativeSequence(indel_details, lims=(-3, 3) ):
    """
    the nucleotide composition flanking around deletion start point and end points

    Arguments:
        indel_details: (uncut_seq, cut_site, left, right, ins_seq)  
    Returns:
        feature list : [] length 48
        feature label list
    """
    features, feature_labels = [],[]
    uncut_seq, cut_site, left, right, ins_seq = indel_details
    for offset in range(lims[0],lims[1]):
        for nt in NTS:
            feature_labels.append('L%d_NT=%s' % (offset, nt)); 
            features.append(uncut_seq[left+1+offset]==nt if left+offset+1>=0 else 0)

            feature_labels.append('R%d_NT=%s' % (offset, nt)); 
            features.append(uncut_seq[right+offset]==nt if right+offset<len(uncut_seq) else 0)
    if len(ins_seq) > 0:    #Apply these features to deletions only
        features = [0 for x in features]
    return features, feature_labels

def features_SeqMatches(indel_details, lims=(-3, 3) ):
    """
    Arguments:
        indel_details: (uncut_seq, cut_site, left, right, ins_seq)  
    Returns:
        feature list : [] length 72
        feature label list
    """
    features, feature_labels = [],[]
    uncut_seq, cut_site, left, right, ins_seq = indel_details

    for loffset in range(lims[0],lims[1]):
        # lims
        for roffset in range(lims[0],lims[1]):
            
            feature_labels.append('M_L%d_R%d' % (loffset, roffset)) 
            feature_labels.append('X_L%d_R%d' % (loffset, roffset))

            if left+loffset > 0 and right+roffset < len(uncut_seq):
                # the flanking region is still in the target sequence
                features.append(uncut_seq[left+loffset+1]==uncut_seq[right+roffset])
                features.append(uncut_seq[left+loffset+1]!=uncut_seq[right+roffset])
            else: features.append(0); features.append(0)

    if len(ins_seq) > 0:    #Apply these features to deletions only
        features = [0 for x in features]
    return features, feature_labels

def features_InsSeqMatches(indel_details ):
    """
    !!!!! This feature category is not used during prediction !!! Bug ?
    Arguments:
        indel_details: (uncut_seq, cut_site, left, right, ins_seq)  
    Returns:
        feature list : [] length 18
        feature label list
    """
    features, feature_labels = [],[]
    uncut_seq, cut_site, left, right, ins_seq = indel_details
    for offset in range(-5, 5):
        feature_labels.append('I1M_O%d' % (offset)); features.append(uncut_seq[cut_site+offset]==ins_seq)
        feature_labels.append('I2M_O%d_N1' % (offset)); features.append(uncut_seq[cut_site+offset]==ins_seq[0])
        feature_labels.append('I2M_O%d_N2' % (offset)); features.append(uncut_seq[cut_site+offset]==ins_seq[1])
        feature_labels.append('I1X_O%d' % (offset)); features.append(uncut_seq[cut_site+offset]!=ins_seq)
        feature_labels.append('I2X_O%d_N1' % (offset)); features.append(uncut_seq[cut_site+offset]!=ins_seq[0])
        feature_labels.append('I2X_O%d_N2' % (offset)); features.append(uncut_seq[cut_site+offset]!=ins_seq[1])
    if len(ins_seq) == 0:    #Apply these features to insertions only
        features = [0 for x in features]
    return features, feature_labels

def feature_I1or2Rpt(indel_details):
    """
    Detect 4 features
    Arguments:
        indel_details: (uncut_seq, cut_site, left, right, ins_seq)
    Returns:
        features : list of length 4
        feature_labels : list of length 4
    """
    features, feature_labels = [],[]
    uncut_seq, cut_site, left, right, ins_seq = indel_details
    #                                       inserted sequence copied from the neighbor site
    feature_labels.append('I1Rpt'); features.append(ins_seq == uncut_seq[cut_site-1] and (left-cut_site)==-1)
    feature_labels.append('I1NonRpt'); features.append(len(ins_seq) == 1 and ins_seq != uncut_seq[cut_site-1] and (left-cut_site)==-1)     # not repeat 
    #                                      inserted sequence copied from the neighor site, repeat twice
    feature_labels.append('I2Rpt'); features.append(ins_seq == (uncut_seq[cut_site-1]*2) and (left-cut_site)==-1)
    feature_labels.append('I2NonRpt'); features.append(len(ins_seq) == 2 and ins_seq != (uncut_seq[cut_site-1]*2) and (left-cut_site)==-1) # non repeat 
    if len(ins_seq) == 0:    #Apply these features to insertions only
        features = [0 for x in features]
    return features, feature_labels

def hasLeftMH(left,right, uncut_seq, mh_len, mismatch=0):

    # ----left ............... ----right
    left_seq = uncut_seq[left-mh_len:left+1]        # -> return a sequence of length mh_len+1
    right_seq = uncut_seq[right-mh_len-1:right]
    if len(left_seq[1:]) != len(right_seq[1:]) or len(right_seq[1:])==0: return 0
    if left_seq[0] == right_seq[0]: return 0        #(if part of a longer microhomology)
    if left_seq[-1] != right_seq[-1]: return 0      #(last letter must match)
    if left_seq[1] != right_seq[1]: return 0        #(first letter must match)
    return sum([x==y for (x,y) in zip(left_seq[1:],right_seq[1:])]) == (mh_len-mismatch)

def hasRightMH(left,right, uncut_seq, mh_len, mismatch=0):

    # left---- ............... right----
    left_seq = uncut_seq[left+1:left+mh_len+2]     # -> return a sequence of length mh_len+1
    right_seq = uncut_seq[right:right+mh_len+1]
    if len(left_seq[:-1]) != len(right_seq[:-1]) or len(left_seq[:-1])==0: return 0
    if left_seq[-1] == right_seq[-1]: return 0     #(if part of a longer microhomology)
    if left_seq[-2] != right_seq[-2]: return 0     #(last letter must match)
    if left_seq[0] != right_seq[0]: return 0       #(first letter must match)
    return sum([x==y for (x,y) in zip(left_seq[:-1],right_seq[:-1])]) == (mh_len-mismatch)

def feature_microhomology(indel_details ):
    """
    6 normal micro homology *2 (Left/Right) -> 12 features +
    4 long mismatched MH *2 (Left/Right) -> 8 feautres +
    1 No MH

    Arguments:
        indel_details: (uncut_seq, cut_site, left, right, ins_seq)
    Returns:
        features : list of length 21
        feature_labels : list of length 21
    """
    features, feature_labels = [],[]
    uncut_seq, cut_site, left, right, ins_seq = indel_details

    # 12 here
    for mh_min, mh_max in [(1,1),(2,2),(3,3),(4,6),(7,10),(11,15)]:
        # left micro homology
        feature_labels.append('L_MH%d-%d' % (mh_min, mh_max))
        # the bool operation `any` collapse MH events of length in a defined range
        features.append(any([hasLeftMH(left,right, uncut_seq, x) for x in range(mh_min, mh_max+1)]))

        # left micro homology
        feature_labels.append('R_MH%d-%d' % (mh_min, mh_max))
        features.append(any([hasRightMH(left,right, uncut_seq, x) for x in range(mh_min, mh_max+1)]))


        # 8 more
        if mh_max > 2:  # 3, 6, 10, 15 
            feature_labels.append('L_MM1_MH%d-%d' % (mh_min, mh_max))
            features.append(any([hasLeftMH(left,right, uncut_seq, x, 1) for x in range(mh_min, mh_max+1)]))
            feature_labels.append('R_MM1_MH%d-%d' % (mh_min, mh_max))
            features.append(any([hasRightMH(left,right, uncut_seq, x, 1) for x in range(mh_min, mh_max+1)]))

    # and 1 here 
    feature_labels.append('No MH'); features.append(sum(features)==0)
    if len(ins_seq) > 0:    #Apply these features to deletions only
        features = [0 for x in features]
    return features, feature_labels

def features_pairwise(features1, feature_labels1, features2, feature_labels2 ):
    """
    generate interaction terms
    Arguments:
        features[1|2] : list of int \in [0,1], binary features of 1 category 
        feature_labels[1|2] : list , 
    Returns
        pairwise_features : [int, ...] : the product of two binary features (v1*v2)
        pairwise_labels : [str, ...] : PW_label1_vs_label2
    """
    pairwise_labels, pairwise_features = [], []
    for i,(val1,label1) in enumerate(zip(features1, feature_labels1)):
        for j,(val2,label2) in enumerate(zip(features2, feature_labels2)):
            pairwise_labels.append('PW_%s_vs_%s' % (label1, label2))
            pairwise_features.append(val1*val2)
    return pairwise_features, pairwise_labels

def calculateFeatures(indel_details):
    """
    Arguments:
        indel_details : uncut_seq, cut_site, left, right, ins_seq = indel_details
    Returns:
        all_features: [int \in [0,1],] ,273 featues from 11 categories + 3360 features from 13 interaction categories
        all_feature_labels: [str], the name of totally 3,633 features
    """
    all_features, all_feature_labels = [], []
    # 11  function here to dfine the features
    feature_list = [feature_InsSize, feature_DelSize, feature_DelLoc, feature_InsLoc,
                    feature_I1or2Rpt,feature_InsSeq, feature_LocalCutSiteSequence, feature_LocalCutSiteSeqMatches, 
                    feature_LocalRelativeSequence, features_SeqMatches, feature_microhomology]
    # function name and x(indel_details); is the implement, which returns (features, feature_labels)
    lin_fts = {x.__name__: x(indel_details) for x in feature_list }

    # pairwise interaction : totally 13 interaction categories
    pairwise_list = [('feature_DelSize','feature_DelLoc'),('feature_InsSeq','feature_I1or2Rpt'), ('feature_microhomology','feature_DelSize')]
    pairwise_list += [('feature_microhomology','feature_DelLoc'), ('feature_LocalRelativeSequence','feature_DelSize'), ('feature_LocalCutSiteSequence','feature_InsSize')]
    pairwise_list += [('features_SeqMatches','feature_DelSize'),('feature_LocalRelativeSequence','feature_DelLoc'), ('feature_LocalCutSiteSequence','feature_DelSize')]
    pairwise_list += [('feature_LocalCutSiteSeqMatches','feature_DelSize'),('feature_LocalCutSiteSequence','feature_DelSize'), ('feature_LocalCutSiteSequence','feature_I1or2Rpt')]
    pairwise_list += [('feature_LocalCutSiteSeqMatches','feature_I1or2Rpt')]
    
    #   feature1 feature.__name__ 2
    for(fname1, fname2) in pairwise_list:         
        #                                                features1,      feature_labels1,   features2,        feature_labels2
        features, feature_labels = features_pairwise(lin_fts[fname1][0],lin_fts[fname1][1],lin_fts[fname2][0],lin_fts[fname2][1])
        all_features.extend(features); all_feature_labels.extend(feature_labels)
    for fname in lin_fts:
        all_features.extend(lin_fts[fname][0]); all_feature_labels.extend(lin_fts[fname][1])
    assert(len(all_features)==len(all_feature_labels))
    return all_features, all_feature_labels

def calculateFeaturesForGenIndelFile( generated_indel_file, uncut_seq, cut_site, out_file, is_reverse=False):
    """
    Arguments:
        generated_indel_file: tmp_genindels_file
        uncut_seq: str, target_seq
        cut_site: int, PAM index -3
        out_file : str, tmp_features_file the path of file to write the feature 
        is_reverse : bool
    Returns:
        None
    """
    f = io.open(generated_indel_file )
    fout = io.open(out_file, 'w')
    fout.write(f.readline())    #Git commit line (pass on)
    pam_dir = 'REVERSE' if is_reverse else 'FORWARD'
    fout.write(u'###%s\t%d\t%s\n' % (uncut_seq, cut_site, pam_dir))
    first = True
    A,T,G,C = 'A','T','G','C'
    AA,AT,AC,AG,CG,CT,CA,CC = 'AA','AT','AC','AG','CG','CT','CA','CC'
    GT,GA,GG,GC,TA,TG,TC,TT = 'GT','GA','GG','GC','TA','TG','TC','TT'

    for toks in csv.reader(f,delimiter='\t'):
        # D18_L-16C2R5	3	[(4,23,),(5,24,),(6,25,)] :
        indel, indel_locs = toks[0], eval(toks[2])
        for indel_loc in indel_locs:
            ins_seq = indel_loc[2] if len(indel_loc) > 2 else ''
            left = indel_loc[0] if not is_reverse else (78 - indel_loc[1]) 
            right = indel_loc[1] if not is_reverse else (78 - indel_loc[0]) 
            ins_seq = ins_seq if not is_reverse else Bio.Seq.reverse_complement(ins_seq)
            indel_details = (uncut_seq, cut_site, left, right, ins_seq)
            # compute features for each location ???
            features, feature_labels = calculateFeatures(indel_details)
                
            if first: fout.write(u'Indel\tLeft\tRight\tInserted Seq\t%s\n' % '\t'.join(feature_labels))
            feature_str = '\t'.join(['%d' % x for x in features])
            fout.write(u'%s\t%d\t%d\t%s\t%s\n' % (indel, left, right, ins_seq, feature_str))
            first = False
    fout.close()
    f.close()

def readFeaturesData(features_file):
    feature_data = pd.read_csv(features_file, skiprows=2, sep='\t', dtype={'Inserted Seq':str})
    feature_cols = [x for x in feature_data.columns if x not in ['Oligo ID','Indel','Left','Right','Inserted Seq']]
    indel_feature_data = 1*feature_data[['Indel'] + feature_cols].groupby('Indel').any()
    indel_feature_data['Indel'] = indel_feature_data.index
    return indel_feature_data, feature_cols