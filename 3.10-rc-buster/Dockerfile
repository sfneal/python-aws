# Start with release canidate buster image
FROM python:3.10-rc-buster

# Copy python dependencies list
COPY ./scripts/ /

# Install requirements
RUN pip install --upgrade pip \
	&& pip install -r ./requirements.txt \
	&& rm ./requirements.txt