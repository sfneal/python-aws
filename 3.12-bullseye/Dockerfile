# Start with release canidate buster image
FROM python:3.12-bullseye

# Copy python dependencies list
COPY ./scripts/ /

# Install requirements
RUN pip install --upgrade pip \
	&& pip install -r ./requirements.txt \
	&& rm ./requirements.txt