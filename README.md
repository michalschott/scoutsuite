# Run check against AWS account locally

```
docker run --rm \
  -e AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID \
  -e AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY \
  -e AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN \
  -v $(pwd):/report schottmichal/scoutsuite:latest
```

# Run check against AWS account from kubernetes

```
kubectl run -i --tty --attach --image=schottmichal/scoutsuite:latest scoutsuite \
  --env="AWS_ACCESS_KEY_ID=$AWS_ACCESS_KEY_ID" \
  --env="AWS_SECRET_ACCESS_KEY=$AWS_SECRET_ACCESS_KEY" \
  --env="AWS_SESSION_TOKEN=$AWS_SESSION_TOKEN" \
  sh

scout aws
```
