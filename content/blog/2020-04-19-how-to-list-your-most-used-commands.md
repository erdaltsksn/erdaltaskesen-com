---
title: "How to list your most-used commands"
date: 2020-04-19T18:39:39+03:00
draft: false
tags:
- cli
---

If you are a developer, you're mostly working using the command line. You may
even wanna find out the most used commands.

{{< highlight bash >}}
fc -l 1 | awk '{CMD[$2]++;count++;}END { for (a in CMD)print CMD[a] " " CMD[a]/count*100 "% " a; }' | grep -v "./" | column -c3 -s " " -t | sort -nr | nl | head -n10
{{< /highlight >}}

<!--more-->

You will see the output similar to this:

{{< figure src="/content/blog/2020-04-19.png" width="100%" >}}

You may change the `-n10` at the end if you want to see more results.
