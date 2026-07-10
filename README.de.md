# 📸 Linux Mint Snapshot

**Erstellt mit einem Klick eine startfähige 1:1-Kopie deines laufenden Linux-Mint-Systems.**
Ähnlich wie „MX Snapshot" auf MX Linux — nur dass es das für Linux Mint bisher
nicht gab.

Herausgeber: Gilbert Rikus · Kostenlos, quelloffen (GPL-3.0) · Keine Werbung, kein Konto nötig.

*[English version: README.md](README.md)*

---

## Was es kann

- **Erstellt eine startfähige ISO** deines laufenden Systems mit einem Klick — deutscher Klartext-Fortschritt, kein Terminal.
- **Immer ein 1:1-Klon**: dein Konto, deine Einstellungen und gespeicherten Anmeldungen sind dabei, damit nach der Installation alles wie gewohnt funktioniert. Große, verzichtbare Ordner (VMs, Steam, Flatpak) lassen sich per Häkchen ausschließen, um die ISO kleiner zu halten.
- **Auf USB schreiben** über Mints eigenes Schreibprogramm.
- **Eingebaute Bit-für-Bit-Kontrolle des Sticks** — kein Rätselraten, ob er gut geschrieben wurde.
- **Der Stick startet direkt in dein eigenes Konto und deine Sprache** — kein anonymer Platzhalter-Nutzer.
- **Startet auch mit eingeschaltetem Secure Boot** — die ISO enthält die von Microsoft signierte shim- und von Canonical signierte GRUB-Kette, startet also auf modernen PCs (z. B. mit Windows-Dualboot), *ohne* Secure Boot ausschalten zu müssen. Läuft mit an oder aus.
- **Symbol „System installieren" direkt auf dem Live-Schreibtisch** (auf Basis von Calamares) übernimmt alles 1:1: keine Benutzer-Anlage, keine erneute Sprache/Zeitzone/Tastatur-Abfrage — es ist ja schon deins.
- **Deutsche/englische Oberfläche**, automatisch nach Systemsprache.

## Voraussetzungen

| | |
|---|---|
| Betriebssystem | Linux Mint 22.x (Cinnamon getestet), x86_64 |
| Freier Platz | ~2× die Größe deines installierten Systems |
| Internet | nur für die einmalige Ersteinrichtung |
| Secure Boot | **wird unterstützt** — signierte shim-+-GRUB-Kette (Microsoft/Canonical); startet mit Secure Boot an *oder* aus, kein BIOS-Umstellen nötig |

## Erste Schritte

1. Dieses Repository herunterladen oder klonen.
2. `python3 linux-mint-snapshot.py` ausführen (oder im Dateimanager doppelklicken und „Ausführen" wählen).
3. Beim ersten Start prüft die App, was fehlt (hauptsächlich das `refractasnapshot`-Werkzeug, nicht in Mints Standard-Quellen) und bietet an, es einzurichten — einmal Passwort, wenige Minuten.
4. Auf **„Schnappschuss jetzt erstellen"** klicken. Vollständige Schritt-für-Schritt-Anleitung: **[ANLEITUNG.md](ANLEITUNG.md)**.

## Technik & Dank

Baut auf bewährten, bestehenden Werkzeugen auf — dieses Projekt verbindet sie nur mit einer freundlichen Oberfläche:

- **[Refracta](https://sourceforge.net/projects/refracta/)** (refractasnapshot / refractainstaller) — der eigentliche Schnappschuss-/ISO-Bau-Motor.
- **Debian `live-boot` / `live-config`** — die Live-Boot-Technik.
- **[Calamares](https://calamares.io/)** — der grafische Installer, mit eigener 1:1-Klon-Konfiguration (keine Benutzer-/Sprache-/Tastatur-Seiten — alles kommt aus deinem Klon).

Unterwegs umgeht diese App ein paar echte Stolperfallen: den Live-Benutzer, der still nicht angelegt wird, wenn seine übliche Nutzernummer schon vom geklonten Konto belegt ist, ein aktives Autologin, das in die Live-Sitzung überlebt, sowie englische Boot-Menüs unabhängig von der Systemsprache.

## Lizenz

GPL-3.0 — frei nutzbar, änderbar und weitergebbar, für immer. Siehe [LICENSE](LICENSE).
