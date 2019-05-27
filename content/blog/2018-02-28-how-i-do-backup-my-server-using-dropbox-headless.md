---
title: "How I do backup my server using Dropbox headless"
date: 2018-02-28T13:13:18+03:00
draft: false
tags:
- devops
- dropbox
- cron-job
---

I have experienced a disaster on my web server a few days ago. While trying to
remove one of my dev databases, I have removed the production database
accidentally. I was extremely lucky because I duplicated production database to
the local one to test a python script and I have all my web app's content in the
GIT history which you shouldn't. Because it is not the best practice to put web
app's content to the VCS.

<!--more-->

You shouldn't risk this and must use a reliable backup strategy. I have a simple
solution that I prefer to use. I'm using Dropbox for my apps' contents and
databases. Also, you may try to use GIT for your app's code.

About my backup strategy, you may find the steps below:

## 1. Install Dropbox Headless

```sh
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
~/.dropbox-dist/dropboxd
```

The second command will ask you to copy and paste a link into a browser to link
your device to your account. After you activate your device, you can stop and
Dropbox by using CTRL + C key combination.

## 2. Restart Dropbox at start

Edit the cron job using the command below.

```sh
crontab -e
```

Add the line below:

```sh
# Restart headless dropbox at start
@reboot ~/.dropbox-dist/dropboxd
```

This cron job will start dropbox daemon every time you restart your server. Note
that this job must be before all the backup jobs. After this, you have to
restart your web server to start Dropbox.

## 3. Backup the database and the content folder

Edit the cron job using the command below.

```sh
crontab -e
```

Add the line below:

```sh
# Backup for your_app_name

0 */12 * * * zip -rj /home/your_user_name/Dropbox/BACKUPS/your_app_name/$(date '+\%Y\%m\%d\%H\%M\%S')_content.zip /home/your_username/your_project_content/folder/
0 */12 * * * mysqldump -u 'your_db_username' -p'your_db_password' your_db_name > /home/your_user_name/Dropbox/BACKUPS/your_app_name/$(date '+\%Y\%m\%d\%H\%M\%S')_db.sql
```

You have to change the lines, such as `your_x_variable` according to you.
