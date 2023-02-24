FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to WORKDIR
COPY . app.py /app/

# Install Package from requirements.txt
# hadolint ignore=DL3013
RUN pip install --upgrade --no-cache-dir pip && \
    pip install --no-cache-dir --trusted-host pypi.python.org --requirement requirements.txt