---
title: "Moving from Flask to Hugo"
date: 2018-12-18T14:32:07+03:00
draft: false
tags:
- erdaltaskesen.com
- hugo
- netlify
- github
---

I have been planning to rejuvenate my personal website / blog with a new backend
for a long time. I have finally moved to [Hugo](https://gohugo.io) after messing
with different kind of tech stacks over the time.

I have moved every single feature to Hugo successfully, but There are a few
things that don't fully work yet, but for the moment, I'm happy with my new site.

<!--more-->

For now, Everything is in a private repository, but I hope eventually it will be
publicly available (of course) on Github hopefully with some good posts.

This post is not intended as walkthrough on how to do it, but simply sharing my
experience hoping to impart some useful knowledge along the way.

## The reasons why I left Flask (or any other Dynamic backend)

- Security (static is definitely more secure)
- Maintenance (You have to spend time on maintenance even with [autobackup](/blog/how-i-do-backup-my-server-using-dropbox-headless))
- Cost (5$ in a month is not too much, but free is better)

## Benefits

- Hugo is written in Go and therefore incredibly fast.
- It’s just a single executable with no external dependencies.
- It’s written in Go and the installation is incredibly easy using Homebrew:
- Low maintenance efforts. No regular updates and backups required.

## Drawbacks

- Hugo's template language is really sucks.
- You are limited to Hugo feature set.
- You have to use 3rd party commenting system like [Disqus](https://disqus.com).
- You have to use 3rd party search system like [Algolia](https://www.algolia.com).
- You have to find a form handling system. Fortunately [Netlify](https://www.netlify.com) have it.
