# Start with a small Alpine image
FROM python:3.13-alpine

# Update operating system & install GCC for
RUN apk update \
	&& apk add --no-cache --virtual .build-deps \
        gcc \
    && apk add \
      py3-six

# Copy python dependencies list
COPY ./ /

# Install requirements & remove build deps
RUN pip install --upgrade pip \
	&& pip install --no-cache-dir -r ./requirements.txt \
	&& rm ./requirements-base.txt \
    && rm ./requirements.txt \
	&& apk del .build-deps