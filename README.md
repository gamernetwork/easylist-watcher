# Easylist watcher

Watch Easylist for commits that might affect your website(s).

Simply greps incoming changesets for added, or removed rules that contain one or more of the domains you own.

## Requirements

An MTA and Mercurial client.

## Set-up

Populate `domains.txt` with a newline separated list of domains.

Create config.sh with settings (just EMAIL for now).

Run `setup.sh` which will simply clone the current Easylist repo.

Put `check.sh` on a cron, it will check the incoming changes, then update your clone.


