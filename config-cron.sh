#!/bin/sh

# Start the run once job.
echo "creating cronjob"
crontab -r

# Setup a cron schedule
echo "SHELL=/bin/sh
0 */4 * * * $(pwd)/sync-obsedian-notes-git.sh >> /var/log/cron.log 2>&1
# This extra line makes it a valid cron" > config-cron

cat config-cron | crontab -

echo "cronjob created"

rm $(pwd)/config-cron