#!/bin/bash

PS3="What city will you visit current summer? "
select city in Tokyo London "Los Angeles" Moscow Dubai Manchester "New York" Johannesburg Istanbul Paris Bangalore Milan "Abu Dhabi" Pune Nairobi Berlin Karachi;
do
case "$city" in 
        "London"|"Manchester") echo "$city is in United Kingdom.";;
        "Los Angeles"|"New York") echo "$city is in USA.";;
        "Tokyo") echo "$city is in Japan.";;
        "Dubai"|"Abu Dhabi") echo "$city is in UAE.";;
        "Moscow") echo "$city is in Russia.";;
        "Milan") echo "$city is in Italy.";;
        "Istanbul") echo "$city is in Turkey.";;
        "Berlin") echo "$city is in Germany.";;
        "Karachi") echo "$city is in Pakistan.";;
        "Nairobi") echo "$city is in Kenya.";;
        "Pune"|"Bangalore") echo "$city is in India.";;
        "Paris") echo  "$city is in France.";;
        "Johannesburg") echo "$city is in South Africa.";;
esac
    break
done
