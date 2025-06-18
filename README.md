# home-dpn-router
DIY VPN Wi-Fi system with dual network setup
# 🛡️ DIY DPN Router on an Old Laptop

A project for building a home VPN server on an old Windows laptop to bypass website restrictions in Russia using Outline VPN — with a second router for foreign Wi-Fi.

## 🔧 What’s Implemented

- 🌐 Dual-network setup: one for Smart Home & state services, one for YouTube / Telegram / Netflix
- 🧠 Outline VPN running on a Windows laptop
- 📡 Foreign Wi-Fi via Huawei router
- 🔋 Full protection from sleep / hibernation / shutdown

## 🚀 Quick Start

1. Install Outline VPN (or Clash if you have your own config)
2. Connect your PC to the main router (Keenetic) via Ethernet
3. Share VPN through the second Ethernet port to Huawei
4. Run `no_sleep_forever.bat` as administrator
5. Boom — Huawei now broadcasts foreign internet 🚀

## 🖼 Diagram

![image](https://github.com/user-attachments/assets/35a96786-236e-45b7-924e-6d65679be3fa)

## 🔒 How It Works

- Windows ICS (Internet Connection Sharing) shares VPN tunnel over Ethernet
- Huawei router receives NAT from Outline tunnel
- All devices connected to Huawei get foreign IP (e.g., Netherlands)

## 📁 Contents

- `no_sleep_forever` – disables sleep, hibernation, display timeout
- `outline-setup.md` – full setup instructions for Outline VPN
- `requirements.md` – Everything you need to get the project up and running

## 🧠 Author

**CraftStick**  
Built with soul and logic ❤️
