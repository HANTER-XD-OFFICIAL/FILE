# BIT_32.py

import ctypes
import platform

# সিস্টেম আর্কিটেকচার চেক করা
bit_arch = platform.architecture()[0]
print(f"System architecture: {bit_arch}")

# যদি ৩২-বিট সিস্টেম হয়
if bit_arch == '32bit':
    print("Running on a 32-bit system.")
    
    # file_cark.cpython-311.so মডিউল লোড করা
    try:
        file_cark = ctypes.CDLL('./file_cark.cpython-311.so')
        
        # file_cark থেকে একটি ফাংশন কল করা (যদি ফাংশন থাকে)
        # উদাহরণস্বরূপ, ধরো মডিউলে `login` নামে একটি ফাংশন আছে:
        # file_cark.login()
        
        print("file_cark module loaded successfully.")
    except Exception as e:
        print(f"Error loading file_cark module: {e}")
else:
    print("Not a 32-bit system.")
