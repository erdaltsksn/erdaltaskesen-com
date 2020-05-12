---
title: "Upgrading Ubuntu Server LTS from 16.04 to 18.04"
date: 2018-05-13T19:04:09+03:00
draft: false
tags:
- devops
- ubuntu
---

Ubuntu 18.04, aka Bionic Beaver, was released on 26 April 2018. In this post, I
will try to explain how do I upgrade my Ubuntu server. I will also inform you
about how I overcome the obstacles related python hosting.

<!--more-->

## Step 1 – Backing Up Your System

Before attempting a major upgrade to any system, you should make sure you won't
lose data if the upgrade fails. The best way to accomplish this is to make a
backup of your entire filesystem.

On a [DigitalOcean](https://m.do.co/c/4e0341367957) Droplet, one approach is to
power down the system and take a snapshot (powering down ensures that the
filesystem will be more consistent).

## Step 2 – Updating Currently Installed Packages

Before beginning the release upgrade, it's safest to update to the latest
versions of all packages for the current release.

{{< highlight bash >}}
sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade
{{< /highlight >}}

## Step 3 – Upgrading with Ubuntu's do-release-upgrade Tool

Ubuntu provides a tool called do-release-upgrade to make the upgrade safer and
easier.

`do-release-upgrade` handles checking for a new release, updating sources.list,
and a range of other tasks, and is the officially recommended upgrade path for
server upgrades which must be performed over a remote connection.

{{< highlight bash >}}
sudo do-release-upgrade
{{< /highlight >}}

If there is no new release, you can try to add -d option to upgrade to the
development release. If everything goes well, you should reboot and use it
happily.

But I have a minor problem after upgrading, my python virtual environment
doesn't work. I have solved this by recreating each virtual environment and
install requirements by using the requirements.txt file.
