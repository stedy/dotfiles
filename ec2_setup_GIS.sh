#start with GPG key for latest R
echo "deb http://lib.stat.cmu.edu/R/CRAN/bin/linux/ubuntu xenial/" | sudo tee -a /etc/apt/sources.list
gpg --keyserver pgp.mit.edu --recv-key 51716619E084DAB9
gpg -a --export 51716619E084DAB9 > cran.asc
sudo apt-key add cran.asc
sudo rm cran.asc

sudo add-apt-repository -y ppa:ubuntugis/ppa
sudo apt-get update -qq & sudo apt-get upgrade -y -qq

sudo apt-get install gdal-bin libgdal1-dev libgdal-dev libgeos-c1 libproj-dev

#R dependent installs
sudo apt-get install -y -qq r-base r-base-dev
sudo apt-get install -y littler

sudo r -e 'install.packages(c("dplyr","rgdal", "sp", "rgeos", "geojsonio", "leaflet"), repos = "http://cran.case.edu")'

#Utils
sudo apt-get install -y -qq s3cmd htop

#install pandoc
sudo apt-get install pandoc

#vim specific
su ubuntu
cp .vimrc ..
mkdir ~/.vim
mkdir ~/.vim/backup
