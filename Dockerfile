FROM 770120556771.dkr.ecr.us-east-1.amazonaws.com/pythonimage:latest

WORKDIR /opt/app

COPY . .

RUN pip install --no-cache-dir -r requirements.txt

EXPOSE 80

#ENTRYPOINT ["/bin/bash", "-l", "-c"]

CMD ["python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=80"]
