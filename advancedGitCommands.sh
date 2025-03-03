
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

 *  History restored 

gymimpundu@Impundus-iMac Git-Advanced % echo "This is an unwanted file" > unwanted.txt
gymimpundu@Impundus-iMac Git-Advanced % git add unwanted.txt
gymimpundu@Impundus-iMac Git-Advanced % git commit -m "Unwanted commit"
[main d938527] Unwanted commit
 1 file changed, 1 insertion(+)
 create mode 100644 unwanted.txt
gymimpundu@Impundus-iMac Git-Advanced % git rebase -i HEAD~1


Successfully rebased and updated refs/heads/main.
gymimpundu@Impundus-iMac Git-Advanced % git reset --hard HEAD~1
HEAD is now at 2ddb0a3 Create Fourth File
gymimpundu@Impundus-iMac Git-Advanced % git rebase -i HEAD~1           


Successfully rebased and updated refs/heads/main.
gymimpundu@Impundus-iMac Git-Advanced % git rebase -i HEAD~2


Successfully rebased and updated refs/heads/main.
gymimpundu@Impundus-iMac Git-Advanced % git add unwanted.txt                         
gymimpundu@Impundus-iMac Git-Advanced % git commit -m "Unwanted commit"               
[main 8522cf2] Unwanted commit
 1 file changed, 1 insertion(+)
 create mode 100644 unwanted.txt
gymimpundu@Impundus-iMac Git-Advanced % git status
On branch main
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        advancedGitCommands.sh
        git

nothing added to commit but untracked files present (use "git add" to track)
gymimpundu@Impundus-iMac Git-Advanced % git log --oneline --graph --decorate -n 5     

* 8522cf2 (HEAD -> main) Unwanted commit
* 2ddb0a3 Create Fourth File
* e155600 Create Third File
* 3ae025d chore: Create initial file
* 8bd2969 (origin/main, origin/HEAD) Initial commit
gymimpundu@Impundus-iMac Git-Advanced % git reset --hard HEAD~1
HEAD is now at 2ddb0a3 Create Fourth File
gymimpundu@Impundus-iMac Git-Advanced % 
 *  History restored 

gymimpundu@Impundus-iMac Git-Advanced % git log
commit 2ddb0a349364dfe8f648a5a183c00f1361cc5c2d (HEAD -> main)
Author: UwayoOlga <uwayoolga@gmail.com>
Date:   Tue Feb 25 15:50:06 2025 +0200

    Create Fourth File

commit e155600631735ee803dec684d9cb9644944a9d83
Author: UwayoOlga <uwayoolga@gmail.com>
Date:   Tue Feb 25 15:49:21 2025 +0200

    Create Third File

commit 3ae025d6f81539ad531f07fb015d711e0aa9d693
Author: UwayoOlga <uwayoolga@gmail.com>
Date:   Tue Feb 25 15:01:23 2025 +0200

    chore: Create initial file
    
    chore: Create second file

commit 8bd2969ae9cc363a951614005858947113bef2f5 (origin/main, origin/HEAD)
Author: UwayoOlga <uwayoolga@gmail.com>
Date:   Tue Feb 25 14:57:27 2025 +0200

    Initial commit
gymimpundu@Impundus-iMac Git-Advanced % git rebase -i HEAD~3

Successfully rebased and updated refs/heads/main.
gymimpundu@Impundus-iMac Git-Advanced % git rebase abort
fatal: invalid upstream 'abort'
gymimpundu@Impundus-iMac Git-Advanced % git log --oneline --graph --decorate --all

* 2ddb0a3 (HEAD -> main) Create Fourth File
* e155600 Create Third File
* 3ae025d chore: Create initial file
* 8bd2969 (origin/main, origin/HEAD) Initial commit
gymimpundu@Impundus-iMac Git-Advanced % git rebase -i HEAD~3                      

