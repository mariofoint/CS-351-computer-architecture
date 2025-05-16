import matplotlib.pyplot as plt

threads = [1, 2, 3, 4, 5, 6, 7, 8, 16, 24, 32, 40, 48, 56, 64, 72, 80]
speedup = [1.00, 1.88, 2.42, 3.08, 3.75, 4.25, 4.84, 5.23, 7.20, 7.75, 8.24, 7.62, 7.75, 7.83, 7.66, 7.70, 7.66]

plt.figure(figsize=(10, 6))
plt.plot(threads, speedup, marker='o')
plt.title('Speedup vs Thread Count')
plt.xlabel('Thread Count')
plt.ylabel('Speedup')
plt.grid(True)
plt.savefig('speedup.png')
