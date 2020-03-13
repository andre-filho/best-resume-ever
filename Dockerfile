FROM node:12.14

EXPOSE 8080

WORKDIR /best-resume-ever
COPY . /best-resume-ever

RUN yarn install

# Added as the default command the export PDF feature
CMD yarn run dev
