FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime

ARG USER

RUN apt-get update
RUN apt install -y git

RUN pip install --upgrade pip

RUN useradd -m $USER

ENV PATH="/home/$USER/.local/bin:${PATH}"

WORKDIR /app

RUN chown -R $USER:$USER /app

USER $USER

# Install requirements
COPY ./requirements.txt /app/requirements.txt
RUN pip install --user -r /app/requirements.txt
RUN rm /app/requirements.txt

# Configure Python
ENV PYTHONIOENCODING=utf-8
ENV LC_ALL=C.UTF-8
ENV export LANG=C.UTF-8
ENV PYTHONPATH="${PYTHONPATH}:/app"
