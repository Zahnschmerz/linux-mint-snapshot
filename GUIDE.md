# Rikus Mintshot — Guide (English)

**Published by Gilbert Rikus · License: GPL-3 · free of charge**
*(Version and license text are always available in the app under „ℹ️ About".)*

This program creates a **bootable copy of your running Linux Mint system**
with one click — much like "MX Snapshot" does on MX Linux. Write the ISO to a
USB stick, boot any PC from it, and **install** your system permanently with a
double click.

**You decide how much comes along** — from the bare system to a full clone
including all your files. After installing, everything works as before —
nothing needs to be set up again.

---

## 1. What you need

| | |
|---|---|
| Operating system | Linux Mint 22.x (Cinnamon tested) |
| Free disk space | roughly **twice the size of your system** |
| USB stick | at least as big as the finished ISO |
| Internet | only for the one-time first setup |

---

## 2. Install the program

**Easiest — the ready-made package:**

1. Download `rikus-mintshot_*.deb` from the
   [Releases page](https://github.com/Zahnschmerz/rikus-mintshot/releases).
2. Double-click the file → your package manager opens → **"Install"**.
   *(Or in a terminal: `sudo apt install ./rikus-mintshot_*.deb`)*
3. Afterwards you'll find **Rikus Mintshot** in your **application menu**
   (with its own camera icon).

**Or from source:** unpack the folder and run `python3 rikus-mintshot.py`
(or double-click it and choose "Run").

**On the very first start** the program checks whether all building blocks are
present. If something is missing, the button **"🔧 Set up now"** appears:

- Click it → a list shows what will be installed.
- Confirm → your **password** is asked once (normal: system components need
  administrative rights).
- Setup takes a few minutes and ends with **"✅ Setup complete"** — done, this
  happens only once. This also installs the app into the system itself, so it is
  included in every snapshot (like mx-snapshot on MX Linux).

---

## 3. Create a snapshot (ISO)

### First: how much should come along?

In the main window you choose — with one click — between three options:

| Choice in the program | What's included | What it's for |
|---|---|---|
| **System (root) only**<br>*— bare, without your settings* | just the system itself — **no** home directory, no accounts, no data | a clean base you can **safely pass on to others** |
| ⭐ **System + my settings**<br>*— lean & ready to use (recommended)* | the system **plus your settings**: desktop, applications, mail, browser, saved logins — **without** the bulk (caches, downloads, pictures, videos, music) | **the recommended choice:** small, yet ready to use — everything set up the way you know it |
| **System + Home**<br>*— everything (your files, mail & account)* | **truly everything** — a full 1:1 clone including all your files | a complete backup, or moving to a new machine |

**If you're unsure:** take the middle option (⭐ **System + my settings**).
It is preselected and right for most people.

> 🔒 **Important for the lower two options:** As soon as your settings or files
> come along, the ISO contains **your account and your saved credentials**. Keep
> such sticks in a safe place and **never hand them to strangers!** Only
> **"System (root) only"** is free of personal data.

**Advanced:** Under **"⚙️ Advanced: leave out individual folders"** you can
additionally decide exactly what stays out (checked = stays out) — for example
virtual machines or Steam games. **"➕ Leave out another folder …"** adds any
folder you like.

### Then: build the snapshot

1. Click **"📸 Create snapshot now"**.
2. The program works in **3 steps** (with a progress bar):
   - Step 1: copying the system *(longest part)*
   - Step 2: compressing *(with percentage)*
   - Step 3: building the bootable ISO
   - **Total: about 15–25 minutes** (depending on your choice above and your
     machine). You may keep working; even closing the window does not stop
     the build.
3. At the end you get **"✅ Snapshot finished!"** — the ISO appears in the
   "Finished images" list.

---

## 4. Write to the USB stick

1. Plug in the stick. **Everything on it will be erased!**
2. Select your ISO in the list and click **"🖊️ Write to USB stick"**.
3. Mint's own USB writer opens: choose the stick → **"Write"** →
   wait 5–15 minutes.

## 5. Verify the stick (highly recommended!)

1. Keep the stick plugged in, select the same ISO in the list.
2. Click **"🔍 Verify stick (checksum)"**.
3. The program compares the stick **bit by bit** against the ISO
   (a few minutes). You either get **"✅ Stick is PERFECT"** — or a
   clear error message (then write again or use another stick).

---

## 6. Boot from the stick

1. Plug the stick in, **restart** the computer.
2. Right after power-on, open the **boot menu** — usually **F12**
   (on some machines **F2**, **F8**, **F10** or **Esc**).
3. Choose the **USB stick** from the list.
4. Pick the **first entry** of the start menu (shown in your own language).
5. After 1–2 minutes the desktop appears. If you took **your settings** along,
   the live system boots straight into **your own user account** — with your
   icons and apps, exactly as you know it. Nothing on your real computer
   changes unless you install.

> ✅ **Secure Boot:** the stick starts **even with Secure Boot enabled** —
> you don't need to change anything in the BIOS. The ISO carries a
> Microsoft- and Canonical-signed boot chain that modern PCs (including
> those with Windows alongside) accept. It works with Secure Boot on or off.

---

## 7. Install the system permanently

The live desktop shows the icon **"Install System"**:

1. **Double-click** it → the Calamares installer opens in your language.
2. **Welcome** → "Next".
3. **Partitions**: beginners choose **"Erase disk"**.
   ⚠️ This deletes EVERYTHING on the chosen disk — back up first!
   (Experts may use "Manual partitioning".) → "Next".
4. **Summary**: read it once more → **"Install"** → confirm the
   safety question with **"Install now"**.
   *(There is deliberately NO separate page for language/timezone/keyboard/
   user — all of that is taken from your snapshot, nothing to type in.)*
5. Installation takes **about 10 minutes**, then: **"All done."**
6. Restart and **remove the stick during reboot** — your freshly
   installed Linux Mint starts from the hard disk.
7. Log in with **your own, familiar account and password** — NO new
   account is created (the installer icon and live-session leftovers are
   removed automatically).

> ⚠️ **Space on the target disk:** the disk you install onto must be **at least
> as large as your snapshot when unpacked** — with "System + Home" that can be
> considerably more than the ISO file suggests. If the disk is too small, the
> installation aborts.

---

## 8. FAQ

**Which option should I pick?**  When in doubt, the middle one:
**"System + my settings"**. It's preselected, stays lean and is still ready to
use — everything set up the way you know it.

**How big is the ISO?**  That mainly depends on your choice: "System only" is
smallest, "System + Home" largest. The checkboxes under "Advanced" can save
additional space.

**Stick does not boot?**  Wrong boot-menu key (try F12/F2/F8/Esc),
or re-write and verify the stick (step 5). (Secure Boot does NOT need to
be turned off — the ISO is signed.)

**May I close the window during a build?**  Yes. The build continues
in the background; reopening the app re-attaches the display.

**What about my mail/passwords?**  You decide that with the choice above: with
**"System (root) only"** nothing personal is included. With the other two, your
account and saved credentials come along — keep such sticks safe and never hand
them to strangers!

**Where do I find the version and license?**  Click **"ℹ️ About"** at
the top of the program window — shows version, publisher and the full
GPL-3 license text.

**What is under the hood?**  The proven tools *refractasnapshot*
(ISO build) and *Calamares* (installer) — this program makes them
usable with clicks, in your own language.
