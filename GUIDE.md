# Linux Mint Snapshot — Guide (English)

**Published by Gilbert Rikus · License: GPL-3 · free of charge**
*(Version and license text are always available in the app under „ℹ️ About".)*

This program creates a bootable **1:1 clone** of your running Linux Mint
system with one click — much like "MX Snapshot" does on MX Linux.
Write the ISO to a USB stick, boot any PC from it, and **install** your
system permanently with a double click — **including your account, your
settings and saved logins.** After installing, everything works as before —
nothing needs to be set up again.

---

## 1. What you need

| | |
|---|---|
| Operating system | Linux Mint 22.x (Cinnamon tested) |
| Free disk space | at least **25 GB** |
| USB stick | at least as big as the finished ISO (often 8–20 GB, depends on your system) |
| Internet | only for the one-time first setup |

---

## 2. Install the program

1. Download and unpack the program (or copy the `linux-mint-snapshot`
   folder) to a permanent place, for example:
   `/home/YOURNAME/Programme/linux-mint-snapshot`
2. Start it by **double-clicking `linux-mint-snapshot.py`** — Linux Mint
   asks "Run?" the first time → choose **"Run"**.
   (Alternatively in a terminal: `python3 linux-mint-snapshot.py`.)
   From the first start on, the program stays in your **application menu**
   as **"Linux Mint Snapshot"** (with its own camera icon).
3. **On the very first start** the program checks whether all building
   blocks are present. If something is missing, the button
   **"🔧 Set up now"** appears:
   - Click it → a list shows what will be installed.
   - Confirm → your **password** is asked once (normal: system
     components need administrative rights).
   - Setup takes a few minutes and ends with **"✅ Setup complete"** —
     done, this happens only once. This also installs the app into the
     system itself, so it is included in every clone (like mx-snapshot
     on MX Linux).

---

## 3. Create a snapshot (ISO)

1. Open the program. The snapshot is **always a 1:1 clone**: your account,
   settings and saved logins are ALWAYS included. You can only **leave out
   big folders** to make the ISO smaller (checked = stays out): virtual
   machines, Steam games, Flatpak app data. Everything else (documents,
   pictures, browser profiles, mail apps, saved passwords …) is always in.

   🔒 **Important, because it's always a 1:1 clone:** every ISO you create
   contains your account and credentials. Keep the stick in a safe place
   and never hand it to strangers!

2. Click **"📸 Create snapshot now"**.
3. The program works in **3 steps** (with a progress bar):
   - Step 1: copying the system *(longest part)*
   - Step 2: compressing *(with percentage)*
   - Step 3: building the bootable ISO
   - **Total: about 15–25 minutes.** You may keep working; even closing
     the window does not stop the build.
4. At the end you get **"✅ Snapshot finished!"** — the ISO appears in
   the "Finished images" list.

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
5. After 1–2 minutes the desktop appears — **your own desktop**: the live
   system boots straight into **your own user account** (no placeholder
   user), with your icons, settings and apps, exactly as you know it.
   Nothing on your real computer changes unless you install.

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
   user — all of that is taken 1:1 from your clone, nothing to type in.)*
5. Installation takes **about 10 minutes**, then: **"All done."**
6. Restart and **remove the stick during reboot** — your freshly
   installed Linux Mint starts from the hard disk.
7. Log in with **your own, familiar account and password** — NO new
   account is created; the installed system is a 1:1 copy of your
   original (the installer icon and live-session leftovers are removed
   automatically).

---

## 8. FAQ

**How big is the ISO?**  Depends on your system — usually in the 8–20 GB
range. The VM/Steam/Flatpak checkboxes let you shrink it.

**Stick does not boot?**  Wrong boot-menu key (try F12/F2/F8/Esc),
or re-write and verify the stick (step 5). (Secure Boot does NOT need to
be turned off — the ISO is signed.)

**May I close the window during a build?**  Yes. The build continues
in the background; reopening the app re-attaches the display.

**What about my mail/passwords?**  They are always included — the
snapshot is a 1:1 clone. That is exactly why you should keep the stick
safe and never hand it to strangers!

**Where do I find the version and license?**  Click **"ℹ️ About"** at
the top of the program window — shows version, publisher and the full
GPL-3 license text.

**What is under the hood?**  The proven tools *refractasnapshot*
(ISO build) and *Calamares* (installer) — this program makes them
usable with clicks, in your own language.
