# Rikus Mintshot — Anleitung (Deutsch)

**Herausgeber: Gilbert Rikus · Lizenz: GPL-3 · kostenlos**
*(Version und Lizenztext stehen jederzeit im Programm unter „ℹ️ Über".)*

Dieses Programm erstellt mit einem Klick eine **startfähige Kopie deines
laufenden Linux-Mint-Systems** — so ähnlich wie „MX Snapshot" auf MX Linux.
Die ISO kannst du auf einen USB-Stick schreiben, davon jeden PC starten und
dein System mit einem Doppelklick fest installieren.

**Du entscheidest dabei selbst, wie viel mitkommt** — vom nackten System bis
zum vollständigen Klon mit all deinen Dateien. Nach der Installation
funktioniert alles wie gewohnt, ohne dass du etwas neu einrichten musst.

---

## 1. Was du brauchst

| | |
|---|---|
| Betriebssystem | Linux Mint 22.x (Cinnamon getestet) |
| Freier Platz | etwa **doppelt so viel wie dein System belegt** |
| USB-Stick | mindestens so groß wie die fertige ISO |
| Internet | nur für die einmalige Ersteinrichtung |

---

## 2. Programm installieren

**Am einfachsten — das fertige Paket:**

1. Lade `rikus-mintshot_*.deb` von der
   [Releases-Seite](https://github.com/Zahnschmerz/rikus-mintshot/releases) herunter.
2. Doppelklick auf die Datei → deine Paketverwaltung öffnet sich → **„Installieren"**.
   *(Oder im Terminal: `sudo apt install ./rikus-mintshot_*.deb`)*
3. Danach findest du **Rikus Mintshot** dauerhaft im **Startmenü**
   (mit eigenem Kamera-Symbol).

**Oder aus dem Quellcode:** Ordner entpacken und `python3 rikus-mintshot.py`
starten (oder doppelklicken → „Ausführen" wählen).

**Beim allerersten Start** prüft das Programm, ob alle Bausteine vorhanden sind.
Fehlt etwas, erscheint der Knopf **„🔧 Jetzt einrichten"**:

- Klick darauf → eine Liste zeigt, was installiert wird.
- Bestätige → dein **Passwort** wird einmal abgefragt (das ist normal:
  Systembausteine brauchen Verwaltungsrechte).
- Die Einrichtung dauert wenige Minuten. Danach erscheint
  **„✅ Einrichtung abgeschlossen"** — fertig, das war einmalig. Dabei wird
  das Programm auch fest ins System eingebaut, damit es in jedem Klon
  automatisch mit dabei ist (wie mx-snapshot auf MX Linux).

---

## 3. Schnappschuss (ISO) erstellen

### Zuerst: Wie viel soll mitkommen?

Im Hauptfenster wählst du mit **einem Klick** aus drei Möglichkeiten:

| Auswahl im Programm | Was mitkommt | Wofür gedacht |
|---|---|---|
| **Nur System (root)**<br>*— ganz nackt, ohne persönliche Einstellungen* | nur das System selbst — **kein** persönlicher Ordner, keine Konten, keine Daten | eine saubere Grundlage, die du **gefahrlos weitergeben** kannst |
| ⭐ **System + meine Einstellungen**<br>*— schlank & brauchbar (empfohlen)* | System **plus deine Einstellungen**: Schreibtisch, Programme, Mails, Browser, gespeicherte Anmeldungen — **ohne** den großen Datenberg (Zwischenspeicher, Downloads, Bilder, Videos, Musik) | **die empfohlene Wahl:** klein, aber sofort brauchbar — alles ist eingerichtet wie gewohnt |
| **System + Home**<br>*— alles komplett (deine Dateien, Mails & Konto)* | **wirklich alles** — ein vollständiger 1:1-Klon inklusive all deiner Dateien | komplettes Backup oder Umzug auf einen neuen Rechner |

**Wenn du unsicher bist:** Nimm die mittlere Wahl (⭐ **System + meine Einstellungen**).
Sie ist voreingestellt und für die meisten die richtige.

> 🔒 **Wichtig bei den unteren beiden Wahlmöglichkeiten:** Sobald deine
> Einstellungen oder Dateien mitkommen, enthält die ISO **dein Konto und deine
> gespeicherten Zugänge**. Solche Sticks sicher verwahren und **nicht an Fremde
> weitergeben!** Nur **„Nur System (root)"** ist frei von persönlichen Daten.

**Für Fortgeschrittene:** Unter **„⚙️ Für Fortgeschrittene: einzelne Ordner
weglassen"** kannst du zusätzlich genau bestimmen, was draußen bleibt
(Häkchen = bleibt draußen), zum Beispiel virtuelle Maschinen oder Steam-Spiele.
Mit **„➕ Weiteren Ordner weglassen …"** kommt jeder beliebige Ordner dazu.

### Dann: Schnappschuss bauen

1. Klicke auf **„📸 Schnappschuss jetzt erstellen"**.
2. Das Programm arbeitet nun in **3 Schritten** (mit Fortschrittsbalken):
   - Schritt 1: System kopieren *(dauert am längsten)*
   - Schritt 2: Komprimieren *(mit Prozent-Anzeige)*
   - Schritt 3: Startfähige ISO bauen
   - **Gesamtdauer: etwa 15–25 Minuten** (je nach Wahl oben und Rechner).
     Du kannst nebenbei weiterarbeiten; selbst wenn du das Fenster schließt,
     läuft der Bau weiter.
3. Am Ende meldet das Programm **„✅ Schnappschuss fertig!"** — die ISO liegt
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
5. Nach etwa 1–2 Minuten erscheint der Schreibtisch. Hast du **deine
   Einstellungen** mitgenommen, startet das Live-System direkt in **deinem
   eigenen Benutzerkonto** — mit deinen Symbolen und Programmen, genau wie du
   es kennst. Nichts an deinem echten Rechner wird verändert, solange du nicht
   installierst.

> ✅ **Secure Boot:** Der Stick startet auch mit **eingeschaltetem Secure Boot** —
> du musst im BIOS nichts umstellen. Die ISO enthält eine von Microsoft und
> Canonical signierte Startkette, die moderne PCs (auch mit Windows daneben)
> akzeptieren. Er läuft mit Secure Boot an oder aus.

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
   — das alles wird aus deinem Schnappschuss übernommen, du musst nichts eintippen.)*
5. Die Installation dauert **ca. 10 Minuten**. Danach: **„Alles erledigt."**
6. Rechner neu starten, **beim Neustart den Stick abziehen** —
   das frisch installierte Linux Mint startet von der Festplatte.
7. Anmelden: mit **deinem gewohnten Konto und Passwort** — es wird KEIN
   neues Konto angelegt (Installer-Symbol und Live-Reste sind automatisch entfernt).

> ⚠️ **Platz auf der Zielplatte:** Die Festplatte, auf die du installierst, muss
> **mindestens so groß sein wie dein Schnappschuss entpackt** — bei „System + Home"
> kann das deutlich mehr sein, als die ISO-Datei vermuten lässt. Ist die Platte zu
> klein, bricht die Installation ab.

---

## 8. Häufige Fragen

**Welche Auswahl soll ich nehmen?**  Im Zweifel die mittlere:
**„System + meine Einstellungen"**. Sie ist voreingestellt, bleibt schlank und
ist trotzdem sofort brauchbar — alles ist eingerichtet wie gewohnt.

**Wie groß wird die ISO?**  Das hängt vor allem von deiner Wahl ab:
„Nur System" ist am kleinsten, „System + Home" am größten. Über die Häkchen
unter „Für Fortgeschrittene" lässt sich zusätzlich sparen.

**Der Stick startet nicht?**  Boot-Menü-Taste falsch (F12/F2/F8/Esc probieren),
oder Stick neu schreiben und kontrollieren (Punkt 5). (Secure Boot muss NICHT
ausgeschaltet werden — die ISO ist signiert.)

**Kann ich das Fenster während des Baus schließen?**  Ja. Der Bau läuft im
Hintergrund weiter; beim nächsten Öffnen koppelt sich die Anzeige wieder an.

**Was ist mit meinen E-Mails und Passwörtern?**  Das entscheidest du mit der
Auswahl oben: Bei **„Nur System (root)"** bleibt alles Persönliche draußen.
Bei den beiden anderen sind Konto und gespeicherte Zugänge dabei — solche
Sticks sicher verwahren und nicht an Fremde weitergeben!

**Wo finde ich Version und Lizenz?**  Oben im Programmfenster auf
**„ℹ️ Über"** klicken — zeigt Version, Herausgeber und den vollständigen
GPL-3-Lizenztext.

**Woher kommt die Technik?**  Unter der Haube arbeiten die bewährten
Werkzeuge *refractasnapshot* (ISO-Bau) und *Calamares* (Installation) —
dieses Programm macht sie per Klick und auf Deutsch bedienbar.
