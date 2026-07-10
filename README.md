# 📸 Linux Mint Snapshot

**A one-click, bootable 1:1 clone of your running Linux Mint installation.**
Similar to what "MX Snapshot" does on MX Linux — this brings the same idea
to Linux Mint, which doesn't have an equivalent tool built in.

Published by Gilbert Rikus · Free and open source (GPL-3.0) · No ads, no accounts.

*[Deutsche Version / German version: README.de.md](README.de.md)*

---

## What it does

- **Creates a bootable ISO** of your running Linux Mint system with one click — plain-language progress, no terminal in sight.
- **Always a 1:1 clone**: your account, settings and saved logins are included, so the result works exactly like your original once installed. Large, disposable folders (VMs, Steam, Flatpak data) can be excluded via checkboxes to keep the ISO smaller.
- **Write to USB** via Linux Mint's own image writer.
- **Built-in bit-by-bit USB verification** — no guessing whether the stick is good.
- **The live stick boots straight into your own account and language** — no generic placeholder user.
- **Boots with Secure Boot enabled** — the ISO carries the Microsoft-signed shim + Canonical-signed GRUB chain, so it starts on modern PCs (e.g. with a Windows dual-boot) *without* turning Secure Boot off. Works with it on or off.
- **"Install System" icon right on the live desktop** (powered by Calamares) does a full 1:1 takeover: no user-creation step, no re-entering language/timezone/keyboard — it's all already yours.
- **German / English GUI**, chosen automatically from your system language.

## Requirements

| | |
|---|---|
| OS | Linux Mint 22.x (Cinnamon tested), x86_64 |
| Disk space | ~2× your installed system size, free |
| Internet | only for the one-time first-run setup |
| Secure Boot | **supported** — signed shim + GRUB chain (Microsoft/Canonical); boots with Secure Boot on *or* off, no BIOS changes needed |

## Getting started

1. Download or clone this repository.
2. Run `python3 linux-mint-snapshot.py` (or double-click it in your file manager and choose "Run").
3. On first start, the app checks what's missing (mainly the `refractasnapshot` engine, not in Mint's default repos) and offers to install it — one password prompt, a few minutes.
4. Click **"Create snapshot now"**. Full step-by-step instructions: **[GUIDE.md](GUIDE.md)** (English) / **[ANLEITUNG.md](ANLEITUNG.md)** (Deutsch).

## Under the hood & credits

Built on top of proven, existing tools — this project just wires them together with a friendly GUI:

- **[Refracta](https://sourceforge.net/projects/refracta/)** (refractasnapshot / refractainstaller) — the actual snapshot/ISO-building engine.
- **Debian `live-boot` / `live-config`** — the live-boot machinery.
- **[Calamares](https://calamares.io/)** — the graphical installer, with a custom 1:1-clone configuration (no user/locale/keyboard pages — everything comes from your clone).

Along the way this app works around a few real-world traps: the live user silently failing to get created when its usual UID is already taken by the cloned account, an active autologin surviving into the live session, and English-only boot menus regardless of system language.

## License

GPL-3.0 — free to use, study, share and modify, forever. See [LICENSE](LICENSE).
