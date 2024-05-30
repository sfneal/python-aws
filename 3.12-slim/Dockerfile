# Start with release canidate buster image
FROM python:3.12-slim

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