# Enter test cases
testCases = int(input())

while(testCases):
    word = input()
    length = len(word)
    if length > 10 :
        print(word[0]+str(length-2)+word[length-1])
    else: 
        print(word)
    testCases-=1