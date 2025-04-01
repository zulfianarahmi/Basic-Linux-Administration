## Creating a New User & Granting Permissions (sudo, groups)

### 1️⃣ Create a New User

Use the command:

```bash
sudo adduser username
```

Example:

```bash
sudo adduser zulfiana
```

You will be prompted to set a password & provide user information (can be skipped).

---

### 2️⃣ Grant Sudo Access

To allow the user to execute admin commands, add them to the **sudo** group (for Ubuntu/Debian) or **wheel** group (for CentOS):

```bash
sudo usermod -aG sudo username  # Ubuntu/Debian
sudo usermod -aG wheel username  # CentOS
```

Check if the user has sudo privileges:

```bash
groups username
```

---

### 3️⃣ Test Logging in as the New User

Exit from the root session:

```bash
exit
```

Log in with the new user:

```bash
ssh username@server-ip
```

Test if sudo works:

```bash
sudo whoami
```

If the output is `root`, the user has sudo access.

---

### 4️⃣ Add User to Other Groups (Optional)

For example, to add the user to the `docker` or `www-data` group:

```bash
sudo usermod -aG docker username
sudo usermod -aG www-data username
```

Check the user's group list:

```bash
groups username
```

---

## ✅ Summary

- `adduser` → Create a new user
- `usermod -aG sudo username` → Add user to the sudo group
- `exit` → Logout from root
- `ssh username@server-ip` → Log in as the new user
- `sudo whoami` → Check if the user can execut
