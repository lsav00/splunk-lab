## Downloading Splunk

Splunk Enterprise downloads require access to the Splunk download portal.

1. Sign in to Splunk.com.
2. Navigate to the Splunk Enterprise Downloads page.
3. Select the correct installer package for your operating system. 
    - **.deb** for Ubuntu, Lubuntu, Debian, and other Debian\-based distributions
    - **.rpm** for Red Hat, Rocky Linux, AlmaLinux, CentOS, and similar distributions
    - **.tgz** for manual installation on supported Linux distributions
4. Copy the download URL or the wget command provided by Splunk.
5. Run this script and paste the URL when prompted.

Example URL:

[https://download.splunk.com/products/splunk/releases/10.6.1.1/linux/splunk\-10.6.1.1\-b2ae2962645c\-linux\-amd64.deb](https://download.splunk.com/products/splunk/releases/10.6.1.1/linux/splunk-10.6.1.1-b2ae2962645c-linux-amd64.deb)

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

```text
rg-splunk-claude-lab
```
