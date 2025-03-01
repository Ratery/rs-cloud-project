FROM python:3

WORKDIR /usr/src/app

RUN curl https://sh.rustup.rs -sSf | bash -s -- -y

COPY requirements.txt ./

RUN pip install -r requirements.txt

COPY . .

CMD [ "python", "./bot.py" ]
