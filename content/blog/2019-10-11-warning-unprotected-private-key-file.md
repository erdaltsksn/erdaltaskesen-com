---
title: "WARNING: UNPROTECTED PRIVATE KEY FILE!"
date: 2019-10-11T16:19:48+03:00
draft: false
tags:
- devops
- ssh
- fix
---

I was planning to do a clean install after macOS Catalina was released. I copied
my ssh keys and I've seen the warning when I tried to run git-related commands.

After a short research, I've found out the source of the problem is the
permissions on the private key file.

<!--more-->

**Complete error output:**

{{< highlight bash >}}
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@     WARNING: UNPROTECTED PRIVATE KEY FILE!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
Permissions 0644 for '/Users/erdaltsksn/.ssh/id_rsa' are too open.
It is required that your private key files are NOT accessible by others.
This private key will be ignored.
Load key "/Users/erdaltsksn/.ssh/id_rsa": bad permissions
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
{{< /highlight >}}

To fix this, you need to reset the permission to default.

{{< highlight bash >}}
chmod 600 ~/.ssh/id_rsa ~/.ssh/id_rsa.pub
{{< /highlight >}}

Finally, you may need to adjust the container directory permissions as well:

{{< highlight bash >}}
chmod 755 ~/.ssh
{{< /highlight >}}

That’s all. Now you can use your SSH keys without any errors or warnings.

{{< figure src="/content/blog/2019-10-11.png" width="100%" >}}

! Please note that this is not a specific issue to any operating system. This is
a security issue related to OpenSSH client.
