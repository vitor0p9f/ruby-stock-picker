FROM ruby:3.3-rc

WORKDIR /usr/app

COPY . /usr/app

RUN bundle install

ENTRYPOINT ["ruby", "stock_picker.rb"] 
