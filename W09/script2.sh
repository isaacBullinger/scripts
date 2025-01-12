#! /bin/bash

FOOD="tacos"
DESSERT="ice cream"
DATE="$(date +"%a %d %b %Y %r %Z")"

cat <<- _EOF_
My favorite food is $FOOD
My favorite dessert is $DESSERT
Today's date is $DATE
Here is the calendar of this month:
$(cal)
_EOF_
