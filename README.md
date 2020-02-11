[![ahernandezsouza](https://circleci.com/gh/ahernandezsouza/nano-devops-project-5.svg?style=svg)](https://circleci.com/gh/ahernandezsouza/workflows/nano-devops-project-5)

## Repository Overview

Thi repository uses a pre-trained, `sklearn` model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on [the data source site](https://www.kaggle.com/c/boston-housing). It operationalizes a Python flask app in  `app.py` that serves out predictions (inference) about housing prices through API calls.

## Setup the Environment

* Create a virtualenv and activate it
* Run `make install` to install the necessary dependencies

### Running `app.py`

1. Standalone:  `python app.py`
2. Run in Docker:  `./run_docker.sh`
3. Run in Kubernetes:  `./run_kubernetes.sh`

### Kubernetes Steps

* Setup and Configure Docker locally
* Setup and Configure Kubernetes locally
* Create Flask app in Container
* Run via kubectl

## Files:
* app.py: Python App running the model
* Dockerfile: Setup of the Docker continer for `./run_docker.sh`
* make_prediction.sh: Posts the input for th sklearn model trough a Flask endpoint /predict
* Makefile: sets up the environment as described above
* requirements.txt: modules required by app.py to work (implemented via pip in Makefile)
* run_docker.sh: creates and executes the docker image
* upload_docker.sh: sends docker image to Dockerhub
* run_kubernetes.sh: creates and executes the docker image in kubernetes locally
* output_txt_files: output from executing make_prediction for `./run_docker.sh` and `./run_kubernetes.sh`
