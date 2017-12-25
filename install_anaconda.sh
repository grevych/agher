# Install anaconda

# wget https://repo.continuum.io/archive/Anaconda3-5.0.1-Linux-x86_64.sh -O ~/anaconda.sh
# bash ~/anaconda.sh -b -p $HOME/anaconda
wget https://repo.continuum.io/miniconda/Miniconda3-3.7.0-Linux-x86_64.sh -O ~/miniconda.sh
bash ~/miniconda.sh -b -p $HOME/miniconda

# Activate on every script that needs
# export PATH="$HOME/anaconda/bin:$PATH"
# source $HOME/anaconda/bin/activate agher

export PATH="$HOME/miniconda/bin:$PATH"
source $HOME/miniconda/bin/activate agher

conda create --name agher python=3.5

ls $HOME/miniconda/envs/agher/lib
cd $HOME/miniconda/envs/agher/lib/python3.5/site-packages
ln -s /usr/local/lib/python3.5/site-packages/cv2.so cv2.so

conda install --name agher numpy jupyter
