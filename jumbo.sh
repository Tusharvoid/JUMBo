#!/bin/bash

# Function to install requirements and run Python script
install_and_run_python_script() {
    echo "Installing requirements..."
    pip install -r requirements.txt

    # Check if installation was successful
    if [ $? -eq 0 ]; then
        echo "Requirements installed successfully, running Python script..."
        python3 bomber.py
    else
        echo "Failed to install requirements."
    fi
}

# Try to run Python script
echo "Running Python script..."
python3 bomber.py

# If script fails, install requirements and run again
if [ $? -ne 0 ]; then
    install_and_run_python_script
fi