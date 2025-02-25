#!/usr/bin/env bash

cd upsun_config_validator

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

# Run the validation
clear
DIRECTORY="$(pwd)"
parentdir="$(dirname "$DIRECTORY")"
UPDATED_DIR="$parentdir/templates"

find "$UPDATED_DIR" -mindepth 1 -maxdepth 1 -type d | while read -r dir; do
    if [[ "$dir" == "$UPDATED_DIR/.archived" ]] || [[ "$dir" == "$UPDATED_DIR/sulu" ]]; then
        printf "\n*******************************************************************************************************\n\n"
        printf "* Skipping (for now) template: $dir\n"
    else
        printf "\n*******************************************************************************************************\n\n"
        printf "* Processing template: $dir\n\n"
    
        # In-house validation
        python test_individual.py "$dir/files"

        # Built-in CLI validation
        cd "$dir/files"
        upsun app:config-validate
        cd $DIRECTORY

    fi

done
