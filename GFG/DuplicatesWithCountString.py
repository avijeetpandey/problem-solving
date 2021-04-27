str = 'test string'
frequency = {}

for i in str:
    if i in frequency.keys():
        frequency[i]+=1
    else:
        frequency[i]=1

print('# printing duplicates')
for key,value in frequency.items():
    if value > 1:
        print('count -> ',key,' ',value)