#!/bin/sh

composer archive create -t dir -n .
composer network install --card PeerAdmin@hlfv1 --archiveFile chain_a@0.0.1.bna
composer network start --networkName chain_a --networkVersion 0.0.1 --networkAdmin admin --networkAdminEnrollSecret adminpw --card PeerAdmin@hlfv1 --file networkadmin.card
composer card import --file networkadmin.card
composer network ping --card admin@chain_a
composer-rest-server -c admin@chain_a -n never -u true -d LOG -w true