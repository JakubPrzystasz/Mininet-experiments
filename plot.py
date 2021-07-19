#%%
#Place that folder in directory with all .dat files
#and run: wsl ls -1 | python plot.py

import numpy as np
import math
import matplotlib.pyplot as plt
import fileinput

interfaces = dict()

for line in fileinput.input():
    line = line.rstrip()
    filename = line
    line = line.split('.')
    if len(line) > 1:
        if (line[1] == 'dat'):
            with open(filename) as file:
                i = 0
                for ln in file.readlines():
                    ln = ln.rstrip().split()

                    try:
                        ln[2] = int(int(ln[2]) / 1000)

                        ln[3] = int(int(ln[3]) / 1000)
                        ln[0] = int(ln[0])

                        if ln[1] not in interfaces:
                            interfaces[ln[1]] = dict()

                        if ln[4] not in interfaces[ln[1]]:
                            interfaces[ln[1]][ln[4]] = dict()

                        interfaces[ln[1]][ln[4]][ln[0]] = ln[2], ln[3]
                    except:
                        print(f'DUPA at: {i} {filename}')
                    i += 1


def plot_fig(x, y, if_name, type):
    plt.plot(x, y, label=dataset_name)
    plt.legend()
    plt.ylabel(f'Throughput {type} MB/s')
    plt.xlabel(f'Time')
    plt.xticks([])
    plt.savefig(f'{if_name}_{type}.png')


for if_name in interfaces:
    print(f'Plotting {if_name}')
    interface = interfaces.get(if_name)
    data = interface['optimal']

    for dataset_name in interface:
        data = interface.get(dataset_name)

        time = list()
        i = 0
        rx = list()
        tx = list()

        for value in data:
            tmp = data.get(value)
            if tmp[0] == 1 or tmp[1] == 0:
                continue
            rx.append(tmp[0])
            tx.append(tmp[1])
            time.append(i)
            i += 1

        time = np.array(time)
        tx = np.array(tx)
        rx = np.array(rx)
    
        plot_fig(time, rx, if_name, 'rx')
    
    plt.clf()

print('Done')