Successfully rebased and updated refs/heads/main.
gymimpundu@Impundus-iMac Git-Advanced % git rebase --abort
fatal: No rebase in progress?
gymimpundu@Impundus-iMac Git-Advanced % git reflog

2ddb0a3 (HEAD -> main) HEAD@{0}: rebase (finish): returning to refs/heads/main
2ddb0a3 (HEAD -> main) HEAD@{1}: rebase (start): checkout HEAD~3
2ddb0a3 (HEAD -> main) HEAD@{2}: rebase (finish): returning to refs/heads/main
2ddb0a3 (HEAD -> main) HEAD@{3}: rebase (start): checkout HEAD~3
2ddb0a3 (HEAD -> main) HEAD@{4}: reset: moving to HEAD~1
8522cf2 HEAD@{5}: commit: Unwanted commit
2ddb0a3 (HEAD -> main) HEAD@{6}: rebase (finish): returning to refs/heads/main
2ddb0a3 (HEAD -> main) HEAD@{7}: rebase (start): checkout HEAD~2
2ddb0a3 (HEAD -> main) HEAD@{8}: rebase (finish): returning to refs/heads/main
2ddb0a3 (HEAD -> main) HEAD@{9}: rebase (start): checkout HEAD~1
2ddb0a3 (HEAD -> main) HEAD@{10}: reset: moving to HEAD~1
d938527 HEAD@{11}: rebase (finish): returning to refs/heads/main
d938527 HEAD@{12}: rebase (start): checkout HEAD~1
d938527 HEAD@{13}: commit: Unwanted commit
2ddb0a3 (HEAD -> main) HEAD@{14}: commit: Create Fourth File
e155600 HEAD@{15}: commit: Create Third File
3ae025d HEAD@{16}: reset: moving to HEAD~1
06dccb9 HEAD@{17}: rebase (finish): returning to refs/heads/main
06dccb9 HEAD@{18}: rebase (pick): chore: Create third and fourth files
3ae025d HEAD@{19}: rebase (squash): chore: Create initial file
3006379 HEAD@{20}: rebase: fast-forward
8bd2969 (origin/main, origin/HEAD) HEAD@{21}: rebase: fast-forward
446e8d7 HEAD@{22}: rebase (start): checkout 446e8d719ad3f276d682f807bd4ae741172d1c0a
8478903 HEAD@{23}: rebase (finish): returning to refs/heads/main
8478903 HEAD@{24}: rebase (start): checkout HEAD~2
8478903 HEAD@{25}: rebase (abort): returning to refs/heads/main
3006379 HEAD@{26}: rebase (start): checkout HEAD~2
8478903 HEAD@{27}: rebase (abort): returning to refs/heads/main
3006379 HEAD@{28}: rebase (start): checkout HEAD~2
8478903 HEAD@{29}: rebase (abort): returning to refs/heads/main
3006379 HEAD@{30}: rebase (start): checkout HEAD~2
8478903 HEAD@{31}: rebase (finish): returning to refs/heads/main
8478903 HEAD@{32}: rebase (pick): chore: Create third and fourth files
3e58a2b HEAD@{33}: rebase (reword): chore: Create second file
76bb998 HEAD@{34}: rebase: fast-forward
3006379 HEAD@{35}: rebase (start): checkout HEAD~2
003a642 HEAD@{36}: rebase (finish): returning to refs/heads/main
003a642 HEAD@{37}: rebase (pick): chore: Create third and fourth files
gymimpundu@Impundus-iMac Git-Advanced % ls -l test2.md

-rw-r--r--@ 1 gymimpundu  staff  0 Feb 25 15:38 test2.md
gymimpundu@Impundus-iMac Git-Advanced % git add test2.md
gymimpundu@Impundus-iMac Git-Advanced % git commit -m "create second file" 
On branch main
Your branch is ahead of 'origin/main' by 3 commits.
  (use "git push" to publish your local commits)

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        advancedGitCommands.sh
        git

