## Setting Up SSH Key Authentication for Security

### 1️⃣ Generate SSH Key on Your Local Machine

To generate an SSH key, use the following command:

```bash
ssh-keygen -t rsa -b 4096
```

This will create a public and private key pair in your `~/.ssh/` directory.

Example:

```bash
ls ~/.ssh
id_rsa  id_rsa.pub
```

The `id_rsa` is the private key, and `id_rsa.pub` is the public key.

---

### 2️⃣ Copy the Public Key to Your Server

Use the `ssh-copy-id` command to copy your public key to the server:

```bash
ssh-copy-id username@server-ip
```

This command will copy the `id_rsa.pub` content to the server's `~/.ssh/authorized_keys` file.

If `ssh-copy-id` is not available, you can do it manually by running:

```bash
scp ~/.ssh/id_rsa.pub username@server-ip:~/
```

Then, SSH into your server and append the public key:

```bash
mkdir -p ~/.ssh
cat ~/id_rsa.pub >> ~/.ssh/authorized_keys
chmod 600 ~/.ssh/authorized_keys
chmod 700 ~/.ssh
rm ~/id_rsa.pub
```

---

### 3️⃣ Test SSH Key Authentication

Exit from the server session:

```bash
exit
```

Now, try logging in again using the SSH key:

```bash
ssh username@server-ip
```

If you're logged in without being asked for a password, it means SSH key authentication is set up correctly.

---

### 4️⃣ Disable Password Authentication (Optional)

To further enhance security, you can disable password authentication on your server. Edit the SSH configuration file:

```bash
sudo nano /etc/ssh/sshd_config
```

Find the line:

```bash
PasswordAuthentication yes
```

Change it to:

```bash
PasswordAuthentication no
```

Save and exit (CTRL+X → Y → Enter), then restart SSH service:

```bash
sudo systemctl restart ssh
```

Now, you can only log in using the SSH key, making it more secure.

---

## ✅ Summary

- `ssh-keygen` → Generate SSH key pair
- `ssh-copy-id` → Copy public key to the server
- `cat ~/id_rsa.pub >> ~/.ssh/authorized_keys` → Manually add key to server
- `sudo nano /etc/ssh/sshd_config` → Edit SSH config to disable password login
- `systemctl restart ssh` → Restart SSH service

**SSH key authentication is now set up, and password-based login is disabled!**
