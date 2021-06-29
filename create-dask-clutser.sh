CLUSTER_NAME=explore-dataproc-dask
REGION=us-central1
ZONE=us-central1-a
BUCKET_NAME=explore-gcp-v1


gcloud dataproc clusters create ${CLUSTER_NAME} \
  --region=${REGION} \
  --zone=${ZONE} \
  --image-version=2.0 \
  --master-machine-type=n1-standard-4 \
  --worker-machine-type=n1-standard-4 \
  --num-workers 3 \
  --bucket=${BUCKET_NAME} \
  --optional-components=JUPYTER \
  --enable-component-gateway \
  --initialization-actions gs://goog-dataproc-initialization-actions-${REGION}/dask/dask.sh