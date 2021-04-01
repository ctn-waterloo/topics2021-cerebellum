FROM debian:10.8
RUN apt-get update \
	&& apt-get -y install \
		git \
		build-essential \
		python3-numpy python3-scipy python3-matplotlib python3-pip python3-h5py \
		texlive texlive-base texlive-binaries \
		fontconfig fonts-urw-base35 \
		ninja-build
RUN pip3 install meson==0.57.1 jupyterlab==3.0.12 pytry==0.9.2 tqdm==4.59.0 nengo==3.1.0 nengo-extras==0.4.0
RUN git clone https://github.com/astoeckel/libbioneuronqp \
	&& cd libbioneuronqp \
	&& git checkout 7a788b59fb465915d32954639b512497b4c70259 \
	&& git submodule init \
	&& git submodule update \
	&& mkdir build \
	&& cd build \
	&& meson .. \
	&& ninja install \
	&& cd .. \
	&& pip3 install -e . \
	&& cd ..
RUN git clone https://github.com/astoeckel/nengo-bio \
	&& cd nengo-bio \
	&& git checkout 04e992684aeb691b6d394e1a3a6c3cc5a536dc79 \
	&& pip3 install -e . \
	&& cd ..
EXPOSE 4567/TCP
ENV LD_LIBRARY_PATH=/libbioneuronqp/build/
ADD . /topics2021-cerebellum
CMD cd /topics2021-cerebellum && jupyter-lab --allow-root --port 4567 --ip 0.0.0.0 --no-browser
