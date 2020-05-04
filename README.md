### How to install

Copy and paste this script to `/etc/NetworkManager/dispatcher.d`

Than make it executable `chmod +x /etc/NetworkManager/dispatcher.d/set-vpn-routes.sh`

Make the list of ip-addresses in /opt folder

Enable the system-networkd service on startup  `systemctl enable systemd-networkd`

Copy the network unit file to `/etc/systemd/netowork`

Reboot your PC and connect to any SoftetherVPN Server with standard client.

If you will disconnect from your server, than it will conflict with your default routes. So you need to diconnect in NetworkManager too after disconnecting from SoftetherVPN Server.

Or just use an OpenVPN client with Softether ;-)