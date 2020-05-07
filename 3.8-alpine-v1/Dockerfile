FROM python:3.8-alpine AS aws

# Copy python dependencies list
COPY requirements.txt ./requirements.txt

# Install requirements
RUN pip install --upgrade pip \
	&& pip install -r ./requirements.txt \
	&& rm ./requirements.txt