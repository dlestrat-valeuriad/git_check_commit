#!/bin/sh

git config --global core.autocrlf input
git config --global core.safecrlf false
git config --global core.eol lf

ln -f git_utils/hooks/commit-msg .git/hooks/commit-msg

exit 0
