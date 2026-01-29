# Changelog

## 2.5.0

- Quick URLs: save/open standalone webviews without a host.
- Tray menu reorganized: Active Sessions vs Services + Quick Links.
- Search filter for SSH hosts.
- Reconnect tunnel action per port.
- ProxyCommand prompt per host with allowlist.

## 2.3.0

- ProxyCommand prompts per host with allowlist stored in status.
- Port tunnels target remote `localhost` by default (better for Docker).
- Reconnect tunnel action per port.
- Search filter for SSH hosts.
- Terminal footer refined for connection/tunnel metrics.

## 2.1.0

- SSH terminal shares the same connection as tunnels per host.
- Port forwards and webviews are reused per service.
- Tray menu lists active sessions, SSH terminals, restore groups, and alive tunnels.
- Terminal footer shows connection uptime, tunnel pairs, and traffic in/out.
- Improved reconnect handling when tunnels drop.

## 2.0.0

- Initial public release.
