# Reinforment Learning Course lab

Setup used to house lab environment for the Hugging Face [Deep RL course](https://huggingface.co/learn/deep-rl-course).

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
