FROM python:3.7.3-stretch

# Working Directory
WORKDIR /app

COPY requirements.txt .

# Install packages from requirements.txt
RUN pip install --upgrade pip &&\
    pip install --trusted-host pypi.python.org -r requirements.txt

# Copy source code to working directory
COPY . flask_app/web.py /app/
COPY nlib /app/

# Expose port 80
EXPOSE 80

# Run app.py at container launch
CMD ["python", "web.py"]
