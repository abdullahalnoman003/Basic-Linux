# 🌐 Module 07 — Networking

> **Goal:** Understand and manage Linux networking — IP, DNS, connections, SSH, and firewalls.

---

## ✅ You'll learn

- Inspect network interfaces and IP addresses
- Test connectivity (`ping`, `curl`, `netstat`, `ss`)
- Understand DNS and resolvers
- Connect to remote machines with **SSH**
- Transfer files (`scp`, `rsync`)
- Configure a firewall (`ufw`)

---

## 🔌 Network interfaces & IP

```bash
ip addr          # list interfaces and IP addresses
ip link show     # interfaces (up/down states)
hostname -I      # show this machine's IP address(es)
hostname         # this machine's name
```

Common interfaces:
- `lo` — the loopback interface (always `127.0.0.1`, i.e. "this machine")
- `eth0` / `ens3` — Ethernet
- `wlan0` — Wi-Fi
- `tun0` — VPN tunnel

**Private IP ranges** you'll often see on home/office networks:
`192.168.x.x`, `10.x.x.x`, `172.16–31.x.x`.

---

## 📡 Testing connectivity

```bash
ping -c 4 google.com      # send 4 ICMP pings
ping -c 4 8.8.8.8         # ping an IP directly
curl -I https://example.com   # fetch HTTP headers (great for testing a server)
curl https://example.com      # fetch the page body
wget -O index.html https://example.com   # download a file
ss -tulnp                 # list listening ports & services
netstat -tuln             # older alternative to ss
```

Port numbers you'll recognize:
- `22` SSH, `80` HTTP, `443` HTTPS, `53` DNS, `3306` MySQL, `5432` PostgreSQL

---

## 🧩 DNS

**DNS** converts human names (`example.com`) into IP addresses.

```bash
nslookup example.com       # ask DNS for the IP
dig example.com            # detailed DNS lookup
cat /etc/resolv.conf       # which DNS servers your machine uses
```

Test DNS resolution live:

```
$ ping -c 2 example.com
PING example.com (93.184.216.34) ...
```

> 💡 If a name resolves but `ping` times out, the host may be blocking ICMP — that's normal and
> doesn't mean DNS is broken.

---

## 🔐 SSH — secure remote access

SSH lets you log into a remote Linux machine over an encrypted connection. This is how admins manage
servers.

```bash
ssh user@192.168.1.50            # connect (then type password)
ssh -p 2222 user@host            # connect on a custom port
ssh-keygen                       # generate your SSH key pair
ssh-copy-id user@host            # copy public key (passwordless login next time)
```

**Key-based auth** (no passwords) — the professional setup:

```bash
ssh-keygen -t ed25519           # create ~/.ssh/id_ed25519 (private) + .pub (public)
ssh-copy-id alice@server        # install your public key on the server
ssh alice@server                # now it logs in without a password
```

> 🔑 Your **private key** never leaves your machine. Only the **public key** goes on servers.

### Transferring files

```bash
scp file.txt alice@server:/home/alice/    # copy file to a remote machine
scp alice@server:/path/file.txt .        # copy file from remote to here
rsync -av folder/ alice@server:/folder/  # sync folders (great for backups)
```

---

## 🧱 Firewall — `ufw`

`ufw` (Uncomplicated Firewall) controls which ports are open to the network.

```bash
sudo ufw status                 # current firewall rules
sudo ufw enable                 # turn firewall on
sudo ufw allow 22/tcp           # allow SSH
sudo ufw allow 80/tcp           # allow HTTP
sudo ufw allow 443/tcp          # allow HTTPS
sudo ufw deny 23/tcp            # block telnet
sudo ufw status numbered        # show numbered rules
sudo ufw delete 3               # delete rule #3
```

> ⚠️ **Never** enable a firewall and lock yourself out of SSH (`port 22`) before allowing it.

---

## ✏️ Try it yourself

1. Show your machine's IP addresses with `ip addr`.
2. Ping `google.com` with exactly 4 packets.
3. Look up the IP of `example.com` with `nslookup`.
4. List listening ports with `ss -tulnp`.
5. Generate an SSH key pair with `ssh-keygen` and inspect `~/.ssh/`.

> For a real remote server to practice on, use a free cloud VM (see Module 00).

---

## 🎯 Check your understanding

1. What is the loopback address `127.0.0.1`?
2. What does `curl` do?
3. What is SSH mainly used for?
4. Which two files make up an SSH key pair, and which one goes on the server?
5. What does `sudo ufw allow 22/tcp` do?

<details><summary>Click for answers</summary>

1. "This machine" — a network address that always refers to the local computer.
2. Transfers data to/from URLs (great for testing web servers).
3. Logging into / running commands on remote machines securely over an encrypted connection.
4. Private key (`id_ed25519`) stays with you; the **public key** (`.pub`) goes on the server.
5. Opens TCP port 22 (SSH) in the firewall.

</details>

---

**Next → [Module 08 — Automation](../08-Automation/README.md)**
