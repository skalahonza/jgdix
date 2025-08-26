JG Dix website
====================

This is the official website of the JG Dix band, built with Jekyll.

## How to manage the website content

### Adding a Concert

To add a new concert, create a new markdown file in the `_concerts` directory. The filename should be an incrementing number (e.g., `14.md`). The file should contain the following front matter:

```yaml
---
title: Name of the event
date: YYYY-MM-DD
venue: Location of the event
---
```

### Modifying Band Members

To modify the list of band members, edit the `_data/members.yml` file. This is a YAML file containing a list of members. Each member has the following properties:

- `name`: The name of the band member.
- `instrument`: The instrument(s) the member plays.
- `image`: The path to the member's image in the `/img/band/` directory.

To add a new member, add a new entry to the list. To remove a member, delete their entry.

### Modifying the Track List

To modify the track list on the website, edit the `_data/tracks.yml` file. This is a YAML file containing a list of tracks. Each track has the following properties:

- `title`: The title of the track.
- `file`: The path to the audio file in the `/audio/` directory.

To add a new track, add a new entry to the list. To remove a track, delete its entry.

## How to run locally

1.  Run `docker-compose up -d`
2.  Go to http://localhost:4000
3.  Done
