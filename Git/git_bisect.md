
# Git Bisect

## Introduction
Git bisect helps identify the commit that introduced a bug using binary search.

Instead of checking every commit manually, Git repeatedly selects a commit between a known good and bad commit.

## Basic Workflow

Start bisect:

```bash
git bisect start
