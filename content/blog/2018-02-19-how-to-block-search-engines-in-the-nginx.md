---
title: "How to block search engines in the nginx"
date: 2018-02-19T13:17:28+03:00
draft: false
tags:
- devops
- nginx
- seo
---

If you have three layered development structure (local dev, remote staging,
remote production) like me, you want to search engines index your staging server.
It is easy to prevent search engines from indexing your nginx web server.

{{< highlight bash >}}
add_header  X-Robots-Tag "noindex, nofollow, nosnippet, noarchive";
{{< /highlight >}}

<!--more-->

Add the line above in the server block (virtualhost) file and Google forgets the
way to goes to your server.
