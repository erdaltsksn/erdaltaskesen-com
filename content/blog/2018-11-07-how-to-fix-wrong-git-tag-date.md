---
title: "How to fix wrong Git Tag date"
date: 2018-11-07T14:15:44+03:00
draft: false
tags:
- git
---

You can add git tag to a previous commit using `git tag TAG_NAME COMMIT_HASH`,
but it will ammend current date to that tag which can screw your repository by
making out of chronological order. Don't worry, You may fix this using the code
below.

{{< highlight bash >}}
git tag -l | while read -r tag ; do COMMIT_HASH=$(git rev-list -1 $tag) && GIT_COMMITTER_DATE="$(git show $COMMIT_HASH --format=%aD | head -1)" git tag -a -f $tag -m"$(git show $COMMIT_HASH --format=%s | head -1)" $COMMIT_HASH ; done && git push --tags --force
{{< /highlight >}}

<!--more-->

**WARNING:** This code will delete all your remote tags and recreate so if you
add messages to tag, they will be replaced by tag's commit subject.

Let's learn what this code does by breaking it down.

{{< highlight bash >}}
# Loop over tags
git tag -l | while read -r tag
do
    # get the commit hash of the current tag
    COMMIT_HASH=$(git rev-list -1 $tag)

    # Get commit date of the tag and override the default tag date by specifying
    # the environment variable `GIT_COMMITTER_DATE`.
    # Note that if you specify the variable on a different line, it will apply
    # to the current environment. This isn't desired as probably don't want your
    # future tags to also have that past date. Of course, when you close shell,
    # the variable will no longer persist.
    # GIT_COMMITTER_DATE="$(git show $COMMIT_HASH --format=%aD | head -1)"

    # Create a new tag using the tag's name and the commit's subject line.
    # git tag -a -f $tag -m"$(git show 4ca668c --format=%s | head -1)" $COMMIT_HASH

    GIT_COMMITTER_DATE="$(git show $COMMIT_HASH --format=%aD | head -1)" git tag -a -f $tag -m"$(git show 4ca668c --format=%s | head -1)" $COMMIT_HASH
done
# Force push tags and overwrite ones on the server with the same name
git push --tags --force
{{< /highlight >}}

**SOURCES:**

- [https://stackoverflow.com/a/25939259](https://stackoverflow.com/a/25939259)
