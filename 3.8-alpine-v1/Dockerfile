# Start with a small Alpine image
FROM python:3.8-alpine

# Update operating system
RUN apk update

# Copy python dependencies list
COPY requirements.txt ./requirements.txt

# Install requirements
RUN pip install --upgrade pip \
	&& pip install -r ./requirements.txt \
	&& rm ./requirements.txt