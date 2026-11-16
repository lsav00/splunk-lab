## Download Splunk

1. Sign in to Splunk.com.
2. Navigate to Splunk Enterprise Downloads.
3. Select the correct package for your OS.
4. Click **Copy wget link**.
5. Paste and run the command on your Azure VM.

Example:

```bash
wget -O splunk-10.x.x-linux-amd64.deb "<download-url>"
```



## Recommended Azure VM Configuration

If you plan to install Splunk Enterprise in Microsoft Azure, the following configuration provides a good balance of performance and cost for lab environments, BOTS datasets, and experimentation with tools such as Claude Code.

### Recommended Configuration

| Setting | Recommendation |
|----------|---------------|
| VM Size | **D4alds_v6** |
| Operating System | **Ubuntu Server 24.04 LTS** |
| Authentication | **SSH Key Authentication** |
| OS Disk | **64 GB Minimum** |
| vCPUs | **4** |
| Memory | **8 GB RAM** |

### Why This Configuration?

This configuration provides sufficient resources for:

- Splunk Enterprise installation
- BOTS dataset ingestion and searching
- Git and development tools
- Claude Code experimentation
- Playbook and knowledge-base development

Using SSH keys instead of passwords is recommended for improved security and easier administration.

### Azure Tips

- Create a dedicated Resource Group for the lab.
- Open TCP port **22** for SSH access.
- Open TCP port **8000** for Splunk Web access.
- Stop (deallocate) the VM when not in use to reduce Azure costs.
- Monitor disk utilization after importing large datasets such as BOTS.

### Example Resource Group Name

## Azure VM Notes

This lab was built using the following Azure configuration:

- VM Size: **D4alds\_v6**
- Operating System: **Ubuntu Server 24.04 LTS**
- Authentication: **SSH Key Authentication**
- OS Disk: **64 GB Minimum**

### Splunk Package Selection

Because Ubuntu Server is a Debian\-based Linux distribution, the recommended Splunk installer package is:

**.deb**

Package selection guide:

- **.deb** → Ubuntu, Lubuntu, Debian
- **.rpm** → Red Hat, Rocky Linux, AlmaLinux, CentOS
- **.tgz** → Manual installation on supported Linux distributions

When downloading Splunk Enterprise from Splunk Downloads, select the **64\-bit Linux .deb package** for this lab environment.

Example:

splunk\-x.x.x\-linux\-amd64.deb

Using the native package format simplifies installation and aligns with Ubuntu package management.



```text
rg-splunk-claude-lab
```
