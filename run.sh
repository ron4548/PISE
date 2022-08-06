#!/bin/sh

cd PISEServer
./venv/bin/python -m $1 &
cd ../
sleep 4

cd PISEClient
mvn -q exec:java -Dexec.mainClass="com.pise.client.PiseLearner"