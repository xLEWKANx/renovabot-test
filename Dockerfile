FROM node:17.4

COPY package*.json yarn.lock ./

RUN yarn install

COPY . .
RUN yarn build

# Add support Node I18n support
ENV NODE_ICU_DATA="/app/node_modules/full-icu"
