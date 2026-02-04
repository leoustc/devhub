# Changelog

## 2.7.3

- Sidebar clock (HH:MM:SS) in the title row.
- Tmux session now shared per host (single session per group).

## 2.7.2

- Added **tmux** entry per host (open persistent sessions via terminal tabs).

## 2.7.0

- Main window redesigned: left sidebar + integrated SSH terminal tabs.
- Sidebar filters for protocol (SSH/HTTP/HTTPS) with auto-expand on match.
- Collapsible Groups and Quick URLs sections.
- Terminal tabs resize fixes + hidden tab scrollbar.
- Stronger SSH keepalive defaults (honors SSH config when set).

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
