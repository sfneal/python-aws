# Start with a small Alpine image
FROM python:3.8-alpine

# AWS creditentials
ENV aws_access_key_id=""
ENV aws_secret_access_key=""
ENV aws_region_name=""

# Copy python dependencies list
COPY ./scripts/ /

# Install requirements
RUN pip install --upgrade pip \
	&& pip install -r ./requirements.txt \
	&& rm ./requirements.txt