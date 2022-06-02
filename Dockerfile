FROM node:12

#make directory
RUN mkdir /app
WORKDIR /app

COPY package.json /app
COPY yarn.lock /app
RUN yarn install

COPY . /app

RUN yarn install
#RUN yarn test
RUN yarn build

EXPOSE 3000

#start game
CMD yarn start
