#!/usr/bin/env python3

import platform
import os

# আর্কিটেকচার চেক করা
bit = platform.architecture()[0]

if bit == '64bit':
    print("64-bit")
    # 64-বিট কোড এখানে থাকবে
    os.system('python3 BIT_64.py')
elif bit == '32bit':
    print("32-bit")
    # 32-বিট কোড এখানে থাকবে
    os.system('python3 BIT_32.py')
else:
    print("Unknown system architecture")
