## Configuring Firewall with UFW or Iptables

### 1️⃣ Using UFW (Uncomplicated Firewall)

UFW is an easy-to-use firewall management tool that simplifies configuring iptables.

#### Step 1: Install UFW (if not installed)

```bash
sudo apt install ufw  # For Ubuntu/Debian
```

#### Step 2: Allow SSH Connections (so you don't lock yourself out)

```bash
sudo ufw allow OpenSSH  # Ubuntu/Debian
```

#### Step 3: Enable UFW

```bash
sudo ufw enable
```

#### Step 4: Check UFW Status

```bash
sudo ufw status verbose
```
