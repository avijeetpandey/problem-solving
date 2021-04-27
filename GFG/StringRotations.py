def areStringRotations(strOne,strTwo):
    if len(strOne) != len(strTwo):
        return False
    
    tempString = strOne + strOne
    if tempString.count(strTwo)>0 :
        return True
    else:
         return False