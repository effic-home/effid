# 🆔EFFID
<p align="center">
  <img src="https://github.com/effid/effid/blob/master/effid_logo.jpg">
</p>

# 📄Description

EFFID est composé de plusieurs briques qui communiquent les unes avec les autres.

De ce fait, EFFID fonctionne grâce à docker, et le module docker-compose pour construire le stack.

Le fichier docker-compose télécharge et déploie les composantes suivantes :

- l'API
- un serveur Apache avec le site web d'administration
- une base de données MySQL avec les tables et schémas
- Un outil de supervision le système avec Netdata et la pile TIG
- Portainer, afin de proposer un contrôle des conteneurs

# 🔬Environnement de tests

Il existe une démo de l'application hébergée dans un environnement de test.

L'application est disponnible sur [ici](https://effid.apollonian.fr)

L'API est consultable sur [ici](https://api.apollonian.fr/users)

![DEMO](https://img.shields.io/website?down_color=red&down_message=Hors%20ligne&up_color=green&up_message=En%20ligne&url=https%3A%2F%2Feffid.apollonian.fr)
![API](https://img.shields.io/website?down_color=red&down_message=Hors%20ligne&up_color=green&up_message=En%20ligne&url=https%3A%2F%2Fapi.apollonian.fr)

# 🚀Installation

EFFID peut être installé sur un Raspberry Pi avec cette commande :

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/effic-home/effid/master/install.sh)"
```

Il vous suffit ensuite d'éditer le fichier .env afin de personnaliser les mots de passes.

Pour démarrer les services :

```shell
docker-compose up -d
```
# 🗓Roadmap

# ⭐️Membres du projet
