# dsci310-ia3--duakhan1--docker

# DSCI 310 - IA3 Docker Assignment

## 🚀 RStudio Docker Image

This repository contains a Dockerfile that sets up an RStudio container with a pinned version of the `{cowsay}` package.

### **📌 Relevant Links**
- **Rocker RStudio DockerHub Repository**: [rocker/rstudio](https://hub.docker.com/r/rocker/rstudio)
- **Rocker RStudio Dockerfile (v4.4.2)**: [GitHub - Rocker Project](https://github.com/rocker-org/rocker-versioned2/blob/master/rstudio/Dockerfile)

## **📜 How to Build and Run Locally**
1. **Build the Docker Image**:
   ```bash
   docker build -t my-rstudio-docker .
