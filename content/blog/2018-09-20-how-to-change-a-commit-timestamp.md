---
title: "How to change a commit timestamp"
date: 2018-09-20T14:12:36+03:00
draft: false
tags:
- git
---

You may need to change the DateTime of a commit in some situations. For example,
some countries use daylight saving time period and because of it, some of the
commits can have the wrong timestamp.

```sh
git commit --amend --date "Thu Feb 15 22:37:31 2018 +0300"
```

<!--more-->

You should commit the real one first, then you can change the timestamp later.
