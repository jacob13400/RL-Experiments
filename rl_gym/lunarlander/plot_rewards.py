import json
import matplotlib.pyplot as plt

FILENAME = "openaigym.episode_batch.0.42982.stats.json"

with open(FILENAME) as f:
    data = json.load(f)

rewards = data["episode_rewards"]

print(rewards[190:210])

# plt.plot(rewards)
# plt.show()