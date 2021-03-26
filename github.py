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

#p1 = sp.run('ls -la', shell=True, capture_output=True)
#sp.run('clear')
#print(p1.stdout.decode())

def menu():
    for idx, option in enumerate(menu_options):
        print(f' {option} - {menu_options[option]}')

def full_log():
    pass

def last_log():
    pass

def commit(): 
    message = input("Enter a commit message: ")
    formatted_command = f'git commit -m "{message}"'
    sp.run('git add .', shell=True)
    sp.run(formatted_command, shell=True)
    sp.run('git log --oneline -n 1', shell=True)

def push():
    pass

def branch():
    pass

def initializeRepo():
    pass

def openFile():
    pass

#main
sp.run('git log --oneline -n 1', shell=True)
menu()

RUNNING = True

while(RUNNING):
    user_input = input('Please select an option: ')
    if user_input is 'q':
        exit()
      
    if user_input is 'c':
        commit()
