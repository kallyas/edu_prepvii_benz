FROM gitpod/workspace-full
USER gitpod

RUN sudo apt-get update && \
    sudo apt-get upgrade

# set the zsh theme 
ENV ZSH_THEME cloud


#install NG CLI
SHELL ["/bin/bash", "-o", "pipefail", "-c"]
RUN npm i npm -g

RUN wget https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh -O - | zsh

RUN curl https://cli-assets.heroku.com/install.sh | sh