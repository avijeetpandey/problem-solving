class Solution:
    def defangIPaddr(self, address: str) -> str:
        defangedIP = ""
        for i in range(0, len(address)):
            if address[i] == ".":
                defangedIP += "[.]"
            else:
                defangedIP += address[i]

        return defangedIP
