
      # Part 1 

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




             # Part 2 

 # Feature Branch Creation

gymimpundu@Impundus-iMac Git-Advanced % git checkout -b ft/new-feature
Switched to a new branch 'ft/new-feature'
---------------------------------------------------------------------------------------------------------------
# Working on the Feature Branch:

gymimpundu@Impundus-iMac Git-Advanced % touch feature.txt
gymimpundu@Impundus-iMac Git-Advanced % git add feature.txt
gymimpundu@Impundus-iMac Git-Advanced % git commit -m 'Implemented core functionality for new feature'
[ft/new-feature 9648756] Implemented core functionality for new feature
 1 file changed, 1 insertion(+)
 create mode 100644 feature.txt
gymimpundu@Impundus-iMac Git-Advanced % git push origin ft/new-feature                                
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (3/3), 319 bytes | 319.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote: 
remote: Create a pull request for 'ft/new-feature' on GitHub by visiting:
remote:      https://github.com/UwayoOlga/Git-Advanced/pull/new/ft/new-feature
remote: 
To https://github.com/UwayoOlga/Git-Advanced.git
 * [new branch]      ft/new-feature -> ft/new-feature
gymimpundu@Impundus-iMac Git-Advanced % 
The default interactive shell is now zsh.
To update your account to use zsh, please run `chsh -s /bin/zsh`.
For more details, please visit https://support.apple.com/kb/HT208050.
Impundus-iMac:Git-Advanced gymimpundu$ git branch
  ft/branch
* ft/new-feature
  main
Impundus-iMac:Git-Advanced gymimpundu$ git checkout main
Switched to branch 'main'
Your branch is behind 'origin/main' by 4 commits, and can be fast-forwarded.
  (use "git pull" to update your local branch)
Impundus-iMac:Git-Advanced gymimpundu$ git pull origin main
From https://github.com/UwayoOlga/Git-Advanced
 * branch            main       -> FETCH_HEAD
Updating e0ebe0f..fc9f89f
Fast-forward
 feature.txt | 1 +
 1 file changed, 1 insertion(+)
 create mode 100644 feature.txt
Impundus-iMac:Git-Advanced gymimpundu$ touch readme.txt
Impundus-iMac:Git-Advanced gymimpundu$ git add readme.txt
Impundus-iMac:Git-Advanced gymimpundu$ git commit -m "Updated project readme"
[main c8f1544] Updated project readme
 1 file changed, 1 insertion(+)
 create mode 100644 readme.txt
Impundus-iMac:Git-Advanced gymimpundu$ git checkout ft/new-feature
error: Your local changes to the following files would be overwritten by checkout:
        feature.txt
Please commit your changes or stash them before you switch branches.
Aborting
Impundus-iMac:Git-Advanced gymimpundu$ git branch
  ft/branch
  ft/new-feature
* main
Impundus-iMac:Git-Advanced gymimpundu$ git stash
Saved working directory and index state WIP on main: c8f1544 Updated project readme
Impundus-iMac:Git-Advanced gymimpundu$ git checkout ft/new-feature
Switched to branch 'ft/new-feature'
Impundus-iMac:Git-Advanced gymimpundu$ git add feature.txt
Impundus-iMac:Git-Advanced gymimpundu$ git commit -m"Implemented core functionality for new feature"
On branch ft/new-feature
nothing to commit, working tree clean
Impundus-iMac:Git-Advanced gymimpundu$ git add feature.txt
Impundus-iMac:Git-Advanced gymimpundu$ git commit -m"Implemented core functionality for new feature"
[ft/new-feature 3012d49] Implemented core functionality for new feature
 1 file changed, 1 deletion(-)
