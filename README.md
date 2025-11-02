# Dummy Systemd Service
Long-running systemd service that only logs to a file.
[Roadmap.sh project page](https://roadmap.sh/projects/dummy-systemd-service)
## Installation
```
git clone https://github.com/ami-chuu/dummy-systemd-service
cd dummy-systemd-service
chmod +x setup.sh
./setup.sh
```
## Usage
```
# Interacting with the service
sudo systemctl start dummy
sudo systemctl stop dummy
sudo systemctl enable dummy
sudo systemctl disable dummy
sudo systemctl status dummy
# Check the logs
sudo journalctl -u dummy -f
```
