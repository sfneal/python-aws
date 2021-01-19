# stephenneal/python-aws

[![Build Status](https://travis-ci.com/sfneal/python-aws.svg?branch=master&style=flat-square)](https://travis-ci.com/sfneal/python-aws)
[![Total Downloads](https://img.shields.io/docker/pulls/stephenneal/python-aws?style=flat-square)](https://hub.docker.com/r/stephenneal/python-aws)
[![Latest Version](https://img.shields.io/docker/v/stephenneal/python-aws?sort=semver&style=flat-square)](https://hub.docker.com/r/stephenneal/python-aws)

python-aws is a python-buster based image with the AWS CLI preinstalled.  Useful for silently adding AWS credentials to a Docker image without storing them in bash history 

## Installation

Docker images can be pulled using the Docker CLI.

```bash
docker pull stephenneal/python-aws:3.9-buster
```

## Usage

At the top of a Dockerfile requiring AWS authentication add this snippet & your AWS credentials to build arguments.

```dockerfile
# Start from tiny base Python image to silently register AWS keys
FROM stephenneal/python-aws:3.9-alpine as AWS
ARG aws_access_key_id
ARG aws_secret_access_key
ARG aws_region_name
ENV aws_access_key_id=${aws_access_key_id}
ENV aws_secret_access_key=${aws_secret_access_key}
ENV aws_region_name=${aws_region_name}
RUN sh aws-credentials.sh
```

After building the rest of your image, copy the AWS json file from the intermediate python-aws container to your final image.

```dockerfile
# Set AWS Environment Variables
COPY --from=aws /root/.aws /root/.aws
```

## Contributing

Please see [CONTRIBUTING](CONTRIBUTING.md) for details.

### Security

If you discover any security related issues, please email stephen.neal14@gmail.com instead of using the issue tracker.

## Credits

- [Stephen Neal](https://github.com/sfneal)
- [All Contributors](../../contributors)

## License

The MIT License (MIT). Please see [License File](LICENSE.md) for more information.
