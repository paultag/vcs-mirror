Repo mirror-er

Set:

    VCS_MIRROR_KEY=/vcs/keys/my-key
    VCS_MIRROR_CODE_ROOT=/opt/paultag/vcs/
    VCS_MIRROR_REPO_ROOT=/vcs/repo/

In your crontab, put something like:

    */5 * * * * /vcs/repos/docron

(providing this repo is the root at /vcs/repos)

Things to mirror are subdirectories of this repo

    [tag@lucifer:/vcs/repos/fluxbox.git]$ git remote -v
    origin  git://git.fluxbox.org/fluxbox.git (fetch)
    origin  git://git.fluxbox.org/fluxbox.git (push)
    push    git@github.com:fluxbox/fluxbox.git (fetch)
    push    git@github.com:fluxbox/fluxbox.git (push)

You *must* clone with `git clone --mirror`, it has some special behavior
that's not really documented well.

Edit apps to have a list of all the git repos you wish to update.

In my case, I have a `fluxbox.git` and `fluxbox_paul.git` - which means I just
need "`fluxbox`" and "`fluxbox_paul`" in the apps

Please do adjust the paths in everything.

Keep in mind this is a giant hack.
