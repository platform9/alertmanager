FROM node:6.10

RUN curl -L -o /bin/elm.gz https://github.com/elm/compiler/releases/download/0.19.0/binary-for-linux-64-bit.gz
RUN gunzip /bin/elm.gz
RUN chmod +x /bin/elm
RUN npm install -g elm-format elm-test uglify-js@3.4.7