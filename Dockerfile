FROM python:3.12
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN ls -latR 
ENTRYPOINT ["python"]
HEALTHCHECK  --interval=10s --timeout=10s --retries=10 CMD exit 1
CMD ["app.py"]
EXPOSE 3478
 