#start with GPG key for latest R
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt install --no-install-recommends r-base

#python dependent installs
sudo apt install -y -qq python-dev python-scipy python-numpy python-matplotlib python-pandas python-nose python-sympy
sudo apt install libxml2-dev libxslt1-dev
sudo apt install -qq python-pip
sudo pip install -U scikit-learn

#R dependent installs
sudo apt install -y -qq r-base
sudo apt install littler
sudo apt install openjdk-8-*
sudo R CMD javareconf
sudo apt-get install libcurl4-openssl-dev

sudo r -e 'install.packages(c("dplyr","ggplot2"), repos = "https://cran.case.edu")'

#Utils
sudo apt-get install -y -qq s3cmd htop

#vim specific
su ubuntu
cp .vimrc ..
mkdir ~/.vim
mkdir ~/.vim/backup
