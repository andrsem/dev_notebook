# Git

## Save changes to the stash

```console
git stash save "message"
```

## Check if there is no merge conflict

```console
git merge --no-commit --no-ff [branch name]
```

## Check commits and branches creation times

```console
git reflog --date=local
```

## Remove commits from remote

```console
git push origin +HEAD
```

## Remove all commits from branch

```console
git reset --hard origin
```

## Remove last commit

```console
git reset HEAD^
```

## Merge master into a branch from local

```console
git checkout main
git pull
git checkout some_branch
git merge main
git push
```

## Merge master into a branch from remote

```console
git checkout some_branch
git merge origin/main
git push
```

## Diff changed characters

```console
git diff --color-words=.
```

## Change branch name

```console
git branch -m new-branch-name
```
