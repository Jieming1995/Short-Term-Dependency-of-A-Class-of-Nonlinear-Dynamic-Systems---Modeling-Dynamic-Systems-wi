# Short-Term Dependency of A Class of Nonlinear Dynamic Systems -Modeling Dynamic Systems with Non-Recurrent Neural Networks
Recurrent neural network (RNN) is a popular modeling choice for sequential data in dynamic systems. However, empirical experience shows RNNs are often difficult to tune and customize. It drives practitioners to replace RNN with non-recurrent neural networks which presented comparable performances in some cases. In this paper, we model a class of dynamic systems with non-recurrent neural networks - feed-forward neural network (FFNN).   The success of using FFNN to model sequential data indicates the short-term dependency among sequential data. We systematically analyze the short-term dependency in a class of nonlinear dynamic systems with partial system knowledge based on the observability criterion. Then we use a case study to show that the sequential data in the ultra-high magnetic response (UHMR) system only have 2-step dependency. This result indicates that from every three steps in an experiment of the UHMR system, we can get a datum to train the FFNN. Therefore, sufficient data can be collected within a small number of experiments. Based on the analysis, we train an FFNN to model the UHMR system based on the sequential data from four experiments.By using proper data pre-processing, the FFNN can learn the dynamic behavior and well predict the platelet angle with an acceptable error for multiple cases.

# The simulation part of this paper consist of followings: 
## 1. Compare the continuous model and Euler approximation of UHMR system
This part are included in the "Continuous&Euler" file. By using the ODE solver in Matlab  (file "ODE_continuous"), we get the continuous data saved in "continuous_data" for continuous model. Then, we run the "Euler" file to get the "Euler_data" for Euler approximation. 

## 2. Train FFNN with noise-free data.  
This part is included in File "Main".  The trained model is saved in file "Models" as "FFNN". The figure results are saved in file "Figures". 

## 3. Train FFNN with noisy data.
This part is included in File "Main_noise".  We use ten different levels of noise data. The trained models for different noise are saved in file "Models" as "FFNN_noise xxx", where xxx is the standard deviation. The figure results are saved in file "Figures". 
