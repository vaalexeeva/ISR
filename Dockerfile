FROM ubuntu:22.04
FROM python:3.6

RUN apt-get update && apt-get install ffmpeg libsm6 libxext6  -y

ADD . .

RUN pip install --upgrade pip setuptools wheel
RUN pip install --upgrade pip

RUN pip install Pillow
RUN pip install imageio
RUN pip install sklearn
RUN pip install scipy==1.1.0
RUN pip install keras==2.3.1
RUN pip install h5py==2.10.0
RUN pip install tensorflow==1.15.0
RUN pip install scikit-learn
RUN pip install opencv-python==4.3.0.38

ENTRYPOINT python main.py test_image/input_image.bmp --suffix res && python test_result.py