# 🛡️ DIY DPN Router on an Old Laptop

![Platform](https://img.shields.io/badge/platform-Windows-blue)
![Type](https://img.shields.io/badge/type-DIY%20VPN-success)
![Status](https://img.shields.io/badge/status-active-success)

> **DIY VPN Wi-Fi system with a dual-network setup.**

Turn an old Windows laptop into a home VPN gateway that bypasses website restrictions in Russia using any VPN client (Outline, Clash, Amnezia, WireGuard, etc.) — with a **second router broadcasting foreign Wi-Fi** for the devices that need it.

**🌐 [English](#-english)  ·  [Русский](#-русский)**

<p align="center">
  <img src="https://github.com/user-attachments/assets/35a96786-236e-45b7-924e-6d65679be3fa" alt="DPN Router Diagram" width="800">
</p>

---

## 🇬🇧 English

### 🔧 What's Implemented

- 🌐 **Dual-network setup** — one network for smart home & state services, one for YouTube / Telegram / Netflix.
- 🧠 **VPN client** — runs on the Windows laptop (Outline shown as an example; any client works).
- 📡 **Foreign Wi-Fi** — broadcast via a secondary Huawei router.
- 🔋 **Always-on** — full protection from sleep, hibernation, and shutdown.

### 🚀 Quick Start

1. Install **any VPN client** *(Outline, Clash, v2rayN, Amnezia, etc.)* on the laptop.
2. Connect the laptop to the main router (Keenetic) via Ethernet.
3. Share the VPN connection through the second Ethernet port to the Huawei router.
4. Apply the `powercfg` commands from [`no_sleep_forever.md`](no_sleep_forever.md) to prevent sleep.
5. **Done!** 🚀 The Huawei router now broadcasts foreign internet.

### 🔒 How It Works

- **Windows ICS (Internet Connection Sharing)** shares the VPN tunnel over Ethernet.
- The **Huawei router** receives NAT from the VPN tunnel.
- **Every device** connected to the Huawei gets a foreign IP (e.g. Netherlands).

### 📁 Contents

| File | Description |
|------|-------------|
| [`no_sleep_forever.md`](no_sleep_forever.md) | Commands to disable sleep, hibernation, and display timeout |
| [`outline-setup.md`](outline-setup.md) | Full setup instructions for Outline VPN (reference) |
| [`requirements.md`](requirements.md) | Everything you need to get the project running |

### 🐞 Troubleshooting

| Problem | Fix |
|---------|-----|
| No internet on Huawei devices | Make sure ICS is enabled on the **VPN adapter**, not the physical NIC |
| Connection drops overnight | Re-check the `powercfg` steps — laptop is still sleeping |
| ICS resets after reboot | Windows sometimes disables ICS on restart; toggle sharing off/on |

---

## 🇷🇺 Русский

### 🔧 Что реализовано

- 🌐 **Две сети** — одна для умного дома и госуслуг, вторая для YouTube / Telegram / Netflix.
- 🧠 **VPN-клиент** — работает на ноутбуке с Windows (в примере — Outline, но подойдёт любой клиент).
- 📡 **Зарубежный Wi-Fi** — раздаётся через второй роутер Huawei.
- 🔋 **Всегда онлайн** — полная защита от сна, гибернации и выключения.

### 🚀 Быстрый старт

1. Установи **любой VPN-клиент** *(Outline, Clash, v2rayN, Amnezia и т.д.)* на ноутбук.
2. Подключи ноутбук к основному роутеру (Keenetic) по Ethernet.
3. Расшарь VPN-соединение через второй Ethernet-порт на роутер Huawei.
4. Примени команды `powercfg` из [`no_sleep_forever.md`](no_sleep_forever.md), чтобы отключить сон.
5. **Готово!** 🚀 Huawei раздаёт зарубежный интернет.

### 🔒 Как это работает

- **Windows ICS (общий доступ к интернету)** раздаёт VPN-туннель по Ethernet.
- **Роутер Huawei** получает NAT из VPN-туннеля.
- **Все устройства** за Huawei получают зарубежный IP (например, Нидерланды).

### 📁 Состав репозитория

| Файл | Описание |
|------|----------|
| [`no_sleep_forever.md`](no_sleep_forever.md) | Команды для отключения сна, гибернации и таймаута экрана |
| [`outline-setup.md`](outline-setup.md) | Полная инструкция по настройке Outline VPN (для примера) |
| [`requirements.md`](requirements.md) | Всё необходимое для запуска проекта |

### 🐞 Если что-то не работает

| Проблема | Решение |
|----------|---------|
| Нет интернета на устройствах за Huawei | Проверь, что ICS включён на **VPN-адаптере**, а не на физической сетевой карте |
| Соединение падает ночью | Перепроверь шаги `powercfg` — ноутбук всё ещё уходит в сон |
| ICS сбрасывается после перезагрузки | Windows иногда выключает ICS при рестарте; выключи и снова включи общий доступ |

---

<div align="center">

**If you found this useful, consider leaving a ⭐ — it helps a lot!**

**Если было полезно — поставь ⭐, это очень помогает!**

</div>
