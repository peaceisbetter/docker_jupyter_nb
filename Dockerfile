FROM python:3.10.9-slim
LABEL maintainer="Jack Manning <jackpmanning@tamu.edu>"
LABEL version="1.1"
LABEL description="Python Jupyter notebook environment for Biomechanics Practice"

RUN apt-get update -y
RUN apt-get install -y gcc
RUN apt-get install -y build-essential libpq-dev
RUN apt-get install -y graphviz

RUN pip install --upgrade pip

RUN pip install numpy==1.23.5  pandas==1.5.2 seaborn==0.12.1 jupyter==1.0.0 psycopg2==2.9.5 statsmodels==0.13.5 graphviz==0.20.1

WORKDIR /home/notebooks/

COPY ./jupyter_notebooks /home/notebooks/
COPY ./data /home/data/

EXPOSE 8888

CMD ["jupyter","notebook","--ip=0.0.0.0","--port=8888","--no-browser","--allow-root"]