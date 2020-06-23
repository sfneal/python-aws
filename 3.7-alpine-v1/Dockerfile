# Start with a small Alpine image
FROM python:3.7-alpine AS aws

# Update operating system
RUN apk update

# Install requirements
COPY requirements.txt ./requirements.txt
RUN pip install -r ./requirements.txt && rm ./requirements.txt