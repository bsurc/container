FROM mambaorg/micromamba:1.5.8-bookworm-slim

USER root
RUN apt update && \
    apt install -y libgl1 libegl1 libopengl0 && \
    apt clean
USER $MAMBA_USER
RUN micromamba create -n cautorift -c conda-forge python autorift=1.1.0 \
        notebook matplotlib pandas opencv rasterio gdal=3.0 && \
    micromamba clean --all --yes
RUN export SITEPACKAGES=`micromamba run -n cautorift python -m site | \
    grep -m 1 site-packages | sed "s/[,']//g"` && \
    export AUTORIFT=${SITEPACKAGES}/autoRIFT/autoRIFT.py && \
    sed -i 's/np.bool/bool/g' $AUTORIFT && \
    sed -i 's/np.int/int/g' $AUTORIFT

ENV MAMBA_DOCKERFILE_ACTIVATE=1
ENV ENV_NAME=cautorift
