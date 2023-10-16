FROM vault.habana.ai/gaudi-docker/1.11.0/ubuntu20.04/habanalabs/pytorch-installer-2.0.1:latest
ENV DEBIAN_FRONTEND=noninteractive
WORKDIR /home/user
RUN pip install --upgrade-strategy eager optimum[habana]
RUN pip install git+https://github.com/HabanaAI/DeepSpeed.git@1.11.0
COPY requirements.txt /home/user/requirements.txt
RUN pip install -r requirements.txt