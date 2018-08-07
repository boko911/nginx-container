#!/bin/bash
if [[ $DEPLOYMENT = "prod" ]]; then
  cp /static/dashboards/images/logos/favicon-prod.png /static/dashboards/images/logos/favicon.png 
elif [[ $DEPLOYMENT = "dev" ]]; then
  cp /static/dashboards/images/logos/favicon-dev.png /static/dashboards/images/logos/favicon.png
else
  echo "           ____________________
        < Who you Gonna Call >
          --------------------
                      __---__
                    _-       /--______
               __--( /     \ )XXXXXXXXXXX\.
             .-XXX(   O   O  )XXXXXXXXXXXXXXX-
            /XXX(       U     )        XXXXXXX
          /XXXXX(              )--_  XXXXXXXXXXX
         /XXXXX/ (      O     )   XXXXXX   \XXXXX
         XXXXX/   /            XXXXXX   \__ \XXXXX
         XXXXXX__/          XXXXXX         \__---->
 ---___  XXX__/          XXXXXX      \__         /
   \-  --__/   ___/\  XXXXXX            /  ___--/=
    \-\    ___/    XXXXXX              '--- XXXXXX
       \-\/XXX\ XXXXXX                      /XXXXX
         \XXXXXXXXX   \                    /XXXXX/
          \XXXXXX      >                 _/XXXXX/
            \XXXXX--__/              __-- XXXX/
             -XXXXXXXX---------------  XXXXXX-
                \XXXXXXXXXXXXXXXXXXXXXXXXXX/
                    VXXXXXXXXXXXXXXXXXXV"
fi

exec $@