nothing added to commit but untracked files present (use "git add" to track)
gymimpundu@Impundus-iMac Git-Advanced % git log 
commit 2ddb0a349364dfe8f648a5a183c00f1361cc5c2d (HEAD -> main)
Author: UwayoOlga <uwayoolga@gmail.com>
Date:   Tue Feb 25 15:50:06 2025 +0200

    Create Fourth File

commit e155600631735ee803dec684d9cb9644944a9d83
Author: UwayoOlga <uwayoolga@gmail.com>
Date:   Tue Feb 25 15:49:21 2025 +0200

    Create Third File

commit 3ae025d6f81539ad531f07fb015d711e0aa9d693
Author: UwayoOlga <uwayoolga@gmail.com>
Date:   Tue Feb 25 15:01:23 2025 +0200

    chore: Create initial file
    
    chore: Create second file

commit 8bd2969ae9cc363a951614005858947113bef2f5 (origin/main, origin/HEAD)
Author: UwayoOlga <uwayoolga@gmail.com>
Date:   Tue Feb 25 14:57:27 2025 +0200

    Initial commit
gymimpundu@Impundus-iMac Git-Advanced % git log --oneline --graph --decorate --all

* 2ddb0a3 (HEAD -> main) Create Fourth File
* e155600 Create Third File
* 3ae025d chore: Create initial file
* 8bd2969 (origin/main, origin/HEAD) Initial commit
gymimpundu@Impundus-iMac Git-Advanced % git status
On branch main
Your branch is ahead of 'origin/main' by 3 commits.
  (use "git push" to publish your local commits)

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        advancedGitCommands.sh
        git

nothing added to commit but untracked files present (use "git add" to track)
gymimpundu@Impundus-iMac Git-Advanced % git add advancedGitCommands.sh 
gymimpundu@Impundus-iMac Git-Advanced % git commit -m'answers tracking file'
[main 9f68004] answers tracking file
 1 file changed, 73 insertions(+)
 create mode 100644 advancedGitCommands.sh
gymimpundu@Impundus-iMac Git-Advanced % git log --oneline --graph --decorate --all

* 9f68004 (HEAD -> main) answers tracking file
* 2ddb0a3 Create Fourth File
* e155600 Create Third File
* 3ae025d chore: Create initial file
* 8bd2969 (origin/main, origin/HEAD) Initial commit
gymimpundu@Impundus-iMac Git-Advanced % git add test2.md                          
gymimpundu@Impundus-iMac Git-Advanced % git commit -m "create second file"        
On branch main
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        git

nothing added to commit but untracked files present (use "git add" to track)
gymimpundu@Impundus-iMac Git-Advanced % git status
On branch main
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

Untracked files:
  (use "git add <file>..." to include in what will be committed)
        git

nothing added to commit but untracked files present (use "git add" to track)
gymimpundu@Impundus-iMac Git-Advanced % git status                        
On branch main
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
gymimpundu@Impundus-iMac Git-Advanced % git add test2.md                          
gymimpundu@Impundus-iMac Git-Advanced % git commit -m "create second file"
On branch main
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
gymimpundu@Impundus-iMac Git-Advanced % git status
On branch main
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
gymimpundu@Impundus-iMac Git-Advanced % git log --oneline --graph --decorate --all

* 9f68004 (HEAD -> main) answers tracking file
* 2ddb0a3 Create Fourth File
* e155600 Create Third File
* 3ae025d chore: Create initial file
* 8bd2969 (origin/main, origin/HEAD) Initial commit
gymimpundu@Impundus-iMac Git-Advanced % git status

On branch main
Your branch is ahead of 'origin/main' by 4 commits.
  (use "git push" to publish your local commits)

nothing to commit, working tree clean
gymimpundu@Impundus-iMac Git-Advanced % git config --global advice.statusHints false

gymimpundu@Impundus-iMac Git-Advanced % git add test2.md                            
gymimpundu@Impundus-iMac Git-Advanced % git commit -m "create second file"          
On branch main
Your branch is ahead of 'origin/main' by 4 commits.

