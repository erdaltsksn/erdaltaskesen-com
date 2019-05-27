---
title: "Saving the local changes temporarily in Git"
date: 2018-03-08T13:18:28+03:00
draft: false
tags:
- git
---

Imagine that you're working on a big feature in your app. Then you get a
critical bug ticket that should be resolved immediately. You don't want to
commit the messy code. You just want to save your dirty working environment, do
urgent things and go back it. For this, you can use `git stash` command.

<!--more-->

```sh
$ git stash
Saved working directory and index state WIP on master:
    fe100c4 Add modified one
```

Now your files saved on "git-clipboard" and you can work on your urgent bug.
After your urgent bug is solved, you may get your files from the clipboard using
the command below.

```sh
git stash pop
```

The `pop` will also do clean-up on the Stash.
