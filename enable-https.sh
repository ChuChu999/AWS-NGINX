#!/bin/sh
# script that enables https by removing http-only config and adding https config
# need to run dos2unix over script when coming from Windows!

echo removing idkwheretogo from /etc/nginx/sites-enabled/ ...
rm /etc/nginx/sites-enabled/idkwheretogo
echo linking idkwheretogo-https to /etc/nginx/sites-enabled/ ...
ln -s /etc/nginx/sites-available/idkwheretogo-https /etc/nginx/sites-enabled/
echo reloading nginx...
nginx -s reload
echo done!