Impundus-iMac:Git-Advanced gymimpundu$ gti push origin ft/new-feature
bash: gti: command not found
Impundus-iMac:Git-Advanced gymimpundu$ git push origin ft/new-feature
Enumerating objects: 8, done.
Counting objects: 100% (8/8), done.
Delta compression using up to 8 threads
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 1.09 KiB | 1.09 MiB/s, done.
Total 6 (delta 3), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (3/3), completed with 1 local object.
To https://github.com/UwayoOlga/Git-Advanced.git
   9648756..3012d49  ft/new-feature -> ft/new-feature
Impundus-iMac:Git-Advanced gymimpundu$ checkout main
bash: checkout: command not found
Impundus-iMac:Git-Advanced gymimpundu$ git checkout main
Switched to branch 'main'
Your branch and 'origin/main' have diverged,
and have 1 and 3 different commits each, respectively.
  (use "git pull" to merge the remote branch into yours)
---------------------------------------------------------------------------------------------------------------------
  # 4. Local vs. Remote Branches

Impundus-iMac:Git-Advanced gymimpundu$ git push origin main 
To https://github.com/UwayoOlga/Git-Advanced.git
 ! [rejected]        main -> main (non-fast-forward)
error: failed to push some refs to 'https://github.com/UwayoOlga/Git-Advanced.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
Impundus-iMac:Git-Advanced gymimpundu$ git pull origin main
From https://github.com/UwayoOlga/Git-Advanced
 * branch            main       -> FETCH_HEAD
hint: You have divergent branches and need to specify how to reconcile them.
hint: You can do so by running one of the following commands sometime before
hint: your next pull:
hint: 
hint:   git config pull.rebase false   
hint:   git config pull.rebase true    
hint:   git config pull.ff only       
hint: 
hint: You can replace "git config" with "git config --global" to set a default
hint: preference for all repositories. You can also pass --rebase, --no-rebase,
hint: or --ff-only on the command line to override the configured default per
hint: invocation.
fatal: Need to specify how to reconcile divergent branches.
Impundus-iMac:Git-Advanced gymimpundu$ git pull origin main --no-rebase
From https://github.com/UwayoOlga/Git-Advanced
 * branch            main       -> FETCH_HEAD
Merge made by the 'ort' strategy.
 feature.txt | 32 +++++++++++++++++++++++++++++++-
 1 file changed, 31 insertions(+), 1 deletion(-)
Impundus-iMac:Git-Advanced gymimpundu$ git push origin main
Enumerating objects: 7, done.
Counting objects: 100% (7/7), done.
Delta compression using up to 8 threads
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 620 bytes | 620.00 KiB/s, done.
Total 5 (delta 2), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (2/2), completed with 1 local object.
To https://github.com/UwayoOlga/Git-Advanced.git
   44a392a..3b6ba9c  main -> main
---------------------------------------------------------------------------------------------------------------------
   # 5. Branch Deletion

Impundus-iMac:Git-Advanced gymimpundu$ git branch -d ft/new-feature
Deleted branch ft/new-feature (was 3012d49).
---------------------------------------------------------------------------------------------------------------------
# 6.Creating a Branch from a Commit
Impundus-iMac:Git-Advanced gymimpundu$ git log --oneline
ba090b9 (HEAD -> main, origin/main, origin/HEAD) Delete README.md
3b6ba9c Merge branch 'main' of https://github.com/UwayoOlga/Git-Advanced
44a392a Merge pull request #3 from UwayoOlga/ft/new-feature
3012d49 (origin/ft/new-feature) Implemented core functionality for new feature
c8f1544 Updated project readme
fc9f89f Merge pull request #2 from UwayoOlga/ft/new-feature
4dabb85 Implemented core functionality for new feature
9648756 Implemented core functionality for new feature
e5aa902 Merge pull request #1 from UwayoOlga/ft/branch
e0ebe0f  Part 1 answers tracking file
ad6fa4a Implemented test 5
4db9e73 (origin/ft/branch, ft/branch) Implemented test 5
2cb522d create second file
9f68004 answers tracking file
2ddb0a3 Create Fourth File
e155600 Create Third File
3ae025d chore: Create initial file
8bd2969 Initial commit
  
