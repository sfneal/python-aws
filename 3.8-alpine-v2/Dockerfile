# Start with a small Alpine image
FROM python:3.8-alpine

# Copy python dependencies list
COPY ./scripts/ /

# Install requirements
RUN pip install --upgrade pip \
	&& pip install -r ./requirements.txt \
	&& rm ./requirements.txt