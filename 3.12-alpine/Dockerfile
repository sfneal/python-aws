# Start with a small Alpine image
FROM python:3.12-alpine

# Update operating system & install GCC for
RUN apk update \
	&& apk add --no-cache --virtual .build-deps \
        gcc

# Copy python dependencies list
COPY ./ /

# Install requirements & remove build deps
RUN pip install --upgrade pip \
	&& pip install --no-cache-dir -r ./requirements.txt \
	&& rm ./requirements.txt \
	&& apk del .build-deps