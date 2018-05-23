FROM ubuntu

RUN apt-get update && apt-get -y install python2.7 \
                                 python-gtk2 \
                                 python-gtksourceview2 \
                                 p7zip-full \
                                 python-dbus \
                                 python-enchant \
                                 python-chardet \
                                 wget

RUN wget http://www.giuspen.com/software/cherrytree-0.38.4.tar.xz
RUN tar xfv cherrytree-0.38.4.tar.xz

ENTRYPOINT ["/cherrytree-0.38.4/cherrytree"]
