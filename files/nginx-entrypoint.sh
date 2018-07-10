#!/bin/bash
if [ $DEPLOYMENT = "prod" ]; then
  cp /static/dashboards/images/logos/favicon-prod.png /static/dashboards/images/logos/favicon.png
else
  cp /static/dashboards/images/logos/favicon-dev.png /static/dashboards/images/logos/favicon.png
fi

exec $@
