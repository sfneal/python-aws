# Start with release canidate buster image
FROM python:3.11-buster

# Copy python dependencies list
COPY ./scripts/ /

# Install requirements
RUN pip install --upgrade pip \
	&& pip install awscli \
	&& rm ./requirements.txt