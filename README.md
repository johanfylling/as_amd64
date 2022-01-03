# README

Docker container for building and running [OPA](https://www.openpolicyagent.org/) with Wasm target for amd64 on an arm64 (Mac M1) platform.

Will run sibling containers, and therefore needs access to `/var/run/docker.sock`.

The docker `--volumes-from` param doesn't work on Mac, therefore, volume mount points must mirror the host location when mounting into a sibling container.

e.g.:

```sh
docker run -ti -v /var/run/docker.sock:/var/run/docker.sock -v $(pwd):$(pwd) -w $(pwd) --rm --platform "linux/amd64" --name amd64 amd64:v1
```

## Building the container

```sh
docker build -t amd64:v1 .
```
