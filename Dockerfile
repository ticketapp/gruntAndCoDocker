FROM debian

RUN apt-get update -y

RUN apt-get install -y build-essential

RUN apt-get install -y ruby-full

RUN gem update --system

RUN gem install compass

RUN apt-get install -y curl

RUN apt-get install -y curl && curl -sL https://deb.nodesource.com/setup_5.x | bash -

RUN apt-get install --yes nodejs

RUN npm init --force

RUN npm install -g grunt-cli --save-dev

RUN  echo "{}" > package.json && npm install grunt --save-dev 

RUN cd $(npm root -g)/npm \
  && npm install fs-extra \
  && sed -i -e s/graceful-fs/fs-extra/ -e s/fs\.rename/fs.move/ ./lib/utils/rename.js

RUN npm update -g

RUN npm install -g grunt-contrib-htmlmin --save-dev

RUN npm install -g grunt-contrib-concat --save-dev

RUN npm install -g purify-css --save-dev

RUN npm install -g grunt-purifycss --save-dev 

RUN npm install -g bower --save-dev

RUN echo "alias b='npm install; bower install --save --allow-root; grunt build'" >> ~/.bashrc

RUN echo "alias wa='grunt watch'" >> ~/.bashrc

RUN apt-get install -y git
