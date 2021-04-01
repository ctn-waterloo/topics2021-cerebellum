# Code for the TopiCS paper "Connecting Biological Detail with Neural Computation: Application to the Cerebellar Granule-Golgi Microcircuit"

*Andreas Stöckel, Terry Stewart, Chris Eliasmith*

The code in this repository is the codebase used to produce the results presented in the paper.
Some modifications were made to hopefully make the code more user friendly.

## Running the code

Best use the provided Docker file to construct an more-or-less reproducible environment.

The code to execute and visualise the experiments can be found in the `notebooks` folder, the model itself is located in the `model` folder.

### Opening the Docker Container

To reproduce the results from the paper you can use the provided `Dockerfile` to enter a reproducible environment.
After installing `docker` on your system, execute the following from the root directory of this repository:
```
docker build -t cerebellum .
docker run -p 4567:4567 -v "$PWD/data:/topics2021-cerebellum/notebooks/out:z" -it cerebellum
```
This will start a Jupyter lab instance inside the docker container; open the displayed URL (e.g., `http://127.0.0.1:4567/lab?token=...`) in your browser.

### Running the experiments

Open the Jupyter notebook instance and navigate to the `notebooks` folder.
Execute all notebooks in order. Depending on your machine, this will take a quite a few hours.

The results will be placed in the `data` directory.

## Bibliography entry

TODO
