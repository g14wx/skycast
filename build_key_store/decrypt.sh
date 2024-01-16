#!/bin/bash
gpg -d --passphrase "nikenikenike" --batch skycastApp.jks.asc > skycastApp.jks
chown $USER skycastApp.jks
chmod a+wxr skycastApp.jks