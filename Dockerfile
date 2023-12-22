FROM public.ecr.aws/lambda/python:3.8

COPY requirements.txt ./
RUN pip3 install -r requirements.txt
COPY HelloWorld.py ./

CMD ["HelloWorld.lambda_handler"]