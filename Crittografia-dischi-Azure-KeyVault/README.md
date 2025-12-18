Descrizione del progetto:

In questo laboratorio ho implementato la crittografia dei dischi di una Virtual Machine Windows Server in Azure utilizzando Azure Key Vault e un Disk Encryption Set (DES).
L’obiettivo era proteggere i dati a riposo, gestire le chiavi di crittografia in modo centralizzato e configurare correttamente i permessi di accesso per la gestione della sicurezza.

Obiettivi:

- Creare un Azure Key Vault per la gestione delle chiavi di crittografia

- Configurare un Disk Encryption Set associato al Key Vault

- Abilitare la crittografia dei dischi di una VM Windows Server

- Assegnare al proprio utente i permessi per la gestione delle chiavi e della crittografia

- Comprendere le best practice di sicurezza e compliance su Azure

Servizi Azure utilizzati:

- Azure Virtual Machines (Windows Server)

- Azure Key Vault

- Disk Encryption Set (DES)

- Managed Disks

- Azure Active Directory (IAM)

- Azure Portal

Attività svolte:
1. Creazione di Azure Key Vault

Ho creato un Key Vault dedicato per la gestione delle chiavi di crittografia dei dischi.

Percorso:
- Key Vaults → Create

Configurazioni principali:

- Name

- Region: stessa della VM

- Pricing tier: Standard

- Soft delete: Enabled (best practice)

- Purge protection: Enabled (best practice)

Il Key Vault funge da archivio sicuro per chiavi e segreti crittografici.

2. Assegnazione dei permessi al mio utente

Per poter gestire la crittografia, ho configurato gli accessi al Key Vault.

Nel Key Vault:
- Access configuration → Azure role-based access control (RBAC)

Ruoli assegnati:

- Key Vault Administrator

Questo consente la gestione completa delle chiavi e delle operazioni di crittografia.

3. Creazione del Disk Encryption Set (DES)

Ho creato un Disk Encryption Set per collegare i dischi della VM al Key Vault.

Percorso:
- Disk Encryption Sets → Create

Configurazioni:

- Name

Region: stessa della VM

- Key Vault: la stessa del key vault

- Key type: Customer-managed key (CMK)

Durante la creazione, Azure ha generato una Managed Identity per il DES.

4. Concessione accessi al Disk Encryption Set

Affinché il DES potesse utilizzare il Key Vault, ho assegnato alla sua Managed Identity i permessi necessari.

Nel Key Vault:
- Access control (IAM) → Add role assignment

Ruolo assegnato al DES:

Key Vault Crypto Service Encryption User

Questo passaggio è fondamentale per permettere la crittografia dei dischi.

5. Associazione del Disk Encryption Set al disco della VM

Ho associato il Disk Encryption Set al disco della VM Windows Server.

Percorso:
Virtual Machine → Disks → OS Disk → Disk Encryption Set

Ho selezionato:

Disk Encryption Set: nome della key vault

Dopo il salvataggio, il disco risulta protetto tramite Customer-Managed Key.

6. Verifica della crittografia

Ho verificato che:

Il disco utilizza il Disk Encryption Set

Il Key Vault è correttamente associato

La VM risulta protetta con crittografia a riposo

Questa configurazione garantisce un livello di sicurezza avanzato conforme agli standard enterprise.

Risultato finale: 

La VM Windows Server utilizza dischi crittografati tramite Customer-Managed Keys, con chiavi archiviate e gestite in Azure Key Vault.
Il laboratorio dimostra la capacità di implementare soluzioni di sicurezza avanzate per la protezione dei dati in ambienti cloud.

Competenze acquisite:

- Implementazione di Azure Key Vault per la gestione delle chiavi

- Configurazione di Disk Encryption Set (DES)

- Crittografia dei dischi con Customer-Managed Keys

- Gestione permessi tramite RBAC

- Best practice di sicurezza e compliance su Azure

- Protezione dei dati a riposo in ambienti IaaS
