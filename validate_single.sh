#!/usr/bin/env bash

TEMPLATE=$1
echo $TEMPLATE

cd upsun_config_validator

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

# Run the validation
clear

printf "\n\n*******************************************************************************************************\n\n"
printf "Validating example: $TEMPLATE\n\n"

printf "\n\nJECK.AI VALIDATION\n\n"
DIRECTORY="$(pwd)"
parentdir="$(dirname "$DIRECTORY")"
UPDATED_DIR="$parentdir/templates"

python validate_single.py "$UPDATED_DIR/$TEMPLATE/files"

printf "\n\nBUILT-IN CLI VALIDATION\n\n"
cd "$UPDATED_DIR/$TEMPLATE/files"
upsun app:config-validate
