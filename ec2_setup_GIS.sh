#start with GPG key for latest R
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository "deb https://cloud.r-project.org/bin/linux/ubuntu $(lsb_release -cs)-cran40/"
sudo apt install --no-install-recommends r-base
sudo apt install r-base-dev

sudo add-apt-repository -y ppa:ubuntugis/ppa

#R dependent installs
sudo apt install gdal-bin libgdal-dev libudunits2-dev libprotobuf-dev libjq-dev libv8-dev protobuf-compiler

sudo apt install -y littler

sudo r -e 'install.packages(c("dplyr","rgdal", "rgeos", "geojsonio", "leaflet"), repos = "https://cran.case.edu")'

#Utils
sudo apt install -y s3cmd htop

#install pandoc
sudo apt install -y pandoc

#vim specific
su ubuntu
cp .vimrc ..
mkdir ~/.vim
mkdir ~/.vim/backup
