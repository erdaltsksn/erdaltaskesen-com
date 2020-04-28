---
title: "The Era of Micro Packages"
date: 2020-04-28T21:19:48+03:00
draft: false
tags:
- programming
---

I've been planing to write a blog post about this for a long. Building small,
focused modules/package means reusability and makes it possible to build larger
more advanced apps.

As stated by [Douglas McIlroy](https://en.wikipedia.org/wiki/Douglas_McIlroy),
Unix programs have always been expected to follow the concept of DOTADIW:

> "Do One Thing And Do It Well."

<!--more-->

Some people are obsessive about the LOC (Lines of Code). You shouldn't care about
it. The key in the modular development. All you need to know is how to use the
lego blocks to build a castle. But even Modularity is a powerful concept, but
like anything else it's not magic stick.

## One programmer broke the internet

There was a situation in 2016. A man named [Azer Koçulu](https://kodfabrik.com)
broke the internet by removing just a micro-package named `left-pad` cause many
project using it as a dependency. The impat of these was large as it was being
used a large number of very popular project like (Babel, Atom, React, and etc.)

**SOURCES:**

- [https://en.wikipedia.org/wiki/Unix_philosophy](https://en.wikipedia.org/wiki/Unix_philosophy)

- [https://kodfabrik.com/journal/i-ve-just-liberated-my-modules](https://kodfabrik.com/journal/i-ve-just-liberated-my-modules)

- [https://medium.com/@mproberts/a-discussion-about-the-breaking-of-the-internet-3d4d2a83aa4d](https://medium.com/@mproberts/a-discussion-about-the-breaking-of-the-internet-3d4d2a83aa4d)

- [https://www.freecodecamp.org/news/in-defense-of-hyper-modular-javascript-33934c79e113/](https://www.freecodecamp.org/news/in-defense-of-hyper-modular-javascript-33934c79e113/)
