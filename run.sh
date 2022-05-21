#Run the example that converts raw reads to summarized indels
cd /home/wergillius/Project/SelfTarget/indel_analysis/compute_indels
python run_example.py                   ##Example on small set of 6 oligos of 
                                        ##extraction of indel summaries

#Endgenous vs Synthetic endogenous_comparisons
cd /home/wergillius/Project/SelfTarget/indel_analysis/endogenous_comparisons
python run_example.py                   ##Single example of extraction of indels 
                                        ##from data from van Overbeek et al 2016.
python compare_overbeek_profiles.py     ##Generation of plots in paper Fig2 from 
                                        ##pre-generated indels.

#Generation of other plots detailing indel characteristics
cd /home/wergillius/Project/SelfTarget/indel_analysis
python plot_all.py

cd /home/wergillius/Project/SelfTarget
Rscript process_Rmd.R

#Example of indel prediction
cd /code/indel_prediction/model_testing
python compute_predicted_old_new_kl.py 

