FROM tensorflow/tensorflow:latest
RUN apt-get update
RUN apt-get -y install python3
RUN apt-get -y install python3-pip
RUN apt-get -y install cmake libboost-all-dev libsdl2-dev libfreetype6-dev libgl1-mesa-dev libglu1-mesa-dev libpng-dev libjpeg-dev libbz2-dev libfluidsynth-dev libgme-dev libopenal-dev zlib1g-dev timidity tar nasm wget
RUN pip3 install vizdoom
RUN pip3 install gin-config
RUN pip3 install gym
RUN pip3 install opencv-python
RUN pip3 install mpi4py
RUN pip3 install dill
CMD ["python3", "main.py"]
