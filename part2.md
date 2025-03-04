# Git advanced Exercises part 2
-------------------------------
## 1. Feature Branch Creation:
```
gymimpundu@Impundus-iMac Git-Advanced % git checkout -b ft/new-feature
```

## 2. Working on the Feature Branch
```
gymimpundu@Impundus-iMac Git-Advanced % touch feature.txt

gymimpundu@Impundus-iMac Git-Advanced % git add feature.txt
gymimpundu@Impundus-iMac Git-Advanced % git commit -m 'Implemented core functionality for new feature'
[ft/new-feature 9648756] Implemented core functionality for new feature
 1 file changed, 1 insertion(+)
 create mode 100644 feature.txt

```
## 3.Switching Back and Making More Changes

```
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
Impundus-iMac:Git-Advanced gymimpundu$ git checkout ft/new-feature
Impundus-iMac:Git-Advanced gymimpundu$ git checkout main
Switched to branch 'main'
Your branch and 'origin/main' have diverged,
and have 1 and 3 different commits each, respectively.
  (use "git pull" to merge the remote branch into yours)

```

