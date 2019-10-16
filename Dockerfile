# Instructions copied from - https://hub.docker.com/_/python/
#FROM python:3-onbuild
FROM python:3.6

# Installing from pip using trusted-host statements
COPY . / tmp/

#COPY requirements.txt /tmp/requirements.txt

WORKDIR /tmp
RUN pip install -r requirements.txt --trusted-host pypi.org --trusted-host files.pythonhosted.org

# tell the port number the container should expose
EXPOSE 5000

# run the command
CMD ["python", "./app.py"]
