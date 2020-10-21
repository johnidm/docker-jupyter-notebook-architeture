FROM python:3.9.0-buster

LABEL maintainer="Johni Douglas Marangon <johni.douglas.marangon@gmail.com>"

WORKDIR /datascience/

RUN pip install jupyterlab

COPY notebooks/ notebooks/

RUN jupyter nbconvert --to html notebooks/*.ipynb --output-dir='/datascience/notebooks/static/'

CMD ["jupyter", "notebook", "--allow-root", "--notebook-dir='notebooks/static/'", "--ip=0.0.0.0", "--port=8080", "--no-browser", "--NotebookApp.token=''","--NotebookApp.password=''"]
