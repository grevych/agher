
# set at dockerfile
# export PATH="$HOME/anaconda/bin:$PATH"
# source $HOME/anaconda/bin/activate agher

export PATH="$HOME/miniconda/bin:$PATH"
source $HOME/miniconda/bin/activate agher

jupyter notebook --ip * --allow-root --no-browser

