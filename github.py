#! /usr/bin/env python3

import subprocess as sp

menu_options = {
     "i":  "git init",
     "l":  "line log",
     "fl": "full log",
     "c":  "commit",
     "p":  "push",
     "cp": "comit and push",
     "o":  "open file",
     "ls": "list files",
     "s":  "git status",
     "b": "branch",
     #"m": "merge",
     "q": "quit"

}

#######################################################
# function definitions

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
    add_all_files()
    gitDifference()
    message = input("Enter a commit message: ")
    formatted_command = f'git commit -m "{message}"'
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
    sp.run('git branch', shell=True)

def initializeRepo():
    sp.run('git init', shell=True)
    print()
    print('INITIALIZED')
    print()

def openFile():
    pass

def gitStatus(): 
    sp.run('git status', shell=True, text=True)
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
print('STATUS:')
gitStatus()
print('LAST LOG:')
last_log()
print()
menu()

RUNNING = True

while(RUNNING):
    user_input = input('Please select an option: ')
    words_input_array = user_input.split()

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

    if user_input == 'ls':
        listFiles()

    if user_input == 'i':
        gitInit()

    if user_input == 's':
        gitStatus()

    if user_input == 'p': 
        push()
    
    if user_input == 'b':
        branch()
        
    if len(words_input_array) > 2:
        print("Please limit your input to two words")
        
    if len(words_input_array) > 1:
        
        menu_selection = words_input_array[0]
        command =        words_input_array[1]
        
        if menu_selection == 'o':
            sp.run(f'code {command}', shell=True)
            
        if menu_selection == 'nb':
            sp.run(f'git checkout -b {command}', shell=True)
        
        if menu_selection == 'mb':
            sp.run(f'git merge {command}', shell=True)
            
        if menu_selection == 'cb':
            sp.run(f'git checkout {command}', shell=True)
        
        if menu_selection == 'db':
            sp.run(f'git branch -d {command}', shell=True)