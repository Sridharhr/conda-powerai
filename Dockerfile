#!/bin/bash
FROM jarvice/ubuntu-ibm-mldl-ppc64le
RUN rm /bin/sh && ln -s /bin/bash /bin/sh
env WORKDIR /opt/DL
RUN echo $WORKDIR

RUN wget https://repo.continuum.io/archive/Anaconda3-4.4.0-Linux-ppc64le.sh
RUN bash ./Anaconda3-4.4.0-Linux-ppc64le.sh -b -p $WORKDIR/anaconda
ENV PATH="$WORKDIR/anaconda/bin:${PATH}"
RUN conda update conda
ADD conda_keras_tf.yml $WORKDIR/
RUN conda env create -f $WORKDIR/conda_keras_tf.yml
RUN source activate keras_tf
RUN conda env list

COPY AppDef.json /etc/NAE/AppDef.json
#RUN curl --fail -X POST -d @/etc/NAE/AppDef.json https://api.jarvice.com/jarvice/validate

