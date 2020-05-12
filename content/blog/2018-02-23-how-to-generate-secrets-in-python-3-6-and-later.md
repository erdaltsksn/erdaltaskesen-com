---
title: "How to generate secrets in Python 3.6 and later"
date: 2018-02-23T06:11:22+03:00
draft: false
tags:
- python
---

There are a lot of ways to generate random values. But some of them are not
suitable for secret keys. There is a new module named secrets in version 3.6 and
later. You can use the code below to generate cryptographically strong random
values.

{{< highlight python >}}
import secrets
secrets.token_hex()
{{< /highlight >}}

<!--more-->

This module will generate truly random values not pseudo-random. Pseudo-random
generators should be used only for simulation, not important random values or
anything security related. You can use secrets for data such as password,
security tokens and etc.

**SOURCES:**

- [https://docs.python.org/3/library/secrets.html](https://docs.python.org/3/library/secrets.html)
