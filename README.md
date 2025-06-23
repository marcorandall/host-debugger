# 🐳 Host Debugger Container

A lightweight Ubuntu-based Docker container designed for system debugging, process inspection, and network diagnostics using host namespaces. Ideal for DevOps engineers, system administrators, and security analysts.

---

## 🚀 Features

- Access host **processes**, **network interfaces**, **IPC**, and **UTS namespaces**
- Uses `--pid=host`, `--net=host`, etc. for full visibility
- Comes with powerful debugging tools:
  - `htop`, `iproute2`, `net-tools`, `lsof`, `strace`, `dig`, and more
- Mount host logs and Docker socket for deeper inspection
- Easy to extend with custom tools and scripts

---

## 🧱 Repo Structure

```
.
├── Dockerfile                      # Container definition
├── tools/                          # Scripts that run inside the container
│   ├── check_network.sh
│   └── check_processes.sh
├── scripts/                        # Host-side helper scripts
│   └── run-or-start-host-debugger.sh
├── .github/workflows/             # GitHub Actions CI/CD
│   └── docker-build.yml
├── README.md
```

---

## ⚙️ Usage

### 1. Clone the Repo

```bash
git clone https://github.com/YOUR-ORG/host-debugger.git
cd host-debugger
```

### 2. Build the Docker Image

```bash
docker build -t host-debugger .
```

### 3. Start or Reuse the Container

```bash
./scripts/run-or-start-host-debugger.sh
```

---

## 🧪 From Inside the Container

Run any of the included tools:

```bash
/opt/tools/check_network.sh
/opt/tools/check_processes.sh
```

You can also run:

```bash
htop
netstat -tulnp
strace -p <pid>
dig google.com
```

---

## 📦 CI/CD with GitHub Actions

Every push to `main` triggers a GitHub Actions workflow to validate and build the Docker image.

See `.github/workflows/docker-build.yml`.

---

## ⚠️ Warning

This container **shares host namespaces** and mounts:
- `/var/log` (read-only host logs)
- `/var/run/docker.sock` (full access to Docker API)

**Do not use in untrusted or production environments** without proper isolation and review.

---

## 📄 License

MIT License. Use at your own risk.

