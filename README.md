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
