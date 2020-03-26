#!/bin/bash

# Author: DRUK
# Assist: https://github.com/rvismit/assist
# twitter: https://www.twitter.com/rvismit
# Created Mar 2020 | Monastery
# New updates coming soon.


echo   " _____    _________ _________.___  ___________________"
echo  " /  _  \  /   _____//   _____/   |/   _____\__    ___/"
echo  "/  /_\  \ \_____  \ \_____  \|   |\_____  \  |    |   "
echo "/    |    \/        \/        \   |/        \ |    |   "
echo "\____|__  /_______  /_______  /___/_______  / |____|   "
echo "        \/        \/        \/            \/           "

echo -en '\n'

BROWSER="xdg-open" #Open-Browser

DELAY=10

echo  "Enter Your Domain Name:"  "E.g exapmle.com"

read domain

host $domain

#Sub-Domain

$BROWSER https://www.google.com/search?q=site:*.$domain
$BROWSER https://www.google.com/search?q=site:*.*.$domain
$BROWSER https://www.baidu.com/s?wd=$domain
$BROWSER https://www.bing.com/search?q=$domain&count=50&first=xx
$BROWSER https://duckduckgo.com/?q=$domain&ia=web
$BROWSER https://censys.io/ipv4?q=$domain

sleep $DELAY

#Google-Dorks

$BROWSER https://www.google.com/search?q=intitle%3A"index+of"+intext%3A"Includes+site%3A$domain"
$BROWSER https://www.google.com/search?q=intitle%3A"index+of"+"db"+site%3A$domain
$BROWSER https://www.google.com/search?q=intitle%3A"Index+of+/private/"+site%3A$domain
$BROWSER https://www.google.com/search?q=intitle%3A"Index+of"+.mysql_history+site%3A$domain
$BROWSER https://www.google.com/search?q=filetype%3Alog+"PHP+Parse+error"+"PHP+Warning"+"PHP+Error"+site%3A$domain
$BROWSER https://www.google.com/search?q=filetype%3Apem+intext%3Aprivate+site%3A$domain
$BROWSER https://www.google.com/search?q=site:$domain+ext:sql+|+ext:dbf+|+ext:mdb
$BROWSER https://www.google.com/search?q=site:$domain+ext:bkf+|+ext:bkp+|+ext:bak+|+ext:old+|+ext:backup
$BROWSER https://www.google.com/search?q=site:pastebin.com+$domain
$BROWSER https://www.google.com/search?q=site:$domain+inurl:dev
$BROWSER https://www.google.com/search?q=site:$domain+inurl:auth
$BROWSER https://www.google.com/search?q=site:$domain+-www

sleep $DELAY

#Github-Dorks

$BROWSER https://github.com/search?q=$domain
$BROWSER https://github.com/search?q=$domain+filename:.npmrc_auth
$BROWSER https://github.com/search?q=$domain+filename:.dockercfg+auth
$BROWSER https://github.com/search?q=$domain+extension:pem+private
