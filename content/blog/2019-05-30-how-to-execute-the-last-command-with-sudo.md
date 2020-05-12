---
title: "How to execute the last command with Sudo"
date: 2019-05-30T16:24:33+03:00
draft: false
tags:
- cli
---

If you forgot to add `sudo` in your last command, you don't need to type it
completely. To execute ant last executed command by as super user:

{{< highlight bash >}}
sudo !!
{{< /highlight >}}

<!--more-->

Also The double exclamation point will repeat the last command. This cold be
usefull when you've already executed a very long command and don't wanna re-type
it again.
