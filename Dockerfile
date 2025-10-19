#select the base image
FROM python:3.11-slim
#set the default directory
WORKDIR /app
#Copy requirements file to be installed in the container
COPY requirements.txt .
#install the requirements using pip
RUN pip3  install -r requirements.txt
#copy the source files
COPY app.py .
#start the application
CMD ["python3", "app.py"]
#open port 5000 in container
EXPOSE 5000
