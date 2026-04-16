#!/bin/bash

#through input
#read -p "Enter folder name: " folder
#through variable
#folder="batch-5"

    #through positon argumnet
    folder=$1

    if [ -z $folder ]; then
        echo "❌ Error: No folder name provided."
        echo "Usage: create_folder_if_not_exists <folder_name>"
        exit 1
    fi
    if [ -d $folder ]; then
        echo "$folder is already exist"
    else
        mkdir "$folder"
        echo "Folder $folder created successfully"
    fi