FROM rasa/rasa-sdk:latest
WORKDIR /app
COPY requirements.txt requirements.txt
USER root
RUN python -m pip install --upgrade pip
RUN pip install --verbose -r requirements.txt
#RUN python -m rasa_core_sdk.endpoint --actions actions
#RUN python -m rasa_core.run -d models/dialogue -u models/nlu --endpoints endpoints.ym

COPY . /app/actions

VOLUME /app 

#CMD ["start"]
EXPOSE 5055
USER 1001