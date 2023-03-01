FROM python:3.7.3-stretch

## Step 1:
# Create a working directory
WORKDIR /python-sklearn

## Step 2:
# Copy source code to working directory
COPY requirements.txt requirements.txt

## Step 3:
# Install packages from requirements.txt
RUN python3 install -r requirements.txt

## Step 4:
# Expose port 80
EXPOSE 80

## Step 5:
# Run app.py at container launch
CMD ["pip3", "-m", "flask", "run", "--host=0.0.0.0"] 
