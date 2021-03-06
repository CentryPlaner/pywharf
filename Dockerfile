FROM python:3.8-slim-buster

ARG PIP_INDEX_URL

ADD dist /dist

RUN pip --no-cache-dir install -U pip \
    && pip --no-cache-dir install $(realpath /dist/pywharf*.whl | head -n 1)

ENTRYPOINT ["pywharf"]