Impundus-iMac:Git-Advanced gymimpundu$ git checkout -b ft/new-branch-from-commit 44a392a
Switched to a new branch 'ft/new-branch-from-commit'
Impundus-iMac:Git-Advanced gymimpundu$ git branch 
  ft/branch
* ft/new-branch-from-commit
  main
Impundus-iMac:Git-Advanced gymimpundu$ touch part2.md
Impundus-iMac:Git-Advanced gymimpundu$ git add part2.md
Impundus-iMac:Git-Advanced gymimpundu$ git commit -m'part2 answers'
[ft/new-branch-from-commit fe04e40] part2 answers
 1 file changed, 46 insertions(+)
 create mode 100644 part2.md
---------------------------------------------------------------------------------------------------------------------
# 7. Branch Merging

Impundus-iMac:Git-Advanced gymimpundu$ git checkout main
Switched to branch 'main'
Your branch is up to date with 'origin/main'.
Impundus-iMac:Git-Advanced gymimpundu$ git merge ft/new-branch-from-commit
Merge made by the 'ort' strategy.
 part2.md | 46 ++++++++++++++++++++++++++++++++++++++++++++++
 1 file changed, 46 insertions(+)
 create mode 100644 part2.md
Impundus-iMac:Git-Advanced gymimpundu$ git push origin ft/new-branch-from-commit
Enumerating objects: 4, done.
Counting objects: 100% (4/4), done.
Delta compression using up to 8 threads
Compressing objects: 100% (3/3), done.
Writing objects: 100% (3/3), 849 bytes | 849.00 KiB/s, done.
Total 3 (delta 1), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (1/1), completed with 1 local object.
remote: 
remote: Create a pull request for 'ft/new-branch-from-commit' on GitHub by visiting:
remote:      https://github.com/UwayoOlga/Git-Advanced/pull/new/ft/new-branch-from-commit
remote: 
To https://github.com/UwayoOlga/Git-Advanced.git
 * [new branch]      ft/new-branch-from-commit -> ft/new-branch-from-commit
---------------------------------------------------------------------------------------------------------------------

 # 9. Renaming Branches

Impundus-iMac:Git-Advanced gymimpundu$ git branch -m ft/new-branch-from-commit ft/improved-branch-name
Impundus-iMac:Git-Advanced gymimpundu$ git branch 
  ft/branch
  ft/improved-branch-name
* main 
Impundus-iMac:Git-Advanced gymimpundu$ git push origin ft/improved-branch-name

Total 0 (delta 0), reused 0 (delta 0), pack-reused 0
remote: 
remote: Create a pull request for 'ft/improved-branch-name' on GitHub by visiting:
remote:      https://github.com/UwayoOlga/Git-Advanced/pull/new/ft/improved-branch-name
remote: 
To https://github.com/UwayoOlga/Git-Advanced.git
 * [new branch]      ft/improved-branch-name -> ft/improved-branch-name
Impundus-iMac:Git-Advanced gymimpundu$ 
Impundus-iMac:Git-Advanced gymimpundu$ git branch
  ft/branch
  ft/improved-branch-name
* main
---------------------------------------------------------------------------------------------------------------------
# 10 Checking Out Detached HEAD

