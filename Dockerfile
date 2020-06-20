FROM circleci/android:api-29-ndk
RUN sudo apt-get update 
RUN sudo apt-get install gradle -y
RUN sudo apt-get install -y --no-install-recommends apt-utils
RUN sudo chmod 0700 /var/lib/apt/lists/partial
RUN sudo curl -sL https://deb.nodesource.com/setup_12.x | sudo bash -
RUN sudo apt-get install -y nodejs
RUN sudo npm install npm@latest -g
RUN sudo npm install -g webpack
RUN sudo npm install -g webpack-cli
RUN sudo npm install -g yarn
RUN sudo npm install -g cordova
