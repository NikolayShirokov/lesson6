FROM python

WORKDIR /src

COPY ./requirements.txt /src/requirements.txt
run pip install -r requirements.txt

COPY ./ /src/

env FLASK_APP program.py
CMD flask run -h 0.0.0.0