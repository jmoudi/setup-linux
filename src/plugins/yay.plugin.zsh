-s, --stats
Displays information about installed packages and system health. If there are orphaned, or out-of-date packages, or packages that no longer exist on the
AUR; warnings will be displayed.


yay -P --stats
Shows statistics for installed packages and system health.
pacman -Qmq | grep -Ee '-(cvs|svn|git|hg|bzr|darcs)$' | yay -S --needed -
pacaur-like devel check.