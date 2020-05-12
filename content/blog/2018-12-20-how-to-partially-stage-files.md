---
title: "How to partially stage files"
date: 2018-12-20T18:04:57+03:00
draft: false
tags:
- git
---

GIT has a wonderful idea that is known as the staging area. The stage area is
the place where you prepare the files that are going to be on your next commit.
Sometimes you want to add only one specific part of some files.

You can use one of the following commands. This commands with their options will
will break down your files into smaller portions named **hunks**.

{{< highlight bash >}}
git add -p <filename>
{{< /highlight >}}

<!--more-->

You can use `git add --patch <filename>` as well. When you run this, It will be
prompted to you with the options below: I will explain only a few of them.

---

Stage this hunk? **[y,n,q,a,d,/,j,J,g,s,e,?]**

- **q** - Quit; do not stage this hunk or any of the remaining hunks
- **y** - Yes, add this hunk
- **n** - No, don’t add this hunk
- **s** - Split the hunk into smaller hunks
- **/** - Search for a hunk matching the given regex
- **?** - Print hunk help

---

This is really great for me because it helps me write code as much as I want and
while doing that, I can still achieve one of the core GIT rules.

> Each commit should represent the only one logical change

This command is like passing the `--interactive` argument but without initial
command menu. It jumps directly to patch subcommand.

**SOURCES:**

- [https://git-scm.com/docs/git-add](https://git-scm.com/docs/git-add)
- [https://stackoverflow.com/a/1085191/9245757](https://stackoverflow.com/a/1085191/9245757)
