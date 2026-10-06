#data = [12, 7, 12, 5, 7, 9, 5, 12, 9, 7, 15]

#duplicates = []
#counts = {}

#for x in data:
  #  if x in counts:
       # counts[x] += 1
   # else:
   #     counts[x] = 1

#for x in data:
   # if counts[x] > 1 and x not in duplicates:
       # duplicates.append(x)

#print("Duplicate Values:")

#for x in duplicates:
   # print(x, "->", counts[x], "times")


 #2)missing number logic   

ids = [1, 2, 3, 4, 5, 7, 8, 9, 10]

for i in range(1, 11):
    if i not in ids:
        print("Missing ID:", i)
