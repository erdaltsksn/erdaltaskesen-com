---
title: "Ignoring the .gitignore file"
date: 2018-03-23T21:03:37+03:00
draft: false
tags:
- git
---

Today I have a small disagreement with GIT and git ignore rules. When you add a
file to a GIT repository, it is tracked by GIT. Then adding it to `.gitignore`
won't make GIT forget about that file.

In this post, I will explain how to stop GIT from tracking a file that is
already tracked.

<!--more-->

You can use a cool command for this situation. Run the command below:

```sh
git rm --cached the_file_that_should_be_not_tracked.txt
```

If you modify the file again and run git status, you won't see the file in the
GIT repository. The problem with this command is that this file won't be a part
of the GIT repository anymore. This means it will be deleted on the remote when
you push the repository.

Sometimes you want to push a file to the remote and forget it. You don't need to
edit it anymore. If you want GIT to assume the file is unchanged, You can use
the command below:

```sh
git update-index --assume-unchanged the_no_edit_file.txt
```

`git update-index` wants the file names on its command line, so if you need to
apply it to a directory you may use the command below.

```sh
cd the_no_edit_directory
git ls-files -z | xargs -0 git update-index --assume-unchanged
```

That is exactly what we desire. Edits to this file are ignored and by GIT and
the file is still on the remote repository.
