# Use an official Python runtime as a parent image
FROM python:3.10

# Set the working directory in the container
WORKDIR /usr/src/app

# # Install any needed packages specified in requirements.txt
# RUN pip install --no-cache-dir -r requirements.txt
RUN pip install dash
RUN pip install pandas


# Copy the current directory contents into the container at /usr/src/app
COPY . .


# Expose port 8050
EXPOSE 8050
EXPOSE 5000

# Define an environment variable fo the port number
ENV PORT=8050
#ENV PORT=5000

# Run the Dash app
CMD ["python", "./app.py"]