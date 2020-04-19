#! /usr/bin/env python3

import re
concert = "Katherine went to the concert to see Catheryn and the Cathryn’s. She ran into her friend Kathryn, who introduced Katherine to her friend Catherine. Together, they enjoyed the concert while texting inaudible snippets to their mutual friend, Kathrin. Their mercurial friend, Katharine, felt left out."
concert = concert.rstrip("\n")
print(concert)

#Finding positions of all Katherines
match = re.finditer(r"(K|C)(ath)[a-z]{1,6}", concert)
name = []
start_position = []
stop_position = []
length = []
for find in match:
    find_start = find.start()
    start_position.append(find_start)
    find_end = find.end()
    stop_position.append(find_end)
    print(str(find_start) + " to " + str(find_end))

#Finding all Katherines and their lengths
match = re.findall("((K|C)ath[a-z]{1,6})", concert)
for i in match:
    print(i[0])
    name.append(i[0])
    print("length =", len(str(i[0])))
    length.append(len(i[0]))

# Print tab delimited output
for i in range(0,8):
    print(name[i], start_position[i], stop_position[i], length[i], sep ="\t")