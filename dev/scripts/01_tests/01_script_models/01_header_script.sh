#!/bin/bash



# ===============================================
# 1. Verifying the input call
# ===============================================

# Initialize variables for the options
DIR_PATH=""
BED_FILE=""
JOB_NAME=""

# Get the absolute path of the directory where the script is located.
SCRIPT_DIR=$(dirname "$(readlink -f "$0")")

# Check all arguments (flags and their values)
while [[ "$#" -gt 0 ]]; do
    case "$1" in
        # Option 1: Directory Path
        dir)
            DIR_PATH="$2"
            shift ; shift # Consume the flag name ('dir') and value (path)
            ;;
        # Option 2: BED File
        bed)
            BED_FILE="$2"
            shift ; shift # Consume the flag namev and value (file name)
            ;;
        # Option 3: String/Name
        name)
            JOB_NAME="$2"
            shift ; shift # Consume the flag name ('name') and value (the string)
            ;;
        # Handle unknown flags or syntax errors
        *)
            echo "Error: Unknown option or invalid syntax: $1"
            echo "Usage: $0 dir <path> bed <file.bed> name <string>"
            exit 1
            ;;
    esac
done

# Check if all required options were provided
if [ -z "$DIR_PATH" ] || [ -z "$BED_FILE" ] || [ -z "$JOB_NAME" ]; then
    echo "Error: Missing required options."
    echo "Usage: $0 dir <path> bed <file.bed> name <string>"
    exit 1
fi

# Validate 'dir' option
if [ ! -d "$DIR_PATH" ]; then
    echo "Validation Error: The directory path ('$DIR_PATH') is not an existing directory."
    exit 1
fi

# Validate 'bed' option (must end in .bed AND exist)
if [[ "$BED_FILE" != *.bed ]]; then
    echo "Validation Error: The 'bed' file ('$BED_FILE') must have the **.bed** extension."
    exit 1
elif [ ! -f "$BED_FILE" ]; then
    echo "Validation Error: The **.bed** file ('$BED_FILE') was not found."
    exit 1
fi



# ===============================================
# 2. Starting the analysis
# ===============================================

echo "Script directory: $SCRIPT_DIR"
echo "Input Directory (dir): $DIR_PATH"
echo "BED File (bed): $BED_FILE"
echo "Job Name (name): $JOB_NAME"

#end