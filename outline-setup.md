# 🛠️ Outline VPN Setup Guide (Windows)

> **This guide helps you set up Outline VPN on a Windows-based PC server and share the connection via a second router.**

---

## 🔽 Step 1: Install Outline

1. Go to [https://getoutline.org](https://getoutline.org).
2. Download and install **Outline Manager** *(or Outline Client)*.
3. Open the app.

---

## 🔑 Step 2: Add VPN Server Access Key

1. In the app, click **"Add server"**.
2. Paste the access key you received *(from a friend or provider)*.
3. Wait until the connection is verified.

---

## 🌐 Step 3: Enable Internet Connection Sharing (ICS)

1. Open **Control Panel** → **Network and Sharing Center**.
2. Click **Change adapter settings** on the left.
3. Find the adapter named **Outline Tunnel** *(or similar)*.
4. Right-click on it → **Properties**.
5. Go to the **Sharing** tab.
6. Check this box:  
   ☑️ *Allow other network users to connect through this computer’s Internet connection*
7. Below that, choose from the dropdown:
   > ✅ Select the **Ethernet adapter** connected to your second router (e.g., Huawei).
8. Click **OK**.

---

## ⚙️ Step 4: Prevent Sleep or Hibernate

To ensure your PC server stays online 24/7, open **Command Prompt (cmd)** as Administrator and copy-paste the following commands. This will disable sleep, hibernation, and display timeouts:

```cmd
powercfg -change -standby-timeout-ac 0
powercfg -change -hibernate-timeout-ac 0
powercfg -hibernate off
powercfg -change -monitor-timeout-ac 0
