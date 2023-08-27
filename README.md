# Jupyter template

Simple setup for projects that require a Dockerised JupyterLab setup with pytorch and CUDA.

## Usage

Before starting, ensure that the `.env` is instantiated, this can be done using:

```bash
cp sample.env .env
```

Amend the environment variable `JP_AUTHENTICATED` in `.env` if token/password authentication (JupyterLab) is not required.

```bash
docker compose build
docker compose up
```
