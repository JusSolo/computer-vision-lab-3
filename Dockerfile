# Use the official Python 3.9 image as the base image
FROM python:3.9

# Set the working directory inside the container
WORKDIR /app

# Install system dependencies required for Python packages
RUN apt-get update && apt-get install -y \
    ffmpeg libsm6 libxext6  \
    libpng-dev \
    libfreetype6-dev \
    libjpeg-dev \
    libopenblas-dev \
    gfortran \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip to the latest version
RUN pip install --upgrade pip

# Copy the current directory contents into the container at /app
COPY . .

# Install Python packages from requirements.txt (if you have one)
# Uncomment the following line if you have a requirements.txt file
# RUN pip install --no-cache-dir -r requirements.txt

# Install Python packages explicitly
RUN pip install matplotlib numpy pandas 
RUN pip install pillow jupyter
RUN pip install scikit-image scikit-learn
RUN pip install opencv-python

# Expose the port Jupyter Notebook will run on
EXPOSE 8888

# Set the command to run Jupyter Notebook
CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--port=8888", "--no-browser", "--allow-root"]