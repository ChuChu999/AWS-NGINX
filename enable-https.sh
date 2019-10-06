#!/bin/sh
# script that enables https by removing http-only config and adding https config
# need to run dos2unix over script when coming from Windows!

echo removing idkwheretogo.com from /etc/nginx/sites-enabled/ ...
rm /etc/nginx/sites-enabled/idkwheretogo.com
echo linking idkwheretogo.com-https to /etc/nginx/sites-enabled/ ...
ln -s /etc/nginx/sites-available/idkwheretogo.com-https /etc/nginx/sites-enabled/
echo reloading nginx...
nginx -s reload
echo done!
