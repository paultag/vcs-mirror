Repo mirror-er

In your crontab, put something like:

    */5 * * * * /srv/vcs/docron

(providing this repo is the root at /srv/vcs)

Things to mirror are subdirectories of this repo

    [tag@lucifer:/srv/vcs/fluxbox.git]$ git remote -v
    origin  git://git.fluxbox.org/fluxbox.git (fetch)
    origin  git://git.fluxbox.org/fluxbox.git (push)
    push    git@github.com:fluxbox/fluxbox.git (fetch)
    push    git@github.com:fluxbox/fluxbox.git (push)

Edit apps to have a list of all the git repos you wish to update.

In my case, I have a `fluxbox.git` and `fluxbox_paul.git` - which means I just
need "`fluxbox`" and "`fluxbox_paul`" in the apps

Please do adjust the paths in everything.

Keep in mind this is a giant hack.
