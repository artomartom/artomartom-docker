FROM python:3.12
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
RUN ls -latR 
ENTRYPOINT ["python"]
CMD ["app.py"]
EXPOSE 3478
