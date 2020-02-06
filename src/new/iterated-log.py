import numpy as np
import matplotlib.pyplot as plt
N = 10*1000*1000
B = 2 * np.random.binomial(1, 0.5, N) - 1       # N independent +1/-1 each of them with probability 1/2
B = np.cumsum(B)                                # random walk
plt.plot(B); plt.show()
C = B / np.sqrt(2 * np.arange(N) * np.log(np.log(np.arange(N))))
M = np.maximum.accumulate(C[::-1])[::-1]        # limsup, see http://stackoverflow.com/questions/35149843/running-max-limsup-in-numpy-what-optimization
plt.plot(M); plt.show()
