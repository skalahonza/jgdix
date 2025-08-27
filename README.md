# JG Dix webová stránka

Toto jsou oficiální webové stránky kapely JG Dix, postavené pomocí Jekyllu.

## Jak spravovat obsah webu

Odkaz na editaci: https://github.dev/skalahonza/jgdix

### Přidání koncertu

Pro přidání nového koncertu vytvořte nový soubor ve formátu markdown ve složce `_concerts`. Název souboru by měl být postupně číslovaný (např. `14.md`). Soubor musí obsahovat následující front matter:

```yaml
---
title: Název akce
date: RRRR-MM-DD
venue: Místo konání
---
```

### Úprava členů kapely

Pro úpravu seznamu členů kapely otevřete soubor `_data/members.yml`. Jedná se o YAML soubor se seznamem členů. Každý člen má následující vlastnosti:

* `name`: Jméno člena kapely
* `instrument`: Nástroj(e), které hraje
* `image`: Cesta k obrázku člena ve složce `/img/band/`

Pro přidání nového člena přidejte nový záznam do seznamu. Pro odstranění člena smažte jeho záznam.

### Úprava seznamu skladeb

Pro úpravu seznamu skladeb na webu otevřete soubor `_data/tracks.yml`. Tento YAML soubor obsahuje seznam skladeb. Každá skladba má následující vlastnosti:

* `title`: Název skladby
* `file`: Cesta k audio souboru ve složce `/audio/`

Pro přidání nové skladby přidejte nový záznam do seznamu. Pro odstranění skladby smažte její záznam.

## Jak spustit lokálně

1. Spusťte `docker-compose up -d`
2. Otevřete [http://localhost:4000](http://localhost:4000)
3. Hotovo
