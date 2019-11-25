#!/usr/bin/python

key = 'EICTDGYIYZKTHNSIRFXYCPFUEOCKRN'
cyphertext = 'PNUKLYLWRQKGKBE'

pt = ''
for i in range(len(cyphertext)):
        tmp = ord(cyphertext[i]) - ord(key[i])
        if tmp<0:
                tmp += 26
        tmp += ord('A')
        pt += chr(tmp)
print pt
