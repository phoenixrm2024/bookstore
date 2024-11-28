# "For creating 'custom' Docker Image":
# Pull base image
FROM python:3.12-slim-bullseye
# Set environment variables
ENV PIP_DISABLE_PIP_VERSION_CHECK 1
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1
# Set a "working" directory on our new image (inherited from pulled image)
WORKDIR /code
# Copy req.txt from current "local" directory into current "working" directory (/code)
COPY ./requirements.txt .
# Install dependencies into the image (in the working directory)
RUN pip install -r requirements.txt
# Copy all project's files from curr "local" dir. into curr. "working" dir. on new image
COPY . .