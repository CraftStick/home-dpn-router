# DIY DPN Router on an Old Laptop

[English](README.md) · [Русский](README.ru.md)

DIY VPN Wi-Fi system with a dual-network setup.

Turn an old Windows laptop into a home VPN gateway that bypasses website restrictions in Russia using any VPN client (Outline, Clash, Amnezia, WireGuard, etc.), with a second router broadcasting foreign Wi-Fi for the devices that need it.

<p align="center">
  <img src="https://github.com/user-attachments/assets/35a96786-236e-45b7-924e-6d65679be3fa" alt="DPN Router Diagram" width="800">
</p>

## Features

- **Dual-network setup** — one network for smart home & state services, one for YouTube / Telegram / Netflix.
- **VPN client** — runs on the Windows laptop (Outline shown as an example; any client works).
- **Foreign Wi-Fi** — broadcast via a secondary Huawei router.
- **Always-on** — full protection from sleep, hibernation and shutdown.

## Getting Started

1. Install any VPN client (Outline, Clash, v2rayN, Amnezia, etc.) on the laptop.
2. Connect the laptop to the main router (Keenetic) via Ethernet.
3. Share the VPN connection through the second Ethernet port to the Huawei router.
4. Apply the `powercfg` commands from [`no_sleep_forever.md`](no_sleep_forever.md) to prevent sleep.
5. Done! The Huawei router now broadcasts foreign internet.

## How It Works

- Windows ICS (Internet Connection Sharing) shares the VPN tunnel over Ethernet.
- The Huawei router receives NAT from the VPN tunnel.
- Every device connected to the Huawei gets a foreign IP (e.g. Netherlands).

## Project Structure

| File | Description |
|---|---|
| [`no_sleep_forever.md`](no_sleep_forever.md) | Commands to disable sleep, hibernation and display timeout |
| [`outline-setup.md`](outline-setup.md) | Full setup instructions for Outline VPN (reference) |
| [`requirements.md`](requirements.md) | Everything you need to get the project running |

## Troubleshooting

| Problem | Fix |
|---|---|
| No internet on Huawei devices | Make sure ICS is enabled on the VPN adapter, not the physical NIC |
| Connection drops overnight | Re-check the `powercfg` steps — laptop is still sleeping |
| ICS resets after reboot | Windows sometimes disables ICS on restart; toggle sharing off/on |
