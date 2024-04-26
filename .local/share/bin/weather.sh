#!/bin/bash

get_ip_info(){
    ip_info=$(curl -s ipinfo.io)
    echo $ip_info
}

get_city() {
    ip_info=$(get_ip_info)
    city=$(echo "$ip_info" | grep -o '"city": *"[^"]*"' | awk -F'"' '{print $4}')
    echo $city
}

city=$(get_city)
city_encoded=$(echo "$city" | sed 's/ /%20/g')

weather_info=$(wttr.sh $city_encoded m format=1)
weather_tooltip=$(wttr.sh $city_encoded mM format=2)
tooltip="$city $weather_tooltip"

json_output='{"text": "'"$weather_info"'","tooltip":"'"$tooltip"'"}'

echo $json_output
