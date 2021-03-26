#! /usr/bin/env python3

import subprocess as sp

menu_options = {
     "i": "initialize repo",
     "l": "log oneline",
     "fl": "full log summary",
     "c": "commit",
     "p": "push",
     "cp": "comit and push",
     "b": "branch",
     "o": "open file",
     "m": "merge",
     "q": "quit"
}

p1 = sp.run('ls -la', shell=True, capture_output=True)
sp.run('clear')
print(p1.stdout.decode())

def menu():
    for idx, option in enumerate(menu_options):
        print(f'{option} - {menu_options[option]}')

def commit(): 
    pass

def full_log():
    pass

def last_log():
    pass

def push():
    pass

def branch():
    pass

def initializeRepo():
    pass

def openFile():
    pass



