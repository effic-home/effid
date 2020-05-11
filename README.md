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
- une pile TIG (Telegraf InfluxDB Grafana) afin de superviser le système
- Portainer, afin de proposer un contrôle des conteneurs

### Installation

EFFID peut être installé sur un Raspberry Pi avec cette commande :

#### curl

```shell
sh -c "$(curl -fsSL https://raw.githubusercontent.com/effic-home/effid/master/install.sh)"
```

Lors du démarrage de certaines composantes, il sera demandé à l'utilisateur de créer des mots de passe afin de sécuriser l'installation.
