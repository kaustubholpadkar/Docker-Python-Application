# Docker-Python-Application
Running Simple Python Application in Docker container 

## Overview
This project aims at running a simple Python script through the docker container. We will create a python script __app.py__ that performs addition of two integers as well as __Dockerfile__ for building an image.

## Step 1: Create 'app.py'
```python

def main ():

	print('Enter First Number : ', end="")
	first_number = int(input())
	print('Enter Second Number : ', end="")
	second_number = int(input())

	total = first_number + second_number

	print('Addition of two numbers is ' + str(total))

if __name__ == '__main__':
	main()

```

## Step 2: Create 'Dockerfile'
```terminal
FROM python:3

WORKDIR /usr/src/app

COPY . .

CMD [ "python", "./app.py" ]
```

## Step 3: Build Image

```terminal
$ sudo docker build -t additionapp/1 .
```

## Step 4: Run Container
```terminal
$ sudo docker run -it additionapp/1
Enter First Number : 10
Enter Second Number : 20
Addition of two numbers is 30
```
