import json
import matplotlib.pyplot as plt
from scipy.interpolate import make_interp_spline
import numpy as np

FILENAME = "t350.e1000.json"

with open(FILENAME) as f:
    data = json.load(f)

rewards = data["episode_rewards"]

# print(rewards)

x1=list(range(1,351))
x2=list(range(351,1001))
# print(x)
y1=rewards[:350]
y2=rewards[350:]
# rewards_smooth = make_interp_spline(x, y, 3)

poly = np.polyfit(x1,y1,5)
poly_y1 = np.poly1d(poly)(x1)

poly = np.polyfit(x2,y2,5)
poly_y2 = np.poly1d(poly)(x2)

# print(rewards_smooth(y))
# x = x1+x2
# poly_y = poly_y1+poly_y2
plt.plot(x1, y1)
plt.plot(x2, y2)
# plt.axvline(x=200)
# plt.plot(x, y)
plt.show()
