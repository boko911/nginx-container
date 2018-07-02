#!/bin/bash
if [ $DATABASE_NAME = "analyticsdashboard" ]; then
  cp /static/dashboards/images/logos/favicon-prod.png /static/dashboards/images/logos/favicon.png 
else
  cp /static/dashboards/images/logos/favicon-dev.png /static/dashboards/images/logos/favicon.png
fi

exec $@
