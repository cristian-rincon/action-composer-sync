# Github action | Sync Airflow DAGs to Google Cloud Composer

This action helps you to fetch your Apache Airflow DAGs to Google Cloud Composer. The action expect `GOOGLE_APPLICATION_CREDENTIALS` encoded as base64.

It's highly recommended to save your credentials as Encrypted secrets and read them from `{{ secrets.GOOGLE_APPLICATION_CREDENTIALS }}`.

More information about [Encrypted Secrets](https://docs.github.com/en/enterprise-server@3.3/actions/security-guides/encrypted-secrets).

## Github actions steps

### Set credentials

Enable ``GOOGLE_APPLICATION_CREDENTIALS`` in the context.

### Sync DAGs

This action will fetch your DAGs from Apache Airflow and push them to Google Cloud Composer.

## Inputs

- ``GOOGLE_APPLICATION_CREDENTIALS``: The base64 encoded credentials.
- ``PROJECT_ID``: The Google project ID.
- ``ENVIRONMENT``: The Google Cloud Composer environment name.
- ``LOCATION``: The Google Cloud Composer environment location.
- ``DAG_NAME``: DAGs folder name.

## Example usage

```yaml
name: Sync Airflow DAGs to Google Cloud Composer
uses: cristian-rincon/action-composer-sync@0.1.0
with:
    GOOGLE_APPLICATION_CREDENTIALS: "${{ secrets.GOOGLE_APPLICATION_CREDENTIALS }}"
    PROJECT_ID: "${{ secrets.PROJECT_ID }}"
    ENVIRONMENT: "${{ secrets.ENVIRONMENT }}"
    LOCATION: "${{ secrets.LOCATION }}"
    DAG_NAME: "${{ secrets.DAG_NAME }}"
```
