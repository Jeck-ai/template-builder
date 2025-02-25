#!/usr/bin/env bash

cd upsun_config_validator

python3 -m venv venv
source venv/bin/activate

pip install --upgrade pip
pip install -r requirements.txt

# Run the validation
clear

pytest