Impundus-iMac:Git-Advanced gymimpundu$ git log --oneline
f252a1e (HEAD -> main) Merge branch 'ft/new-branch-from-commit'
fe04e40 (origin/ft/improved-branch-name, ft/improved-branch-name) part2 answers
ba090b9 Delete README.md
3b6ba9c Merge branch 'main' of https://github.com/UwayoOlga/Git-Advanced
44a392a Merge pull request #3 from UwayoOlga/ft/new-feature
3012d49 (origin/ft/new-feature) Implemented core functionality for new feature
c8f1544 Updated project readme
fc9f89f Merge pull request #2 from UwayoOlga/ft/new-feature
4dabb85 Implemented core functionality for new feature
9648756 Implemented core functionality for new feature
e5aa902 Merge pull request #1 from UwayoOlga/ft/branch
e0ebe0f  Part 1 answers tracking file
ad6fa4a Implemented test 5
4db9e73 (origin/ft/branch, ft/branch) Implemented test 5
2cb522d create second file
9f68004 answers tracking file
2ddb0a3 Create Fourth File
e155600 Create Third File
3ae025d chore: Create initial file
8bd2969 Initial commit
Impundus-iMac:Git-Advanced gymimpundu$ git checkout ba090b9
Note: switching to 'ba090b9'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by switching back to a branch.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -c with the switch command. Example:

  git switch -c <new-branch-name>

Or undo this operation with:

  git switch -

Turn off this advice by setting config variable advice.detachedHead to false

HEAD is now at ba090b9 Delete README.md
Impundus-iMac:Git-Advanced gymimpundu$ git checkout main
Previous HEAD position was ba090b9 Delete README.md
Switched to branch 'main'
Your branch and 'origin/main' have diverged,
and have 1 and 1 different commits each, respectively.
  (use "git pull" to merge the remote branch into yours)
Impundus-iMac:Git-Advanced gymimpundu$ git log --oneline
f252a1e (HEAD -> main) Merge branch 'ft/new-branch-from-commit'
fe04e40 (origin/ft/improved-branch-name, ft/improved-branch-name) part2 answers
ba090b9 Delete README.md
3b6ba9c Merge branch 'main' of https://github.com/UwayoOlga/Git-Advanced
44a392a Merge pull request #3 from UwayoOlga/ft/new-feature
3012d49 (origin/ft/new-feature) Implemented core functionality for new feature
c8f1544 Updated project readme
fc9f89f Merge pull request #2 from UwayoOlga/ft/new-feature
4dabb85 Implemented core functionality for new feature
9648756 Implemented core functionality for new feature
e5aa902 Merge pull request #1 from UwayoOlga/ft/branch
e0ebe0f  Part 1 answers tracking file
ad6fa4a Implemented test 5
4db9e73 (origin/ft/branch, ft/branch) Implemented test 5
2cb522d create second file
9f68004 answers tracking file
2ddb0a3 Create Fourth File
e155600 Create Third File
3ae025d chore: Create initial file
8bd2969 Initial commit
Impundus-iMac:Git-Advanced gymimpundu$ git push origin main
To https://github.com/UwayoOlga/Git-Advanced.git
 ! [rejected]        main -> main (non-fast-forward)
error: failed to push some refs to 'https://github.com/UwayoOlga/Git-Advanced.git'
hint: Updates were rejected because the tip of your current branch is behind
hint: its remote counterpart. Integrate the remote changes (e.g.
hint: 'git pull ...') before pushing again.
hint: See the 'Note about fast-forwards' in 'git push --help' for details.
Impundus-iMac:Git-Advanced gymimpundu$ git pull origin main
From https://github.com/UwayoOlga/Git-Advanced
 * branch            main       -> FETCH_HEAD

Impundus-iMac:Git-Advanced gymimpundu$ git pull origin main --no-rebase
From https://github.com/UwayoOlga/Git-Advanced
 * branch            main       -> FETCH_HEAD
Merge made by the 'ort' strategy.
Impundus-iMac:Git-Advanced gymimpundu$ git push origin main
Enumerating objects: 2, done.
Counting objects: 100% (2/2), done.
Delta compression using up to 8 threads
Compressing objects: 100% (2/2), done.
Writing objects: 100% (2/2), 454 bytes | 454.00 KiB/s, done.
Total 2 (delta 0), reused 0 (delta 0), pack-reused 0
To https://github.com/UwayoOlga/Git-Advanced.git
   e3944f5..7e4124e  main -> main
Impundus-iMac:Git-Advanced gymimpundu$ 