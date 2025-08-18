# Start with release canidate buster image
FROM python:3.10-buster

# Update source list
RUN echo "deb http://archive.debian.org/debian stretch main contrib non-free" > /etc/apt/sources.list

# Update operating system & install system packages
RUN apt-get update \
    && apt-get install -y \
    	python3-six

# Copy python dependencies list
COPY ./ /

# Install requirements
RUN pip install --upgrade pip \
	&& pip install -r ./requirements.txt \
	&& rm ./requirements-base.txt \
    && rm ./requirements.txt