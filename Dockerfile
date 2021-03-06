FROM rasa/rasa:latest
WORKDIR '/app'
COPY . /app
USER root
# WORKDIR /app
# COPY . /app
# COPY ./data /app/data
# COPY ./models /app/models
# RUN  rasa train
VOLUME /app
VOLUME /app/data
VOLUME /app/models
CMD ["run","-m","/app/models","--enable-api","--cors","*","--debug" ,"--endpoints", "endpoints.yml", "--log-file", "out.log", "--debug"]
EXPOSE 5005