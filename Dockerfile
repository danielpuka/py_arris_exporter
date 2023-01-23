FROM python:3-slim

COPY . /src

RUN pip install --upgrade /src && \
    cp /usr/local/bin/py_arris_exporter py_arris_exporter

EXPOSE 9393

ENTRYPOINT ["/py_arris_exporter"]
