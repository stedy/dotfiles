#start with GPG key for latest R
echo "deb http://lib.stat.cmu.edu/R/CRAN/bin/linux/ubuntu trusty/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver pgp.mit.edu --recv-key 51716619E084DAB9
gpg -a --export 51716619E084DAB9 > cran.asc
sudo apt-key add cran.asc
sudo rm cran.asc

sudo apt-get update -qq
sudo apt-get install -y -qq ubuntu-dev-tools gdebi-core libapparmor1 psmisc libtool autoconf automake uuid-dev octave

#python dependent installs
sudo apt-get install -y -qq python-dev python-scipy python-numpy python-matplotlib python-pandas python-nose python-sympy python-scikits.learn
sudo apt-get install libxml2-dev libxslt1-dev
sudo apt-get install -qq python-pip
sudo pip install BeautifulSoup

#R dependent installs
sudo apt-get install -y -qq r-base r-base-dev
sudo apt-get install littler
sudo apt-get install openjdk-7-*
sudo R CMD javareconf
sudo apt-get install libcurl4-openssl-dev

sudo r -e 'install.packages(c("dplyr","XML", "tm"), repos = "http://cran.case.edu")'

#Utils
sudo apt-get install -y -qq s3cmd htop

#vim specific
su ubuntu
cp .vimrc ..
mkdir ~/.vim
mkdir ~/.vim/backup
