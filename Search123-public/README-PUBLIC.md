# Search123 – geanonimiseerde openbare broncode-export

Deze export bevat de aangeleverde Docker Compose-configuratie, actieve voorbeeldinstellingen, aangepaste SearXNG `base.html`, logo en logoscript. Oude back-ups, dubbele configuraties, macOS-metadata en operationele geheimen zijn weggelaten.

## Belangrijk
- Alle persoonlijke/organisatie-URLs zijn vervangen door `example.org`-domeinen en `code.example.org`; pas deze aan voor je eigen instantie.
- `config/settings.yml` bevat een niet-functionele voorbeeldwaarde voor `secret_key`. Maak lokaal een `.env` met `SEARXNG_SECRET_KEY` en zorg dat de actieve SearXNG-configuratie ook een veilige unieke sleutel gebruikt. Publiceer nooit je echte sleutel.
- Dit is een **geanonimiseerde export** en geen direct inzetbare productie-back-up. Controleer configuratie, secretbeheer, mounts en reverse proxy voordat je hem uitvoert.
- De gebruikte upstream image is `searxng/searxng:latest`. Leg voor een reproduceerbare release een specifieke versie/digest vast en verwijs naar de corresponderende SearXNG-broncode.
- De gewijzigde `base.html` is een afgeleide van SearXNG: behoud toepasselijke auteursrecht- en licentieverklaringen en vermeld de upstream bron.
- Verifieer dat de volledige bijbehorende broncode beschikbaar is voor gebruikers van je aangepaste AGPL-3.0-webdienst. Deze ZIP bevat **niet** de volledige upstream SearXNG-broncode.
- De Dockerpoort is in deze export gebonden aan 127.0.0.1, zodat deze niet rechtstreeks publiek toegankelijk is.

## Inhoud
- `docker-compose.yml` – geanonimiseerde voorbeelddeployment
- `config/settings.yml` – geanonimiseerde voorbeeldinstellingen
- `custom-templates/base.html` – aangepaste Jinja-template
- `logo/searxng.png` – logo
- `logo/logo/maak-logo.sh` – logoscript zonder persoonlijke serverpaden
- `.env.example` – voorbeeldvariabele, **geen** echt geheim

Dit archief is automatisch opgeschoond. Controleer zelf ook de afbeeldingen, gegenereerde bestanden en tekst voordat je publiceert.
