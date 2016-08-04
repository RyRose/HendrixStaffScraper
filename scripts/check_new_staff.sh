#!/bin/bash

xml_location="/var/www/html/app/staff.xml"
txt_location="/var/www/html/app/staff_version.txt"

mkdir -p /var/www/html/app;
diff_staff=$(diff $xml_location out/staff.xml);
version=$(cat $txt_location);
if [ -n "$diff_staff" ]; then
    echo $(($version + 1)) > $txt_location
    cp $xml_location out/staff"$version".xml
    cp out/staff.xml $xml_location;
fi
