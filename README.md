# JG Dix webová stránka

Toto jsou oficiální webové stránky kapely JG Dix, postavené pomocí Jekyllu.

## Administrace (doporučený způsob)

Na adrese `https://<doména-webu>/admin/` běží [Sveltia CMS](https://github.com/sveltia/sveltia-cms) — webová administrace, ve které lze bez znalosti gitu přidávat koncerty a upravovat členy kapely i seznam skladeb. Každé uložení vytvoří commit do větve `master` a web se automaticky přegeneruje (GitHub Actions, obvykle do pár minut).

Požadavky: GitHub účet s právem zápisu do tohoto repozitáře.

### Přihlášení

Preferovaná varianta je OAuth přes [sveltia-cms-auth](https://github.com/sveltia/sveltia-cms-auth):

1. Nasaďte sveltia-cms-auth (Docker/Cloudflare Worker) a vytvořte GitHub OAuth App dle jeho návodu.
2. V `admin/config.yml` odkomentujte `base_url` a nastavte URL nasazené instance.

Dokud OAuth není nastavené, lze se v přihlašovacím dialogu CMS přihlásit osobním přístupovým tokenem (fine-grained PAT s právy *Contents: Read and write* pro tento repozitář).

## Jak spravovat obsah ručně (přes git)

Odkaz na editaci: https://github.dev/skalahonza/jgdix

### Přidání koncertu

Pro přidání nového koncertu vytvořte nový soubor ve formátu markdown ve složce `_concerts`. Název souboru by měl být postupně číslovaný (např. `14.md`). Soubor musí obsahovat následující front matter:

```yaml
---
title: Název akce
date: RRRR-MM-DD
venue: Místo konání
link: https://example.com
---
```

### Úprava členů kapely

Pro úpravu seznamu členů kapely otevřete soubor `_data/members.yml`. Jedná se o YAML soubor se seznamem členů pod klíčem `members`. Každý člen má následující vlastnosti:

* `name`: Jméno člena kapely
* `instrument`: Nástroj(e), které hraje
* `image`: Cesta k obrázku člena ve složce `/img/band/`

Pro přidání nového člena přidejte nový záznam do seznamu. Pro odstranění člena smažte jeho záznam.

### Úprava seznamu skladeb

Pro úpravu seznamu skladeb na webu otevřete soubor `_data/tracks.yml`. Tento YAML soubor obsahuje seznam skladeb pod klíčem `tracks`. Každá skladba má následující vlastnosti:

* `title`: Název skladby
* `file`: Cesta k audio souboru ve složce `/audio/`

Pro přidání nové skladby přidejte nový záznam do seznamu. Pro odstranění skladby smažte její záznam.

## Jak spustit lokálně

1. Spusťte `docker-compose up -d`
2. Otevřete [http://localhost:4000](http://localhost:4000)
3. Hotovo
