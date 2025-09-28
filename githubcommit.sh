#!/bin/bash

# A robust script to add, commit, and push changes to an existing Git repository.
# Specifically for the HackerO112/Learning repository.

# --- Colors for better output ---
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}Starting Git commit process for the 'Learning' repository...${NC}"

# --- Safety Check 1: Ensure it's a Git repository ---
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo -e "\n${RED}Error: This is not a Git repository.${NC}"
    echo -e "${YELLOW}Please run this script from the root of your local 'Learning' repository clone.${NC}"
    exit 1
fi

# --- Safety Check 2: Check for uncommitted changes ---
if git diff-index --quiet HEAD --; then
    echo -e "\n${YELLOW}No changes to commit. Your working directory is clean.${NC}"
    exit 0
fi

# Step 1: Add all changes to the staging area
echo -e "\n${GREEN}Step 1: Staging all new and modified files...${NC}"
git add .
echo "Files staged successfully."

# Step 2: Ask for a descriptive commit message
echo -e "\n${GREEN}Step 2: Please provide a clear commit message.${NC}"
read -p "Enter your commit message: " commit_message

# --- Safety Check 3: Ensure commit message is not empty ---
if [ -z "$commit_message" ]; then
    echo -e "\n${RED}Error: A commit message is required. Aborting the process.${NC}"
    # Unstage the files to leave the repo in its original state
    git reset
    exit 1
fi

# Step 3: Commit the changes
echo -e "\n${GREEN}Step 3: Committing with message: \"$commit_message\"...${NC}"
git commit -m "$commit_message"

# Step 4: Push the changes to GitHub
echo -e "\n${GREEN}Step 4: Pushing changes to the remote 'origin'...${NC}"
git push

echo -e "\n${GREEN}--- Process Complete ---${NC}"
echo "Your changes have been successfully pushed to the 'Learning' repository."
```

### **How to Use Your New Script**

Follow these three simple steps.

**1. Save the File:**
Save the code above into a file named `commit.sh`. Place this file inside the root of your local `Learning` repository folder on your computer.

**2. Make it Executable:**
This is a one-time setup step. Open your terminal, navigate into your `Learning` repository folder, and run this command:
```bash
chmod +x commit.sh
```

**3. Run the Script:**
Now, whenever you have added or changed files/folders and are ready to save them to GitHub, just run this command from inside the `Learning` folder:
```bash
./commit.sh
