# gluetun-qbittorrent Port Manager
Automatically updates the listening port for qbittorrent to the port forwarded by [Gluetun](https://github.com/qdm12/gluetun/).

This project is a fork of [SnoringDragon's gluetun-qbittorrent-port-manager](https://github.com/SnoringDragon/gluetun-qbittorrent-port-manager), and adds:

* An optional timeout to inotifywait in order to periodically check for changes to the forwarded_port file.
* Only update the port if it has changed.
* Build script to create the docker image without Makefile.

## Description
[Gluetun](https://github.com/qdm12/gluetun/) has the ability to forward ports for supported VPN providers, 
but qbittorrent does not have the ability to update its listening port dynamically.
Because of this, I wrote this short script available as a docker container which automatically detects changes to the 
forwarded_port file created by [Gluetun](https://github.com/qdm12/gluetun/) and updates the qbittorrent's listening port.

## Setup
First, ensure you are able to successfully connect qbittorrent to the forwarded port manually (can be seen by a green globe at the bottom of the WebUI).

Then add a mounted volume to [Gluetun](https://github.com/qdm12/gluetun/) (e.g. /yourfolder:/tmp/gluetun).

Finally, insert the template in `docker-compose.yml` into your docker-compose containing gluetun, substituting the default values for your own.
