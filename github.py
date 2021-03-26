#! /usr/bin/env python3

import subprocess as sp

menu_options = {
     "i": "initialize repo",
     "l": "log oneline",
     "fl": "full log summary",
     "c": "commit",
     "p": "push",
     "cp": "comit and push",
     #"b": "branch",
     "o": "open file",
     #"m": "merge",
     "q": "quit",
     "ls": "list files"
}

#######################################################
#METHODS

def menu():
    for idx, option in enumerate(menu_options):
        if len(option) > 2:
            print(f' {option} - {menu_options[option]}')
        elif len(option) == 2:
            print(f' {option}  - {menu_options[option]}')
        else: 
            print(f' {option}   - {menu_options[option]}')

    print()

def full_log():
    sp.run('git log --oneline', shell=True)
    print()
    print('LOG COMPLETE')
    print()
    menu()

def gitInit():
    sp.run('git init',shell=True)

def last_log():
    sp.run('git log --oneline -n 1', shell=True)

def add_all_files(): 
    sp.run('git add .', shell=True)

def commit(): 
    gitDifference()
    message = input("Enter a commit message: ")
    formatted_command = f'git commit -m "{message}"'
    add_all_files()
    sp.run(formatted_command, shell=True)

def push():
    sp.run('git push', shell=True)
    print()
    print('PUSH COMPLETED')
    print()
    exit()

def commit_and_push():
    commit()
    push()

def branch():
    pass

def initializeRepo():
    sp.run('git init', shell=True)

def openFile():
    pass

def gitStatus(): 
    sp.run('git status -s', shell=True, text=True)
    print()

def gitDifference():
    sp.run('git diff', shell=True)

def listFiles():
    print()
    sp.run('ls', shell=True)
    print()

#######################################################
#MAIN

print()
gitStatus()
print('LAST LOG:')
last_log()
print()
menu()

RUNNING = True

while(RUNNING):
    user_input = input('Please select an option: ')

    if user_input == 'q':
        print()
        print('Thanks!')
        exit()
      
    if user_input == 'c':
        print()
        commit()

    if user_input == 'l':
        last_log()

    if user_input == 'cp':
        commit_and_push()

    if user_input == 'fl':
        full_log()

    if user_input[0] == 'o':
        #will be adding autofill for easier access to files in the dir
        rest = user_input[1::]
        sp.run(f'vi {rest}', shell=True)

    if user_input == 'ls':
        listFiles()
