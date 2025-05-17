FROM python:3.9-slim

# Install dependencies
RUN apt update && apt install -y git

# Set work directory
WORKDIR /app

# Copy start.sh and requirements first
COPY start.sh /start.sh
COPY requirements.txt /requirements.txt

# Make script executable
RUN chmod +x /start.sh

# Install Python packages
RUN pip3 install -U pip && pip3 install -r /requirements.txt

# Default command
CMD ["/bin/bash", "/start.sh"]
