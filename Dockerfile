FROM ruby
MAINTAINER "Ruby Geckodriver"

#Instalar o browser Firefox
RUN mkdir /opt/firefox
RUN apt-get update -qqy
RUN wget -O /tmp/firefox.tar.bz2 "https://download-installer.cdn.mozilla.net/pub/firefox/releases/65.0/linux-x86_64/en-US/firefox-65.0.tar.bz2"
RUN tar -C /opt -xjf /tmp/firefox.tar.bz2
RUN ln -s /opt/firefox/firefox /usr/bin/firefox
RUN apt-get -qqy install libgtk-3-dev
RUN apt-get install libdbus-glib-1-2

# Instalar o driver do Firefox (Geckodriver)
RUN gem install geckodriver-helper -v 0.23.0 && gecko_updater

#Criar pasta para copiar o projeto para dentro do container
RUN mkdir automationpractice
COPY . /automationpractice
WORKDIR /automationpractice

#Instalar lib de gerenciamento da gems
RUN gem install bundler
RUN bundle

#Executar o projeto
CMD ["cucumber"]
