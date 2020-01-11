# Copyright (c) HyperCloud Development Team.
# Distributed under the terms of the Modified BSD License.
ARG BASE_CONTAINER=jupyter/minimal-notebook
FROM $BASE_CONTAINER

LABEL maintainer="Junxiang Wei <kevinprotoss.wei@gmail.com>"

USER $NB_UID

RUN conda install -c anaconda protobuf

RUN conda install -c conda-forge python-confluent-kafka
