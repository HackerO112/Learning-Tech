#!/bin/bash

# A simple script to add, commit, and push changes to an existing Git repository.

# --- Colors for better output ---
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}Starting the Git commit and push process...${NC}"

# Check for any changes
if git diff-index --quiet HEAD --; then
    echo -e "${YELLOW}No changes to commit. Working directory is clean.${NC}"
    exit 0
fi

# Step 1: Add all changes to the staging area
echo -e "\n${GREEN}Step 1: Staging all new and modified files...${NC}"
git add .
echo "Files staged."

# Step 2: Ask for a commit message
echo -e "\n${GREEN}Step 2: Please provide a commit message.${NC}"
read -p "Enter your commit message: " commit_message

# Check if the commit message is empty
if [ -z "$commit_message" ]; then
    echo -e "\n${RED}Error: Commit message cannot be empty. Aborting.${NC}"
    exit 1
fi

# Step 3: Commit the changes
echo -e "\n${GREEN}Step 3: Committing with message: \"$commit_message\"...${NC}"
git commit -m "$commit_message"

# Step 4: Push the changes to the remote repository
echo -e "\n${GREEN}Step 4: Pushing changes to the remote repository...${NC}"
git push

echo -e "\n${GREEN}--- Process Complete ---${NC}"
echo "Your changes have been successfully pushed."
