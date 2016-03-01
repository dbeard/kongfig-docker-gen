FROM jwilder/docker-gen

COPY . /app

RUN apt-get -qq update
RUN apt-get -qq install curl -y
RUN curl -sL https://deb.nodesource.com/setup_5.x | bash -
RUN apt-get install nodejs -y
RUN curl https://www.npmjs.com/install.sh | sh
RUN npm install -g kongfig
