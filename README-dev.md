# 🧠 Developer Notes: Host Memory & RAM Planning for Splunk Lab VM

This file documents how to check available memory on the Windows host machine and how much RAM to allocate for the Splunk + BOTS v3 lab VM in VirtualBox.

---

## 🪟 How to Check Host Memory (Windows)

### Option 1: Task Manager
1. Press `Ctrl + Shift + Esc` to open Task Manager
2. Click the **Performance** tab
3. Select **Memory** on the left
4. Review:
   - **Total RAM** (top right)
   - **Available RAM** (bottom left)

### Option 2: System Information
1. Press `Windows + R`, type `msinfo32`, and hit Enter
2. Look for:
   - **Installed Physical Memory (RAM)**
   - **Available Physical Memory**

---

## 🧱 Recommended RAM for Splunk Lab VM

| Use Case              | RAM (MB)     | Notes |
|-----------------------|--------------|-------|
| Basic Splunk install  | 2048 MB      | Will run, but may be sluggish with large datasets |
| BOTS v3 lab           | 4096–8192 MB | Ideal for indexing, searching, and workshop use |
| Multi-user workshop   | 8192–12288 MB| For smooth performance with multiple analysts or heavy queries |

> 💡 With 21 GB available on host, allocating **8192 MB (8 GB)** to the VM is safe and recommended.

---

## 🧪 Notes

- RAM can be adjusted in VirtualBox under **Settings > System > Motherboard > Base Memory**
- If host performance suffers, reduce VM RAM and enable swap inside Debian
- This file is for internal planning—end users will receive a separate `README.md` with simplified instructions

---

## 🧮 Host CPU Info & VM Allocation

### How to Check Host CPU Cores (Windows)

#### Option 1: Task Manager
1. Press `Ctrl + Shift + Esc` to open Task Manager
2. Click the **Performance** tab
3. Select **CPU** on the left
4. Look for:
   - **Cores** (bottom right)
   - **Logical processors** (if Hyper-Threading is enabled)

#### Option 2: System Information
1. Press `Windows + R`, type `msinfo32`, and hit Enter
2. Look for:
   - **Processor** → shows model and core count

---

### Recommended CPU Allocation for Splunk Lab VM

| Use Case              | vCPUs | Notes |
|-----------------------|-------|-------|
| Bare minimum          | 1     | Splunk will run, but indexing and searches will be slow |
| Comfortable lab setup | 2     | Good balance for BOTS v3 and light querying |
| Snappy performance    | 4     | Ideal for faster indexing and smoother UI |
| Multi-user workshop   | 6     | Great for simulating multiple analysts or heavy search load |

> 💡 With **16 cores available**, allocating **4–6 vCPUs** to your VM is safe and recommended. You’ll still have plenty of headroom for your host OS and other apps.

## 💾 How to Check Host Disk Space (Windows)

Before selecting the virtual disk size for your VM, it's helpful to know how much free space your host system has available.

### Option 1: File Explorer
1. Open **File Explorer**
2. Click **This PC** in the sidebar
3. Look under **Devices and drives**
4. Check the **Available space** on your main drive (usually `C:`)

### Option 2: Settings
1. Press `Windows + I` to open Settings
2. Go to **System > Storage**
3. Review available space under **Local Disk (C:)**

> 💡 For a 20 GB dynamically allocated VM, aim to have at least **30–40 GB free** on your host to allow for growth, snapshots, and compression overhead.

