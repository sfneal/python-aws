# Start with release canidate buster image
FROM python:3.12-slim

# Copy python dependencies list
COPY ./ /

# Install requirements
RUN pip install --upgrade pip \
	&& pip install -r ./requirements.txt \
	&& rm ./requirements.txt