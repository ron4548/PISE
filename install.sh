#!/bin/sh
CYAN='\033[0;36m'
NC='\033[0m'

# Load submodules
printf "${CYAN}Initiating submodules...${NC}\n"
git submodule update --init --recursive --quiet

# prerequisites for the client
printf "${CYAN}Installing prerequisites...${NC}\n"
sudo apt --assume-yes -qq install openjdk-11-jre-headless maven graphviz python3 python3-venv

# Setup venv for server
printf "${CYAN}Creating a virtual environment for PISEServer...${NC}\n"
cd PISEServer
python3 -m venv venv
printf "${CYAN}Installing Python requirements...${NC}\n"
./venv/bin/pip install -q -r requirements.txt
cd ..

# Setup the client
cd PISEClient
printf "${CYAN}Installing client dependencies...${NC}\n"
mvn -q dependency:resolve
printf "${CYAN}Compiling client...${NC}\n"
mvn -q compile
cd ..