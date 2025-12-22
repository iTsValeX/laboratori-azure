Descrizione del progetto

In questo laboratorio ho configurato un Azure Storage Account con un Blob Container dedicato allo storage di script di automazione.
All’interno del container ho caricato uno script creato tramite Visual Studio Code, utilizzato per automatizzare l’avvio dei servizi Internet Information Services (IIS) su una VM Windows Server e la creazione di una pagina web HTML.

Questo scenario simula un approccio Infrastructure & Configuration Automation in ambiente cloud.

Obiettivi:

- Creare un Azure Storage Account

- Configurare un Blob Container per la gestione di script

- Caricare uno script di automazione creato con Visual Studio Code

- Automatizzare l’avvio dei servizi IIS su una VM Windows Server

- Generare automaticamente una pagina web HTML

- Comprendere l’integrazione tra Storage, VM e automazione

Servizi Azure utilizzati:

- Azure Storage Account

- Blob Storage (Container)

- Azure Virtual Machines (Windows Server)

- Internet Information Services (IIS)

- Azure Portal

- Visual Studio Code

Attività svolte:
1. Creazione dell’Azure Storage Account

- Ho creato uno Storage Account per ospitare file di script utilizzati dall’automazione.

Percorso:
Storage Accounts → Create

Configurazioni principali:

- Name

- Region: stessa della VM

- Performance: Standard

- Redundancy: LRS

- Lo Storage Account funge da repository centralizzato per gli script.

2. Creazione del Blob Container:

All’interno dello Storage Account ho creato un container dedicato agli script.

Percorso:
Storage Account → Containers → Create

Impostazioni:

- Container name: scripts

- Public access level: Private

- Questo garantisce sicurezza e controllo sull’accesso ai file.

3. Creazione dello script di automazione:
Utilizzando Visual Studio Code, ho creato uno script PowerShell con le seguenti funzionalità:

- Avvio del servizio IIS (W3SVC)

- Verifica che IIS sia installato

- Creazione di una pagina index.html personalizzata

- Salvataggio della pagina nella directory predefinita di IIS

Esempio di attività automatizzate dallo script:

- Gestione dei servizi Windows

- Scrittura file HTML

- Configurazione del web server

4. Caricamento dello script nel Blob Container:
- Lo script creato in Visual Studio Code è stato caricato nel container scripts dello Storage Account.

Percorso:
Container → Upload → Select file

- In questo modo lo script è disponibile come risorsa centralizzata e riutilizzabile.

5. Esecuzione dell’automazione sulla VM:
- Lo script è stato utilizzato dalla VM Windows Server per avviare automaticamente la configurazione del Web Server.

Lo script:

- Avvia i servizi Internet Information Services

- Crea la pagina web HTML nella directory:

C:\inetpub\wwwroot\


- Rende immediatamente disponibile il contenuto web

- Questo approccio riduce le operazioni manuali e garantisce consistenza.

6. Verifica del risultato:
- Dal browser ho verificato il corretto funzionamento accedendo a:

http://IP_PUBBLICO_DELLA_VM

- La pagina HTML generata automaticamente dallo script è risultata correttamente visibile.

Risultato finale:
- Lo Storage Account ospita con successo script di automazione utilizzati per configurare servizi su una VM Windows Server.
Il Web Server IIS viene avviato automaticamente e la pagina web HTML viene creata senza interventi manuali, dimostrando un approccio orientato all’automazione e alla standardizzazione.

Competenze acquisite:

- Creazione e gestione di Azure Storage Account

- Utilizzo di Blob Storage per la distribuzione di script

- Automazione tramite PowerShell

- Integrazione tra Storage e Virtual Machines

- Deploy automatico di servizi IIS

- Utilizzo di Visual Studio Code per scripting e gestione infrastrutturale

Principi di automazione e Infrastructure as Code (concettuale)
