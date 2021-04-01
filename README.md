# Connecting Biological Detail with Neural Computation: Application to the Cerebellar Granule-Golgi Microcircuit

*Andreas Stöckel, Terry Stewart, Chris Eliasmith*

The repository contains the code used to produce the data shown in the paper Topics in Cognitive Science (TopiCS) paper "Connecting Biological Detail with Neural Computation: Application to the Cerebellar Granule-Golgi Microcircuit" (to appear later this year).

![Header image showing some diagrams from the Paper](images/header.jpg)

## Running the code

The code to execute and visualise the experiments can be found in the `notebooks` folder, the model itself is located in the `model` folder.
We recommend that you use the provided Docker file to build a Docker container that can run the code.

### Opening the Docker Container

To reproduce the results from the paper you can use the provided `Dockerfile` to enter a reproducible environment.
After installing `docker` on your system, execute the following from the root directory of this repository:
```
# Build the Docker container. Note that this will download a few gigabytes of data. You only need to do this
# once.
docker build -t cerebellum .

# Execute the docker container.
docker run -p 4567:4567 -v "$PWD/data:/topics2021-cerebellum/notebooks/out:z" -it cerebellum
```
This will start a Jupyter lab instance inside the docker container; open the displayed URL (e.g., `http://127.0.0.1:4567/lab?token=...`) in your browser.
Files stored in the `notebooks/out` folder will appear in the `data` folder outside the container.
All other changes to the filesystem are not persistent.

### Running the experiments

Open the Jupyter notebook instance and navigate to the `notebooks` folder.
Execute all notebooks in order. Depending on your machine, this will take a quite a few hours.

The results will be placed in the `data` directory.

## Bibliography entry

TODO
