# Function to sort list of zeroes and ones without using a sorting algorithm

def sortZeroesAndOnes(list):
    zeroes = ones = twos = 0

    for i in list:
        if i == 1:
            ones+=1
        elif i == 2:
            twos+=1
        else:
            zeroes+=1

    i = 0
    while zeroes:
        list[i]=0
        i+=1
        zeroes-=1

    while ones:
        list[i]=1
        i+=1
        ones-=1

    while twos:
        list[i]=2
        i+=1
        twos-=1