nothing to commit, working tree clean
gymimpundu@Impundus-iMac Git-Advanced % git config --global advice.statusHints true 

gymimpundu@Impundus-iMac Git-Advanced % git add test2.md

gymimpundu@Impundus-iMac Git-Advanced % git commit --allow-empty -m "create second file"

[main 2cb522d] create second file
gymimpundu@Impundus-iMac Git-Advanced % git log --oneline --graph --decorate --all      

* 2cb522d (HEAD -> main) create second file
* 9f68004 answers tracking file
* 2ddb0a3 Create Fourth File
* e155600 Create Third File
* 3ae025d chore: Create initial file
* 8bd2969 (origin/main, origin/HEAD) Initial commit
gymimpundu@Impundus-iMac Git-Advanced % git checkout -b ft/branch
Switched to a new branch 'ft/branch'
gymimpundu@Impundus-iMac Git-Advanced % touch test5.md
gymimpundu@Impundus-iMac Git-Advanced % git add test5.md
gymimpundu@Impundus-iMac Git-Advanced % git commit -m "Implemented test 5"
[ft/branch 4db9e73] Implemented test 5
 1 file changed, 1 insertion(+)
 create mode 100644 test5.md
gymimpundu@Impundus-iMac Git-Advanced % git checkout main
Switched to branch 'main'
Your branch is ahead of 'origin/main' by 5 commits.
  (use "git push" to publish your local commits)
gymimpundu@Impundus-iMac Git-Advanced % git log ft/branch --oneline
4db9e73 (ft/branch) Implemented test 5
2cb522d (HEAD -> main) create second file
9f68004 answers tracking file
2ddb0a3 Create Fourth File
e155600 Create Third File
3ae025d chore: Create initial file
8bd2969 (origin/main, origin/HEAD) Initial commit
gymimpundu@Impundus-iMac Git-Advanced % git cherry-pick 4db9e73
[main ad6fa4a] Implemented test 5
 Date: Mon Mar 3 09:49:16 2025 +0200
 1 file changed, 1 insertion(+)
 create mode 100644 test5.md
