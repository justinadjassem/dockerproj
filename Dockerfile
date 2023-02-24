FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

# Copy source code to WORKDIR
COPY . app.py /app/

# Install Package from requirements.txt
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt