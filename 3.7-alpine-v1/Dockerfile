FROM python:3.7-alpine AS aws

# Install requirements
COPY requirements.txt ./requirements.txt
RUN pip install -r ./requirements.txt && rm ./requirements.txt