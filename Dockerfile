# Use the rocker/rstudio base image
FROM rocker/rstudio:4.4.2

# Switch to root for installation
USER root

# Install remotes package
RUN Rscript -e 'install.packages("remotes", repos="https://cran.rstudio.com")'

# Install cowsay package with a pinned version
RUN Rscript -e 'remotes::install_version("cowsay", version = "0.8.0", repos="https://cran.rstudio.com")'

# Switch back to the rstudio user
USER rstudio

# Set the working directory
WORKDIR /home/rstudio/

# Copy script.R into the container
COPY script.R /home/rstudio/script.R

# Run script automatically when the container starts
CMD ["Rscript", "/home/rstudio/script.R"]
