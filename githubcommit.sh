#!/bin/bash

# A robust script to sync, add, commit, and push changes to the 'Learning' repository.

# --- Colors for better output ---
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m' # No Color

echo -e "${GREEN}Starting Git commit process for the 'Learning' repository...${NC}"

# --- Safety Check 1: Ensure it's a Git repository ---
if ! git rev-parse --is-inside-work-tree > /dev/null 2>&1; then
    echo -e "\n${RED}Error: This is not a Git repository.${NC}"
    exit 1
fi

# --- Safety Check 2: Verify the remote repository URL ---
REMOTE_URL=$(git config --get remote.origin.url)
if [[ "$REMOTE_URL" != *"HackerO112/Learning"* ]]; then
    echo -e "\n${RED}Error: This script is for the 'HackerO112/Learning' repository.${NC}"
    echo -e "${YELLOW}You are currently in a repository pointing to: $REMOTE_URL${NC}"
    exit 1
fi

# Step 1: Sync with remote repository to prevent "fetch first" errors
echo -e "\n${GREEN}Step 1: Syncing with GitHub...${NC}"
git pull

# --- Safety Check 3: Check for local changes after pulling ---
if git diff-index --quiet HEAD --; then
    echo -e "\n${YELLOW}No local changes to commit. Your directory is up to date.${NC}"
    exit 0
fi

# Step 2: Add all changes to the staging area
echo -e "\n${GREEN}Step 2: Staging all new and modified files...${NC}"
git add .
echo "Files staged successfully."

# Step 3: Ask for a descriptive commit message
echo -e "\n${GREEN}Step 3: Please provide a clear commit message.${NC}"
read -p "Enter your commit message: " commit_message

# --- Safety Check 4: Ensure commit message is not empty ---
if [ -z "$commit_message" ]; then
    echo -e "\n${RED}Error: A commit message is required. Aborting the process.${NC}"
    git reset # Unstage the files
    exit 1
fi

# Step 4: Commit the changes
echo -e "\n${GREEN}Step 4: Committing with message: \"$commit_message\"...${NC}"
git commit -m "$commit_message"

# Step 5: Push the changes to GitHub
echo -e "\n${GREEN}Step 5: Pushing changes to the remote 'origin'...${NC}"
git push

echo -e "\n${GREEN}--- Process Complete ---${NC}"
echo "Your changes have been successfully pushed to the 'Learning' repository."

