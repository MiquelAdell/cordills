#!/usr/bin/env bash
rsync -aphvP --delete --cvs-exclude /Users/miqueladell/code/vagrant-local/www/miqueladell/htdocs/wp-content/themes  miqueladell@miqueladell.cat:/home/miqueladell/www/wp-content/
rsync -aphvP --delete --cvs-exclude /Users/miqueladell/code/vagrant-local/www/miqueladell/htdocs/wp-content/uploads miqueladell@miqueladell.cat:/home/miqueladell/www/wp-content/
rsync -aphvP --delete --cvs-exclude /Users/miqueladell/code/vagrant-local/www/miqueladell/htdocs/wp-content/plugins miqueladell@miqueladell.cat:/home/miqueladell/www/wp-content/
