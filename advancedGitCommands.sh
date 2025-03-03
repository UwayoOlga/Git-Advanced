
touch test{1..4}.md
git add test1.md && git commit -m "chore: Create initial file"
git add test2.md && git commit -m "chore: Create another file"
git add test3.md && git commit -m "chore: Create third and fourth files"
git status
git log
git add test4.md
git commit --amend --no-edit
git status
git rebase -i HEAD~2
git rebase -i HEAD~2
chore: Create second file
git rebase -i HEAD~2
git log
git rebase -i HEAD~2
git rebase --edit-todo
git status
git rebase --abort
git rebase -i HEAD~2
git rebase --edit-todo
git rebase --continu
git status
git rebase --abort
git log --oneline --graph --decorate -n 5
git rebase -i HEAD~2
git rebase --abort
git log --oneline --graph --decorate -n 5
git rebase -i HEAD~2
git rebase --abort
gymimpundu@Impundus-iMac Git-Advanced % git rebase -i --root

[detached HEAD 3ae025d] chore: Create initial file
 Date: Tue Feb 25 15:01:23 2025 +0200
 2 files changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 test1.md
 create mode 100644 test2.md
Successfully rebased and updated refs/heads/main.
gymimpundu@Impundus-iMac Git-Advanced % git rebase --continue

fatal: No rebase in progress?
gymimpundu@Impundus-iMac Git-Advanced % git reset HEAD~1

gymimpundu@Impundus-iMac Git-Advanced % git status

On branch main
Your branch is ahead of 'origin/main' by 1 commit.
  (use "git push" to publish your local commits)

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        test3.md
        test4.md

nothing added to commit but untracked files present (use "git add" to track)
gymimpundu@Impundus-iMac Git-Advanced % git add test3.md      
gymimpundu@Impundus-iMac Git-Advanced % git commit -m "Create Third File"
[main e155600] Create Third File
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 test3.md
gymimpundu@Impundus-iMac Git-Advanced % git add test4.md
gymimpundu@Impundus-iMac Git-Advanced % git commit -m "Create Fourth File"
[main 2ddb0a3] Create Fourth File
 1 file changed, 0 insertions(+), 0 deletions(-)
 create mode 100644 test4.md
gymimpundu@Impundus-iMac Git-Advanced % git log --oneline --graph --decorate -n 5

* 2ddb0a3 (HEAD -> main) Create Fourth File
* e155600 Create Third File
* 3ae025d chore: Create initial file
* 8bd2969 (origin/main, origin/HEAD) Initial commit
gymimpundu@Impundus-iMac Git-Advanced % history > git advancedCommands.sh
fc: event not found: advancedCommands.sh