Descrizione del progetto

In questo laboratorio ho creato una Azure Web App basata su ambiente Linux, configurando l’accesso tramite SSH per eseguire operazioni direttamente sul filesystem dell’applicazione.
Successivamente ho creato manualmente una pagina index.php utilizzando l’editor nano e ho verificato la corretta visualizzazione della pagina via browser.

Questo scenario dimostra competenze di deploy applicativo, gestione Web App su Azure e interazione con ambienti Linux.

Obiettivi:

- Creare una Azure Web App su ambiente Linux

- Accedere alla Web App tramite SSH

- Creare e modificare un file PHP direttamente dal terminale

- Testare il corretto funzionamento dell’applicazione web

- Comprendere il flusso di pubblicazione di una Web App su Azure

Servizi Azure utilizzati: 

- Azure App Service (Web App)

- App Service Plan

- Linux Runtime (PHP)

- Azure Portal

- SSH

- Nano Editor

Attività svolte
1. Creazione della Azure Web App

Dal portale Azure ho creato una nuova Web App.

Percorso:
- App Services → Create

Configurazioni principali:

- Web App name

- Publish: Code

- Runtime stack: PHP (Linux)

- Operating System: Linux

- Region

- App Service Plan: dedicato o esistente

Al termine, Azure ha distribuito l’ambiente applicativo.

2. Abilitazione e accesso tramite SSH

Dalla sezione della Web App ho utilizzato la funzionalità SSH per accedere al container Linux sottostante.

Percorso:
Web App → SSH

Questo consente di eseguire comandi direttamente sul filesystem dell’applicazione.

3. Creazione del file index.php

All’interno della Web App ho navigato nella directory root dell’applicazione:
- tramite comando nano ho creato un file "index.php"

Test della Web App: 

Dal browser ho visitato l’URL pubblico della Web App:

- https://webapp-lab-php.azurewebsites.net


La pagina PHP è stata correttamente interpretata e visualizzata, confermando:

- corretto funzionamento del runtime PHP

- deploy riuscito del file

- corretta configurazione della Web App

Risultato finale:

La Azure Web App è stata configurata con successo su ambiente Linux.
L’accesso SSH ha permesso la gestione diretta dei file applicativi e la pagina PHP è stata pubblicata e resa accessibile via browser.

Questo laboratorio dimostra la capacità di gestire applicazioni web in modalità PaaS su Azure.

Competenze acquisite:

- Creazione e gestione di Azure Web App

- Utilizzo di App Service su ambiente Linux

- Accesso e gestione tramite SSH

- Deploy manuale di applicazioni PHP

 - Utilizzo di editor Linux (nano)

- Comprensione del modello PaaS di Azure
