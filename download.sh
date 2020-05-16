#!/bin/bash

curl -s https://www.nhk.or.jp/politics/souri/search/index.html | grep "\.csv" | awk -F'"' '{ print $2; }' | xargs -Ipath -n 1 curl https://www.nhk.or.jppath -O
