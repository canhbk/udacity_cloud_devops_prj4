# Udacity Cloud Devops Project 4

[![CircleCI](https://dl.circleci.com/status-badge/img/gh/canhbk/udacity_cloud_devops_prj4/tree/master.svg?style=svg)](https://dl.circleci.com/status-badge/redirect/gh/canhbk/udacity_cloud_devops_prj4/tree/master)

## Overview

In this project, you will apply the skills you have acquired in this course to operationalize a Machine Learning Microservice API.

You are given a pre-trained, sklearn model that has been trained to predict housing prices in Boston according to several features, such as average rooms in a home and data about highway access, teacher-to-pupil ratios, and so on. You can read more about the data, which was initially taken from Kaggle, on the data source site. This project tests your ability to operationalize a Python flask app—in a provided file, app.py—that serves out predictions (inference) about housing prices through API calls. This project could be extended to any pre-trained machine learning model, such as those for image recognition and data labeling.

## Setup environment

- virtual env
  ```bash
          python3 -m venv ~/.devops
          source ~/.devops/bin/activate
  ```
- install hadolint
  ```bash
       sudo wget -O /bin/hadolint https://github.com/hadolint/hadolint/releases/download/v2.10.0/hadolint-Linux-x86_64
       sudo chmod +x /bin/hadolint
  ```
- install dependencies
  ```bash
          make install
  ```

## Run

```bash
      cd project-ml-microservice-kubernetes

      # Run with python
      python app.py

      # Run using docker
      ./run_docker.sh

      # Run using k8s
      ./run_kubernetes.sh
```

## Project files

| Directory/File                                          | Description                                                                   |
| ------------------------------------------------------- | ----------------------------------------------------------------------------- |
| `.circleci/config.yml`                                  | CircleCI configuration file                                                   |
| `project-ml-microservice-kubernetes/model_data`         | Trained model data for housing prices in Boston                               |
| `project-ml-microservice-kubernetes/output_txt_files`   | Docker and Kubernetes log output                                              |
| `project-ml-microservice-kubernetes/app.py`             | REST app for serving request making house price prediction                    |
| `project-ml-microservice-kubernetes/Dockerfile`         | Dockerfile containing instructions to build image                             |
| `project-ml-microservice-kubernetes/make_prediction.sh` | Simulates API call to make prediction                                         |
| `project-ml-microservice-kubernetes/Makefile`           | Build file of the project                                                     |
| `project-ml-microservice-kubernetes/requirements.txt`   | Python required libraries                                                     |
| `project-ml-microservice-kubernetes/run_docker.sh`      | Shell script for creating and running docker container                        |
| `project-ml-microservice-kubernetes/run_kubernetes.sh`  | Shell script to deploy docker container on Kubernetes cluster                 |
| `project-ml-microservice-kubernetes/upload_docker.sh`   | Shell script for uploading locally built docker image to dockerhub repository |
