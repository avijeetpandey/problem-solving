# first way
def isPalindrome(str):
    reverseStr = ''
    for i in str:
        reverseStr = i + reverseStr
    
    return 1 if str == reverseStr else 0


# second way
def isPalindromeSecond(str):
    reverseStr = str[::-1]
    return str == reverseStr