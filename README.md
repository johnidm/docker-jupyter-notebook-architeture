# Docker Jupyter Notebook Architeture Proposal

#### Build a image

```
docker build -f Dockerfile -t iara-nb/latest .
```

#### Running image

```
docker run --rm -it -p 8080:8080 --name iara-nb iara-nb/latest
```

Access: http://127.0.0.1:8080/

#### Execute a notebook

```
docker exec -it iara-nb jupyter nbconvert --to notebook --execute /datascience/notebooks/success.ipynb --output-dir /datascience/notebooks/output
```

```
docker exec -it iara-nb jupyter nbconvert --to notebook --execute /datascience/notebooks/errors.ipynb --output-dir /datascience/notebooks/output
```