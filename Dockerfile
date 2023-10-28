FROM dockerhub.com/base-images/python3.9-runtime:latest

#install Flask
COPY setup.py .
COPY flask_on_k8s flask_on_k8s

USER root
RUN pip3 install -e .
USER $NON_ROOT_USER

#Copy our minilistic Flask app
ENV FLASK_APP='flask_on_k8s'

ENTRYPOINT ["flask", "run", "--host=0.0.0.0", "--port=8080"]

