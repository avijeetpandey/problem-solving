# implementation of linear search
def linearSearch(data,key):
    for i in range(0,len(data)):
        if data[i]==key:
            return True
    return False
