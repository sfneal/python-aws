# Start with release canidate buster image
FROM python:3.11-buster

# Update operating system & install system packages
RUN apt-get update \
    && apt-get install -y \
    	python3-six

# Copy python dependencies list
COPY ./ /

# Install requirements
RUN pip install --upgrade pip \
	&& pip install awscli \
	&& rm ./requirements.txt