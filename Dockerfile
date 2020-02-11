FROM python:3.7.3-stretch

## Step 1:
RUN mkdir udacity-app

## Step 2:
COPY . /udacity-app

## Step 3:
# Install packages from requirements.txt
WORKDIR /udacity-app
RUN make install

# hadolint ignore=DL3013

## Step 4:
# Expose port 80
EXPOSE 80/tcp

## Step 5:
# Run app.py at container launch
CMD ["python", "app.py"]
