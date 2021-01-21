
import pandas as pd
import tensorflow as tf
import numpy as np
import matplotlib.pyplot as plt
from keras.layers import Dense
from sklearn.metrics import mean_squared_error

def euler(a):
    c1=4.2816e-7  #representative parameters c1/I
    c2=1.568      #c2/I
    c3=5.7534     #c3/I
    di=0.001  #sampling period
    T=10000   # 10000 steps 
    phi1=np.zeros((1, T)).squeeze()  #phi1: the platelet angle (in radians)
    phi2=np.zeros((1,T)).squeeze()   # phi2 : the platelet angular velocity (in radians)

    for t in range(1,T-1):
        hinput=a*1000/(4*np.pi)    #a: control input (magnetic strength)
        phi1[t+1]=phi1[t]+di*phi2[t]
        phi2[t+1]=phi2[t]+di*(-c3*phi2[t]+c2*np.cos(phi1[t])+c1*hinput*abs(hinput)*np.sin(2*phi1[t]))
          
    return [phi1,phi2]

[a1,a2,a3,a4]=[20,40,60,80]   # use 4 set of control inputs.
[phi1_a1,phi2_a1]=euler(a1)
[phi1_a2,phi2_a2]=euler(a2)
[phi1_a3,phi2_a3]=euler(a3)
[phi1_a4,phi2_a4]=euler(a4)


plt.plot(phi1_a1)
plt.plot(phi1_a2)
plt.plot(phi1_a4)
plt.plot(phi1_a3)


# In[ ]:




