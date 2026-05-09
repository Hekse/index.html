# Kontakti Desktop – sähköpostista löytyvä viimeisin lähde

Tämä tiedosto on varmuusmerkintä viimeisimmästä Opero/Kontakti Desktop -versiosta, joka löytyi Operon Gmailista.

## Lähde

- Gmail-viesti: `Fwd: Kontakti`
- Viestin ID: `19e0cdeaffd7d305`
- Vastaanotettu: 2026-05-09 klo 16.12 Europe/Helsinki
- Alkuperäinen lähettäjäketju: `pasi.valta@isokallanpanimo.fi` → `valtapasi@gmail.com` → `opero@opero.fi`
- Sisältötyyppi: HTML-koodi viestin rungossa, ei liitteenä

## Tunnistetut merkit versiosta

- `<title>Kontakti</title>`
- Sivupalkkirakenne: Asiakkaat / Merkinnät / Viikkoraportti / Asetukset
- Priority-väri: purppura / violetti
- Asiakkaan kontaktin ikä väreillä: vihreä, keltainen, oranssi, punainen
- Viikkoraportti-logiikka mukana
- Opero splash mukana:
  - `<!-- OPERO_SPLASH_START -->`
  - `.opero-splash`
  - `OPERO`
  - `KONTAKTI`
  - `Ladataan...`
- Kielivalinta mukana ensimmäiselle käynnistykselle

## Huomio

Varsinainen HTML-koodi on sähköpostin rungossa. GitHubiin ei tässä vaiheessa yliajettu `index.html`-tiedostoa, koska nykyinen `Hekse/index.html`-repo sisältää Opero Ajon toimivan version. Tämä backup-merkintä kertoo tarkasti, mistä viimeisin Kontakti Desktop -versio löytyy ja millä tunnisteilla se tunnistettiin.

Seuraava turvallinen askel olisi tehdä Kontaktia varten oma repo tai oma tiedosto, esimerkiksi:

- `Hekse/kontakti-desktop`
- tai tässä repossa `kontakti-desktop/index.html`

Näin Ajo ja Kontakti eivät mene vahingossa päällekkäin.
