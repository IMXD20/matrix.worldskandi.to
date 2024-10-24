export DEBIAN_FRONTEND=noninteractive

apt update
apt install -y lsb-release wget apt-transport-https

wget -O /usr/share/keyrings/matrix-org-archive-keyring.gpg https://packages.matrix.org/debian/matrix-org-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/matrix-org-archive-keyring.gpg] https://packages.matrix.org/debian/ $(lsb_release -cs) main prerelease" |
    tee /etc/apt/sources.list.d/matrix-org.list
apt update
apt install matrix-synapse-py3 -y
