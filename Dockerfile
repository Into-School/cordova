FROM circleci/android:api-29-ndk
RUN sudo apt remove cmdtest -y
RUN sudo apt-get update 
RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
RUN sudo apt-get install gradle -y
RUN sudo apt-get install -y --no-install-recommends apt-utils
RUN sudo chmod 0700 /var/lib/apt/lists/partial
RUN sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
RUN sudo apt-get install -y nodejs
RUN sudo apt-get install -y yarn
RUN sudo npm install -g webpack
RUN sudo npm install -g cordova
