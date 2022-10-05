FROM python:3.8

ENV LANG C.UTF-8

LABEL maintainer="Ahmed Basha"

# copy all files inside the container
COPY . /app

# set working directory
WORKDIR /app/techtrends

# install dependencies 
RUN pip3 install --no-cache-dir -r requirements.txt

# export application port
EXPOSE 3111

# command to run on container start
CMD ["python", "app.py" ]

