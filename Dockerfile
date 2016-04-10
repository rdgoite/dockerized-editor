FROM alpine
MAINTAINER rdgoite <rdgoite@gmail.com>

RUN apk update \
 && apk add vim

RUN adduser -D editor
USER editor

ADD vimrc /home/editor/.vimrc

VOLUME /home/editor
VOLUME /home/editor/workspace
WORKDIR /home/editor/workspace

ENTRYPOINT ["vim"]
CMD ["note.txt"]
