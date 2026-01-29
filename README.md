# DevHub

DevHub is a desktop app that makes remote dev services feel local — with **full browser windows per service**, **SSH port forwards managed for you**, and **no VPN required**.

![DevHub demo](./demo.png)

---

## The problem it solves

Working on remote hosts usually means:
- remembering `ssh -L` commands
- juggling port numbers
- losing sessions when tunnels drop
- sharing one browser session across multiple services

DevHub removes all of that. You select a host, add a port, and DevHub opens the service in its own full WebView window — with cookies, auth, WebSockets, and storage intact.

---

## Why I built it

I wanted a workflow where **services are first‑class**, not just terminals and files. VS Code is great for code, but it still leaves you managing tunnels and services manually. DevHub makes the **service layer** effortless.

Best use: run **code-server** on your remote host and open it in DevHub. Everything runs remotely, but it’s **managed locally** with clean, isolated windows.

---

## How it works (high level)

- Hosts come from your `~/.ssh/config` (including ProxyJump/ProxyCommand)
- Each service (port + protocol + alias) gets its **own SSH forward**
- Each service opens in its **own WebView window**
- DevHub keeps tunnels alive and restores them if they drop
- **No VPN** — just standard SSH

---

## DevHub vs VS Code

**VS Code** is workspace‑oriented: files, repos, editors.  
**DevHub** is service‑oriented: dashboards, APIs, code-server, admin UIs.

They are complementary:
- Use VS Code to edit code
- Use DevHub to open and manage the services that code runs

---

## Key features

- **Full web experience** per service (no iframe)
- **One SSH forward per service** for isolation and stability
- **Auto‑reconnect** for dropped tunnels
- **SSH terminal per host** with shared tunnels and status footer
- **Quick URLs**: open and reuse full webviews without a host
- **Tray menu** for quick access to active sessions
- **No VPN required**
- **Best with code-server**: run remote, manage locally

---

## Quick start

Requirements:
- macOS (primary), Windows supported via Electron Builder
- SSH config with named hosts (`~/.ssh/config`)

Use:
1. Launch DevHub.
2. Pick a host from `~/.ssh/config`.
3. Add a service (HTTP/HTTPS + port + optional alias).
4. The service opens in its own window with its own tunnel.
5. Re‑click to reuse the same window/session.

---

## Changelog

See `CHANGELOG.md`.
