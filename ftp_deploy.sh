#!/bin/sh
# @author: Alexandre Plennevaus
# @description: MIRROR DISTANT FOLDER TO LOCAL FOLDER VIA FTP
#
# FTP LOGIN

HOST=$host
USER=$user
PASSWORD=$password

#DISTANT DIRECTORY
REMOTE_DIR='/public_html'

#LOCAL DIRECTORY
LOCAL_DIR='src/'

# RUNTIME!
echo
echo "Starting download $REMOTE_DIR from $HOST to $LOCAL_DIR"
date

# Login and sync remote directory on ftp server with local contents
lftp -u "$USER","$PASSWORD" $HOST <<EOF 

mirror --reverse --delete --verbose $LOCAL_DIR $REMOTE_DIR

bye
EOF

echo
echo "Transfer finished"
date
