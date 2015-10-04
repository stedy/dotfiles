#start with GPG key for latest R

echo "deb http://lib.stat.cmu.edu/R/CRAN/bin/linux/ubuntu precise/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver pgp.mit.edu --recv-key 51716619E084DAB9
gpg -a --export 51716619E084DAB9 > cran.asc
sudo apt-key add cran.asc
sudo rm cran.asc

sudo apt-get update -qq
sudo apt-get install -y -qq ubuntu-dev-tools gdebi-core libapparmor1 psmisc libtool autoconf automake uuid-dev git octave

sudo apt-get install -y -qq r-base r-base-dev

sudo apt-get install -y -qq python-dev python-scipy python-numpy python-matplotlib python-pandas python-nose python-sympy python-scikits.learn


