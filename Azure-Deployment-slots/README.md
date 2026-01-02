LAB – Creazione di un Deployment Slot “Beta-Testing” per una Azure Web App
Descrizione del progetto:

In questo laboratorio ho configurato un Deployment Slot sulla mia Azure Web App principale.
Il deployment slot beta-testing permette di testare nuove versioni dell’applicazione in un ambiente separato, senza influenzare la versione di produzione.
All’interno dello slot ho creato un nuovo file index.php per verificare il corretto funzionamento delle modifiche prima del deploy definitivo.

Questo scenario rappresenta una pratica comune in ambienti di sviluppo e produzione per garantire Continuous Deployment e test sicuri.

Obiettivi:

- Creare un deployment slot su Azure Web App

- Configurare lo slot per l’ambiente di test beta-testing

- Creare un nuovo file index.php in wwwroot dello slot

- Testare la visualizzazione della pagina separatamente dall’ambiente di produzione

- Comprendere il flusso di test e deployment sicuro in Azure App Service

Servizi Azure utilizzati:

- Azure Web App (App Service)

- Deployment Slots

- Linux Runtime (PHP)

- SSH / Terminale Web App

- App Service Plan

- Visual Studio Code / Nano

Attività svolte:
1. Creazione del Deployment Slot

- Dal portale Azure, nella Web App principale:

- Web App → Deployment Slots → Add Slot

Configurazioni principali:

- Name: beta-testing

- Configuration Source: Production

- Clone settings from production: No

- Il deployment slot è ora attivo come ambiente separato ma nello stesso App Service Plan.

2. Accesso allo slot tramite SSH

Ho aperto la sessione SSH sul deployment slot beta-testing:

Web App → beta-testing → SSH


Questo consente di eseguire operazioni sui file senza impattare la versione di produzione.

3. Creazione del file index.php

All’interno della directory wwwroot dello slot ho creato un nuovo file index.php usando nano:

cd /home/site/wwwroot
nano index.php

Dopo il salvataggio, il file è immediatamente disponibile nello slot di test.

4. Test della Web App nello slot

- Ho verificato la corretta visualizzazione della pagina dal browser usando l’URL specifico dello slot

La pagina index.php è stata correttamente interpretata e visualizzata, confermando:

- funzionamento dello slot come ambiente separato

- sicurezza nel testare nuove versioni senza influenzare la produzione

c- orretto deploy del file PHP

Risultato finale:

Il deployment slot beta-testing è stato creato con successo e il file PHP di test è attivo.
Questa configurazione permette di sviluppare, testare e validare nuove versioni dell’applicazione prima di effettuare il swap con la produzione, garantendo continuità del servizio e sicurezza.

Competenze acquisite:

- Creazione e gestione di deployment slots in Azure App Service

- Best practice per Continuous Deployment e test isolati

- Accesso SSH a slot Linux per modifiche sui file

- Creazione di pagine PHP tramite terminale

- Comprensione della separazione tra ambiente di test e produzione

- Deploy sicuro e test-driven in ambiente PaaS
