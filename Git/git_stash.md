# Git Stash

Temporarily save changes without committing.

## Commands
```bash
git stash
git stash list
git stash apply
git stash pop


---

## ➕ `git_reset_vs_revert.md`
```markdown
# Git Reset vs Revert

## git reset
- Removes commits (history rewrite)

## git revert
- Creates new commit to undo changes

## Safe for team?
- revert ✅
- reset ❌ (shared branches)

git push origin v1.0


---

## ➕ `git_conflict_resolution.md`
```markdown
# Merge Conflict Resolution

## Steps
1. Identify conflict
2. Edit file
3. Remove markers:
   <<<<<<< HEAD
   =======
   >>>>>>> branch

4. Commit changes

# Branching Strategy

## Common
- main → production
- dev → development
- feature/* → new features

## Flow
feature → dev → main
