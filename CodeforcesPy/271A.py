# Enter the year
year = int(input())

for i in range(year+1,90013):
    nextYears = list(str(i))
    mySet = set(nextYears)
    if len(mySet) == 4:
        print(i)
        break