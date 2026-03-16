# Git Commands Guide

## 1. Configure Git

Set your username and email (first time setup)

```
git config --global user.name "Your Name"
git config --global user.email "your@email.com"
```

Check configuration:

```
git config --list
```

---

# 2. Initialize Repository

Create a new Git repository

```
git init
```

Clone an existing repository

```
git clone <repository_url>
```

Example:

```
git clone https://github.com/user/repo.git
```

---

# 3. Check Repository Status

See current changes in repository

```
git status
```

---

# 4. Add Files

Add a specific file

```
git add filename
```

Add all files

```
git add .
```

---

# 5. Commit Changes

Save staged changes with a message

```
git commit -m "your commit message"
```

Example:

```
git commit -m "Added git commands notes"
```

---

# 6. Push Code to GitHub

Push code to remote repository

```
git push origin main
```

For first push:

```
git push -u origin main
```

---

# 7. Pull Latest Changes

Get latest updates from remote repository

```
git pull origin main
```

---

# 8. Branching

Create new branch

```
git branch branch_name
```

Switch branch

```
git checkout branch_name
```

Create and switch branch

```
git checkout -b branch_name
```

View branches

```
git branch
```

---

# 9. Merge Branch

Merge another branch into current branch

```
git merge branch_name
```

---

# 10. View Commit History

```
git log
```

Short version

```
git log --oneline
```

---

# 11. Undo Changes

Discard changes in file

```
git checkout -- filename
```

Unstage file

```
git reset filename
```

---

# 12. Remove File

```
git rm filename
```

---

# 13. Connect Local Repo to GitHub

```
git remote add origin <repository_url>
```

Check remote repositories

```
git remote -v
```

---

# 14. Stashing Changes

Temporarily save changes

```
git stash
```

Apply stash

```
git stash apply
```

List stashes

```
git stash list
```

---

# 15. Delete Branch

Delete local branch

```
git branch -d branch_n_
```

