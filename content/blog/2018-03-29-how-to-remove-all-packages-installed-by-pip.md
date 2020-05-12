---
title: "How to remove all packages installed by pip"
date: 2018-03-29T02:13:37+03:00
draft: false
tags:
- python
- pip
- virtualenv
---

Sometimes you want to get rid of from all python packages. There is a quick and
easy way to do this. The command below will also remove the packages installed
via VCS.

{{< highlight bash >}}
pip freeze | grep -v "^-e" | xargs pip uninstall -y
{{< /highlight >}}

<!--more-->

You may also use the command below. The command will also remake virtualenv,
including copying python executable, install base libraries and etc.

{{< highlight bash >}}
virtualenv --clear __Your_Env_Name__
{{< /highlight >}}

You should always backup pip list before clearing all packages.
