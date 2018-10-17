#!/usr/bin/env bash
rsync -aphvP --delete --cvs-exclude miqueladell@miqueladell.cat:/home/miqueladell/www/wp-content/themes  /Users/miqueladell/code/vagrant-local/www/miqueladell/htdocs/wp-content/
rsync -aphvP --delete --cvs-exclude miqueladell@miqueladell.cat:/home/miqueladell/www/wp-content/uploads /Users/miqueladell/code/vagrant-local/www/miqueladell/htdocs/wp-content/
rsync -aphvP --delete --cvs-exclude miqueladell@miqueladell.cat:/home/miqueladell/www/wp-content/plugins /Users/miqueladell/code/vagrant-local/www/miqueladell/htdocs/wp-content/
