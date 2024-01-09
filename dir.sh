#!/bin/bash

# Simple emulated operating system shell script

while true; do
    # Display a prompt
    printf "MyOS> "
    
    # Read user input
    read -r command
    
    case $command in
        "help")
            echo "Available commands: help, date, ls, quit"
            ;;
        "date")
            echo "Current date: $(date)"
            ;;
        "ls")
            echo "Listing files in current directory:"
            ls
            ;;
        "quit")
            echo "Exiting MyOS. Goodbye!"
            exit 0
            ;;
        *)
            echo "Command not recognized. Type 'help' for available commands."
            ;;
    esac
done
