---
title: "Creating and Applying Patch in Git"
date: 2020-09-05T16:18:15+03:00
draft: false
tags:
- git
---

I'm using [erdaltsksn/blank](https://github.com/erdaltsksn/blank) as a Template
for my open source projects. When I make a commit in this repository, I need to
apply the same commit to every repository in my account which means lots of
repetitive work. But there is a simple solution for this kind of work in Git.

<!--more-->

We will create a patch file containing the changes and then import it. This will
redo every step to match the changes to the repository as a new commit.

{{< highlight bash >}}
git format-patch -n HEAD~1
{{< /highlight >}}

The second step is to import the patch. There are a couple of options for that
but we’ll use the simplest one.

{{< highlight bash >}}
git am 0001-lets-make-patch-to-our-repo.patch
{{< /highlight >}}

The `am` means "apply (from a) mailbox" because it was created to apply emailed
patches.
