# Paketierung (.deb bauen)

Diese Dateien steuern den Bau des `.deb`-Pakets. Sie liegen **nicht** unter `/opt` im
fertigen Paket, sondern bilden die Verpackung drumherum.

| Datei | Wohin im Paket | Zweck |
|---|---|---|
| `control` | `DEBIAN/control` | Name, Version, **Abhängigkeiten** |
| `postinst` | `DEBIAN/postinst` | nach der Installation: Calamares-/Live-Konfiguration einspielen |
| `postrm` | `DEBIAN/postrm` | beim Entfernen: **alles** aufräumen (auch was die Ersteinrichtung anlegte) |
| `rikus-mintshot.desktop` | `usr/share/applications/` | Menüeintrag (`python3 -B` → erzeugt kein `__pycache__`) |
| `copyright` | `usr/share/doc/rikus-mintshot/` | Lizenzhinweis |

## Bauen

```bash
VER=6.9
B=$(mktemp -d)
mkdir -p "$B/DEBIAN" "$B/opt/rikus-mintshot" "$B/usr/share/applications" "$B/usr/share/doc/rikus-mintshot"

# Programm + Daten (alles aus dem Repo außer packaging/ und .git)
git archive HEAD | tar -x -C "$B/opt/rikus-mintshot" --exclude='packaging'

# Verpackung
cp packaging/control   "$B/DEBIAN/control"      # Version prüfen!
cp packaging/postinst  "$B/DEBIAN/postinst"
cp packaging/postrm    "$B/DEBIAN/postrm"
cp packaging/rikus-mintshot.desktop "$B/usr/share/applications/"
cp packaging/copyright "$B/usr/share/doc/rikus-mintshot/"
chmod 0755 "$B/DEBIAN/postinst" "$B/DEBIAN/postrm"

sudo chown -R root:root "$B"
dpkg-deb --build --root-owner-group "$B" "rikus-mintshot_${VER}_all.deb"
sha256sum "rikus-mintshot_${VER}_all.deb" > "rikus-mintshot_${VER}_all.deb.sha256"
```

## Vor jeder Veröffentlichung prüfen

- **Abhängigkeiten** in beide Richtungen (nichts verloren, nichts Neues vergessen) — jedes
  vom Code aufgerufene Werkzeug muss in `control` stehen.
- **Kein `__pycache__`** im Paket.
- **Installieren → Ersteinrichtung → `purge`** durchspielen: nach `purge` darf **nichts**
  übrig bleiben (`/opt/rikus-mintshot`, `/usr/local/sbin/rikus-mintshot-*`, die Dienste,
  `/usr/local/share/rikus-mintshot`).
- **Prüfsumme** überall gleich: Release-Text, `.sha256`-Datei, Webseite.
