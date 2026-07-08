# Linux Mint Snapshot — Anleitung (Deutsch)

**Herausgeber: Gilbert Rikus · Lizenz: GPL-3 · kostenlos**
*(Version und Lizenztext stehen jederzeit im Programm unter „ℹ️ Über".)*

Dieses Programm erstellt mit einem Klick eine startfähige **1:1-Kopie (Klon)**
deines laufenden Linux-Mint-Systems — so ähnlich wie „MX Snapshot" auf MX Linux.
Die ISO kannst du auf einen USB-Stick schreiben, davon jeden PC starten und
dein System mit einem Doppelklick fest installieren — **inklusive deines Kontos,
deiner Einstellungen und gespeicherten Anmeldungen.** Nach der Installation
funktioniert alles wie gewohnt, ohne dass du irgendetwas neu einrichten musst.

---

## 1. Was du brauchst

| | |
|---|---|
| Betriebssystem | Linux Mint 22.x (Cinnamon getestet) |
| Freier Platz | mindestens **25 GB** auf der Festplatte |
| USB-Stick | mindestens so groß wie die fertige ISO (oft 8–20 GB, abhängig von deinem System) |
| Internet | nur für die einmalige Ersteinrichtung |

---

## 2. Programm installieren

1. Lade das Programm herunter und entpacke es (oder kopiere den Ordner
   `linux-mint-snapshot`) an einen festen Ort, zum Beispiel:
   `/home/DEINNAME/Programme/linux-mint-snapshot`
2. Starte es mit einem **Doppelklick auf `linux-mint-snapshot.py`** —
   Linux Mint fragt beim ersten Mal „Ausführen?" → **„Ausführen"** wählen.
   (Alternativ im Terminal: `python3 linux-mint-snapshot.py`.)
   Ab dem ersten Start findest du das Programm dauerhaft im **Startmenü**
   unter dem Namen **„Linux Mint Snapshot"** (mit eigenem Kamera-Symbol).
3. **Beim allerersten Start** prüft das Programm, ob alle Bausteine auf deinem
   Rechner vorhanden sind. Fehlt etwas, erscheint der Knopf **„🔧 Jetzt einrichten"**:
   - Klick darauf → eine Liste zeigt, was installiert wird.
   - Bestätige → dein **Passwort** wird einmal abgefragt (das ist normal:
     Systembausteine brauchen Verwaltungsrechte).
   - Die Einrichtung dauert wenige Minuten. Danach erscheint
     **„✅ Einrichtung abgeschlossen"** — fertig, das war einmalig. Dabei wird
     das Programm auch fest ins System eingebaut, damit es in jedem Klon
     automatisch mit dabei ist (wie mx-snapshot auf MX Linux).

---

## 3. Schnappschuss (ISO) erstellen

1. Öffne das Programm. Der Schnappschuss ist **immer ein 1:1-Klon**: dein
   Konto, deine Einstellungen und gespeicherten Anmeldungen sind IMMER mit
   dabei. Du kannst nur **große Ordner abwählen**, um die ISO kleiner zu
   machen (Häkchen setzen = bleibt draußen): Virtuelle Maschinen,
   Steam-Spiele, Flatpak-Programmdaten. Alles andere (Dokumente, Bilder,
   Browser-Profile, Mail-Programme, gespeicherte Passwörter …) ist immer dabei.

   🔒 **Wichtig, weil es immer ein 1:1-Klon ist:** Jede erstellte ISO enthält
   dein Konto und deine Zugänge. Stick sicher verwahren, nicht an Fremde
   weitergeben!

2. Klicke auf **„📸 Schnappschuss jetzt erstellen"**.
3. Das Programm arbeitet nun in **3 Schritten** (Anzeige mit Fortschrittsbalken):
   - Schritt 1: System kopieren *(dauert am längsten)*
   - Schritt 2: Komprimieren *(mit Prozent-Anzeige)*
   - Schritt 3: Startfähige ISO bauen
   - **Gesamtdauer: etwa 15–25 Minuten.** Du kannst nebenbei weiterarbeiten;
     selbst wenn du das Fenster schließt, läuft der Bau weiter.
4. Am Ende meldet das Programm **„✅ Schnappschuss fertig!"** — die ISO liegt
   in der Liste „Fertige Abbilder".

---

## 4. Auf den USB-Stick schreiben

1. Stecke den USB-Stick ein. **Alles auf dem Stick wird gelöscht!**
2. Wähle in der Liste deine ISO aus und klicke **„🖊️ Auf USB-Stick schreiben"**.
3. Es öffnet sich das Mint-eigene Schreibprogramm: Stick auswählen →
   **„Schreiben"** → warten (5–15 Minuten, je nach Stick).

## 5. Stick kontrollieren (sehr empfohlen!)

1. Stick eingesteckt lassen, in der Liste dieselbe ISO auswählen.
2. Klicke **„🔍 Stick kontrollieren (Prüfsumme)"**.
3. Das Programm vergleicht den Stick **Bit für Bit** mit der ISO
   (dauert einige Minuten). Am Ende steht entweder
   **„✅ Stick ist PERFEKT"** — oder eine klare Fehlermeldung
   (dann neu schreiben oder anderen Stick nehmen).

---

## 6. Vom Stick starten

1. Stick einstecken, Rechner **neu starten**.
2. Direkt beim Einschalten das **Boot-Menü** öffnen — meistens mit **F12**
   (je nach Hersteller auch **F2**, **F8**, **F10** oder **Esc**).
3. Den **USB-Stick** aus der Liste wählen.
4. Im Startmenü den **ersten Eintrag** wählen (er steht in deiner Sprache).
5. Nach etwa 1–2 Minuten erscheint der Schreibtisch — und zwar **deiner**:
   Das Live-System startet direkt in **deinem eigenen Benutzerkonto**
   (kein fremder Platzhalter-Nutzer), mit deinen Symbolen, Einstellungen
   und Programmen, genau wie du es kennst. Nichts an deinem echten Rechner
   wird verändert, solange du nicht installierst.

> ⚠️ **Wichtig:** Ist **Secure Boot** im BIOS eingeschaltet, startet der Stick
> (noch) nicht. Secure Boot lässt sich im BIOS/UEFI unter „Security" ausschalten.

---

## 7. System fest installieren

Auf dem Schreibtisch des Live-Systems liegt das Symbol **„System installieren"**:

1. **Doppelklick** darauf → das deutsche Installationsprogramm (Calamares) öffnet sich.
2. **Willkommen** → „Weiter".
3. **Partitionen**: Für Anfänger: **„Festplatte löschen"** wählen.
   ⚠️ Das löscht ALLES auf der gewählten Platte — vorher sichern!
   (Profis können „Manuelle Partitionierung" wählen.) → „Weiter".
4. **Zusammenfassung**: alles noch einmal lesen → **„Installieren"** →
   Sicherheitsfrage mit **„Jetzt installieren"** bestätigen.
   *(Es gibt bewusst KEINE separate Seite für Sprache/Zeitzone/Tastatur/Benutzer
   — das alles wird 1:1 aus deinem Klon übernommen, du musst nichts eintippen.)*
5. Die Installation dauert **ca. 10 Minuten**. Danach: **„Alles erledigt."**
6. Rechner neu starten, **beim Neustart den Stick abziehen** —
   das frisch installierte Linux Mint startet von der Festplatte.
7. Anmelden: mit **deinem gewohnten Konto und Passwort** — es wird KEIN
   neues Konto angelegt, das installierte System ist eine 1:1-Kopie deines
   Originals (Installer-Symbol und Live-Reste sind automatisch entfernt).

---

## 8. Häufige Fragen

**Wie groß wird die ISO?**  Hängt von deinem System ab — meist im Bereich
8–20 GB. Über die Häkchen bei VMs/Steam/Flatpak lässt sie sich verkleinern.

**Der Stick startet nicht?**  Boot-Menü-Taste falsch (F12/F2/F8/Esc probieren),
Secure Boot ausschalten, oder Stick neu schreiben und kontrollieren (Punkt 5).

**Kann ich das Fenster während des Baus schließen?**  Ja. Der Bau läuft im
Hintergrund weiter; beim nächsten Öffnen koppelt sich die Anzeige wieder an.

**Was ist mit meinen E-Mails/Passwörtern?**  Die sind immer mit dabei — der
Schnappschuss ist ein 1:1-Klon. Genau deshalb: Stick sicher verwahren und
nicht an Fremde weitergeben!

**Wo finde ich Version und Lizenz?**  Oben im Programmfenster auf
**„ℹ️ Über"** klicken — zeigt Version, Herausgeber und den vollständigen
GPL-3-Lizenztext.

**Woher kommt die Technik?**  Unter der Haube arbeiten die bewährten
Werkzeuge *refractasnapshot* (ISO-Bau) und *Calamares* (Installation) —
dieses Programm macht sie per Klick und auf Deutsch bedienbar.
