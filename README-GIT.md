# Git Workflow Guide for Our Rails Project

Welcome to the Rails project. This guide will help you understand the essential Git commands for collaborating with the team effectively.

---

## 1. Checking the current branch and pulling the latest changes

Before you start working, you should:
1. Check the current branch:
git branch
- This shows which branch you’re currently on.
- The active branch will have an asterisk (*) next to it.

2. Pull the latest changes from the `main` branch to make sure you have the most recent code:
git pull origin main
- This ensures your local code is up to date with the latest changes from the remote repository.

---

## 2. Creating a new branch and switching between branches

To work on a new feature or fix, create your own branch:
git checkout -b <branch-name>

Example:
git checkout -b feature-authentication
- This creates and switches to a new branch.

Switching between branches:
If you want to switch to another branch:
git checkout <branch-name>

Example:
git checkout main
- This switches you to the `main` branch or any other specified branch.

---

## 3. Staging changes

After making edits or adding new code, you need to stage your changes:
git add .
- This stages all modified and new files.

To stage specific files only:
git add <file-name>

Example:
git add app/models/user.rb
- This stages only the `user.rb` file.

---

## 4. Committing and pushing changes

Committing your changes:
Once your changes are staged, commit them with a message describing what you did:
git commit -m "Your message"

Example:
git commit -m "Add login feature with authentication"
- This creates a snapshot of your changes with a message.

Pushing your changes:
Push your branch and its changes to the remote repository:
git push origin <branch-name>

Example:
git push origin feature-authentication
- This uploads your branch to the GitHub repo.

---

## 5. Merging your branch into main

Once your feature or fix is complete:
1. Go to GitHub and create a Pull Request (PR) from your branch.
2. The team will review and approve the changes.
3. After the PR is approved, merge it into the `main` branch.

If you want to merge locally:
1. Switch to the `main` branch:
git checkout main

2. Pull the latest changes:
git pull origin main

3. Merge your branch into `main`:
git merge <your-branch-name>

Example:
git merge feature-authentication

4. Push the merged changes:
git push origin main

---

## 6. Viewing commit history and status

Viewing commit history:
To see the previous commits:
git log
- This shows the history of commits, including the author, date, and message.

Checking your current status:
To see which files are staged, unstaged, or untracked:
git status
- This shows:
  - Staged files (ready to commit)
  - Unstaged files (modified but not yet staged)
  - Untracked files (new files that Git doesn't yet track)

---

## 7. Resolving merge conflicts (if necessary)

If you run into a merge conflict:
1. Git will show the conflicting files.
2. Open the conflicting files and manually resolve the conflicts:
   - Keep or remove the changes you want.
3. Stage the resolved files:
git add .

4. Commit the resolved changes:
git commit -m "Resolve merge conflict"

5. Push the resolved changes:
git push origin main

---

## Git Cheat Sheet
# Clone the repo
git clone <REPO_URL>

# Check current branch
git branch

# Create a new branch
git checkout -b <branch-name>

# Switch branches
git checkout <branch-name>

# Pull the latest changes
git pull origin main

# Stage changes
git add .

# Commit changes
git commit -m "Your message"

# Push changes
git push origin <branch-name>

# Merge into main
git checkout main
git pull origin main
git merge <branch-name>
git push origin main

# View commit history
git log

# Check status
git status

---

Tip: Always work on a new branch, push your changes, and create a pull request (PR) for review before merging into `main`.
