str3="$(grep -w 'appVersion:' Chart.yaml)"
minorVS="${str3##*.}"
minorVS="${minorVS%?}"
minorVS=$((minorVS+1))
str4="${str3%.*}.$minorVS\""
echo ${str4#*:} | tr -d '"'