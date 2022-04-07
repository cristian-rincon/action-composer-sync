FROM google/cloud-sdk:latest

LABEL "com.github.actions.name"="Sync Airflow DAGs to Google Cloud Composer"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

COPY . .

RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]