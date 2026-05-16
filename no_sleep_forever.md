# 🔋 No Sleep Forever

> **Commands to disable sleep, hibernation, and display timeout on your Windows PC server.**

To ensure your server runs 24/7 without being interrupted by Windows power-saving features, run the following commands.

---

## 🚀 How to apply

1. Press `Win + S`, type **cmd**.
2. Right-click on **Command Prompt** and select **Run as administrator**.
3. Copy and paste the commands below, then press **Enter**:

```cmd
powercfg -change -standby-timeout-ac 0
powercfg -change -hibernate-timeout-ac 0
powercfg -hibernate off
powercfg -change -monitor-timeout-ac 0
