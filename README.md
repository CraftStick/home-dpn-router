# 🛡️ DIY DPN Router on an Old Laptop

> **DIY VPN Wi-Fi system with a dual network setup**

A project for building a home VPN server on an old Windows laptop to bypass website restrictions in Russia using any VPN client (Outline, Clash, Amnezia, WireGuard, etc.) — with a second router for foreign Wi-Fi.

---

## 🔧 What’s Implemented

* 🌐 **Dual-network setup:** One for Smart Home & state services, one for YouTube / Telegram / Netflix.
* 🧠 **VPN Client:** Running seamlessly on a Windows laptop (Outline is used as an example, but any client works).
* 📡 **Foreign Wi-Fi:** Broadcasted via a secondary Huawei router.
* 🔋 **Always-On protection:** Full protection from sleep, hibernation, and shutdown.

---

## 🚀 Quick Start

1. Install **any VPN client** *(Outline, Clash, v2rayN, Amnezia, etc.)*.
2. Connect your PC to the main router (Keenetic) via Ethernet.
3. Share the VPN connection through the second Ethernet port to the Huawei router.
4. Apply the powercfg commands from `no_sleep_forever.md` to prevent sleep.
5. **Boom!** 🚀 Huawei now broadcasts foreign internet.

---

## 🖼 Diagram

<p align="center">
  <img src="https://github.com/user-attachments/assets/35a96786-236e-45b7-924e-6d65679be3fa" alt="DPN Router Diagram" width="800">
</p>

---

## 🔒 How It Works

* **Windows ICS (Internet Connection Sharing)** shares the VPN tunnel over Ethernet.
* **Huawei router** receives NAT from the VPN tunnel.
* **All devices** connected to Huawei get a foreign IP (e.g., Netherlands).

---

## 📁 Contents

* `no_sleep_forever.md` — Commands to disable sleep, hibernation, and display timeout.
* `outline-setup.md` — Full setup instructions specifically for Outline VPN (as a reference).
* `requirements.md` — Everything you need to get the project up and running.

---

## 🧠 Author

**CraftStick** *Built with soul and logic* ❤️
