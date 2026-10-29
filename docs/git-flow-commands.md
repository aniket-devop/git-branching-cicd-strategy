# Git Flow Command Cheatsheet

## Feature

    git checkout -b feature/<name> develop
    git push -u origin feature/<name>
    # open a pull request into develop

## Release

    git checkout -b release/1.0 develop
    git push -u origin release/1.0
    # stabilize, then merge into main and tag
    git checkout main
    git merge --no-ff release/1.0
    git tag -a v1.0.0 -m "Release 1.0.0"
    git push origin main --tags
    # merge back so fixes are not lost
    git checkout develop
    git merge --no-ff release/1.0

## Hotfix

    git checkout -b hotfix/<id> main
    # fix, open a pull request into main, tag a PATCH version
    # then merge the fix back into develop
