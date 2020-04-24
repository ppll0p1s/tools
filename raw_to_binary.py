"""
Script to convert raw binary to binary
"""

import binascii

with open('raw_binary', 'r') as f, open('binary','wb') as fout:
	data = f.read().replace('!','')
	data = data.replace('#','')
	data = data.replace(',','')
	data = data.replace('\t','')
	data = data.replace('\n',' ')

	fout.write(binascii.unhexlify(''.join(data.split()))) 
	fout.close() 
