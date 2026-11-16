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

This approach avoids storing Splunk credentials in scripts and remains compatible when Splunk updates its download portal.

