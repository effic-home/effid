# effid
<p align="center">
  <img src="https://upload.wikimedia.org/wikipedia/fr/thumb/3/3b/Raspberry_Pi_logo.svg/190px-Raspberry_Pi_logo.svg.png">
</p>

### Description

EFFID est composé de plusieurs briques qui communiquent les unes avec les autres.

De ce fait, EFFID fonctionne grâce à docker, et le module docker-compose pour construire le stack.

Le fichier docker-compose télécharge et déploie les composantes suivantes :

- l'API
- un serveur Apache avec le site web d'administration
- une base de données MySQL avec les tables et schémas
- Un outil de supervision le système avec Netdata et la pile TIG
- Portainer, afin de proposer un contrôle des conteneurs

### Installation

EFFID peut être installé sur un Raspberry Pi avec cette commande :

#### curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/effic-home/effid/master/install.sh)"
```

Il vous suffit ensuite d'éditer le fichier .env afin de personnaliser les mots de passes.

Pour démarrer les services :

```shell
docker-compose up -d
```
