# Base image
FROM paveloom/binder-base:0.1.3

# Meta information
LABEL maintainer="Pavel Sobolev (https://github.com/Paveloom)"
LABEL version="0.1.2"
LABEL description="Basically, `paveloom/binder-base` + Julia."
LABEL github-repository="https://github.com/paveloom-d/binder-julia"
LABEL docker-repository="https://hub.docker.com/r/paveloom/binder-julia"

# Copy the scripts to the root
COPY scripts /scripts

# Allow their execution
RUN sudo chmod -R +x /scripts

# Add `/usr/other/$USER/julia/bin` to the `PATH`
ENV PATH=$PATH:/usr/other/$USER/julia/bin

# Install Julia
RUN /scripts/user/julia/install-julia.sh

# Remove scripts
RUN sudo rm -rf /scripts