gymimpundu@Impundus-iMac Git-Advanced % git diff
gymimpundu@Impundus-iMac Git-Advanced % git log --oneline
ad6fa4a (HEAD -> main) Implemented test 5
2cb522d create second file
9f68004 answers tracking file
2ddb0a3 Create Fourth File
e155600 Create Third File
3ae025d chore: Create initial file
8bd2969 (origin/main, origin/HEAD) Initial commit
gymimpundu@Impundus-iMac Git-Advanced % git log --graph
* commit ad6fa4ad5151c3178cd826b3fa9b2f2a1b41f03a (HEAD -> main)
| Author: UwayoOlga <uwayoolga@gmail.com>
| Date:   Mon Mar 3 09:49:16 2025 +0200
| 
|     Implemented test 5
| 
* commit 2cb522d5dea0d24b5a6e328b0f60e7cb5ff0c833
| Author: UwayoOlga <uwayoolga@gmail.com>
| Date:   Mon Mar 3 09:44:08 2025 +0200
| 
|     create second file
| 
* commit 9f6800411995fffb4f6b556eeb678caa3fa44d8d
| Author: UwayoOlga <uwayoolga@gmail.com>
| Date:   Mon Mar 3 09:35:37 2025 +0200
| 
|     answers tracking file
| 
* commit 2ddb0a349364dfe8f648a5a183c00f1361cc5c2d
| Author: UwayoOlga <uwayoolga@gmail.com>
| Date:   Tue Feb 25 15:50:06 2025 +0200
| 
|     Create Fourth File
| 
* commit e155600631735ee803dec684d9cb9644944a9d83
| Author: UwayoOlga <uwayoolga@gmail.com>
| Date:   Tue Feb 25 15:49:21 2025 +0200
| 
|     Create Third File
| 
* commit 3ae025d6f81539ad531f07fb015d711e0aa9d693
| Author: UwayoOlga <uwayoolga@gmail.com>
| Date:   Tue Feb 25 15:01:23 2025 +0200
| 
|     chore: Create initial file
|     
|     chore: Create second file
| 
gymimpundu@Impundus-iMac Git-Advanced % git reflog
ad6fa4a (HEAD -> main) HEAD@{0}: cherry-pick: Implemented test 5
2cb522d HEAD@{1}: checkout: moving from ft/branch to main
4db9e73 (ft/branch) HEAD@{2}: commit: Implemented test 5
2cb522d HEAD@{3}: checkout: moving from main to ft/branch
2cb522d HEAD@{4}: commit: create second file
9f68004 HEAD@{5}: commit: answers tracking file
2ddb0a3 HEAD@{6}: rebase (finish): returning to refs/heads/main
2ddb0a3 HEAD@{7}: rebase (start): checkout HEAD~3
2ddb0a3 HEAD@{8}: rebase (finish): returning to refs/heads/main
2ddb0a3 HEAD@{9}: rebase (start): checkout HEAD~3
2ddb0a3 HEAD@{10}: reset: moving to HEAD~1
8522cf2 HEAD@{11}: commit: Unwanted commit
2ddb0a3 HEAD@{12}: rebase (finish): returning to refs/heads/main
2ddb0a3 HEAD@{13}: rebase (start): checkout HEAD~2
2ddb0a3 HEAD@{14}: rebase (finish): returning to refs/heads/main
2ddb0a3 HEAD@{15}: rebase (start): checkout HEAD~1
2ddb0a3 HEAD@{16}: reset: moving to HEAD~1
d938527 HEAD@{17}: rebase (finish): returning to refs/heads/main
d938527 HEAD@{18}: rebase (start): checkout HEAD~1
d938527 HEAD@{19}: commit: Unwanted commit
2ddb0a3 HEAD@{20}: commit: Create Fourth File
e155600 HEAD@{21}: commit: Create Third File
3ae025d HEAD@{22}: reset: moving to HEAD~1
06dccb9 HEAD@{23}: rebase (finish): returning to refs/heads/main
06dccb9 HEAD@{24}: rebase (pick): chore: Create third and fourth files
3ae025d HEAD@{25}: rebase (squash): chore: Create initial file
3006379 HEAD@{26}: rebase: fast-forward
8bd2969 (origin/main, origin/HEAD) HEAD@{27}: rebase: fast-forward
446e8d7 HEAD@{28}: rebase (start): checkout 446e8d719ad3f276d682f807bd4ae741172d1c0a
8478903 HEAD@{29}: rebase (finish): returning to refs/heads/main
8478903 HEAD@{30}: rebase (start): checkout HEAD~2
8478903 HEAD@{31}: rebase (abort): returning to refs/heads/main
3006379 HEAD@{32}: rebase (start): checkout HEAD~2
8478903 HEAD@{33}: rebase (abort): returning to refs/heads/main
3006379 HEAD@{34}: rebase (start): checkout HEAD~2
8478903 HEAD@{35}: rebase (abort): returning to refs/heads/main
3006379 HEAD@{36}: rebase (start): checkout HEAD~2
8478903 HEAD@{37}: rebase (finish): returning to refs/heads/main
gymimpundu@Impundus-iMac Git-Advanced % git push origin main
Enumerating objects: 15, done.
Counting objects: 100% (15/15), done.
Delta compression using up to 8 threads
Compressing objects: 100% (12/12), done.
Writing objects: 100% (14/14), 1.93 KiB | 1.93 MiB/s, done.
Total 14 (delta 5), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (5/5), done.
To https://github.com/UwayoOlga/Git-Advanced.git
   8bd2969..ad6fa4a  main -> main
gymimpundu@Impundus-iMac Git-Advanced % 