Descrizione del progetto:

In questo laboratorio ho realizzato la copia del disco di una Virtual Machine tramite Snapshot, per poi utilizzarlo come base per la creazione di un nuovo disco da collegare a una seconda VM.
L’attività simula uno scenario reale di backup, recovery o clonazione dei dati in ambienti aziendali.

Obiettivi:

- Creare uno Snapshot del disco OS o data-disk di una VM esistente

- Generare un nuovo disco Azure a partire dallo snapshot

- Collegare il nuovo disco a una seconda VM

- Comprendere i meccanismi di backup point-in-time e gestione dello storage in Azure

Servizi Azure utilizzati:

- Azure Virtual Machines

- Managed Disks

- Snapshots

- Azure Storage Architecture

- Azure Portal

Attività svolte:
1. Identificazione della VM sorgente

- Ho individuato la VM dalla quale estrarre il disco.
Nella sezione:

Virtual Machine → Disks

ho individuato il disco OS (o data disk) da clonare.

2. Creazione dello Snapshot

Dal disco selezionato ho creato uno snapshot point-in-time.

Percorso:
VM → Disks → [Nome del Disco] → Create Snapshot

Ho Configurato lo snapshot:

- Nome

- Resource Group: dedicato o esistente

- Snapshot type: Full

- Region: stessa del disco sorgente

- Una volta confermato, Azure ha creato lo snapshot mantenendo lo stato del disco al momento dell’operazione.

3. Creazione di un nuovo disco dallo Snapshot

Lo snapshot è stato utilizzato come sorgente per generare un disco Azure indipendente.

Percorso:
Snapshot → Create Disk

Parametri configurati:

- Nome

- Source type: Snapshot

- Performance tier: in base al lab (ES. Standard SSD / Premium SSD)

- Disk size: identica allo snapshot

- Resource Group: stessa destinazione della VM nuova

Il risultato è un Managed Disk pronto per essere allegato a una nuova VM.

4. Collegamento del disco alla VM di destinazione

- Ho aperto la VM sulla quale doveva essere collegato il nuovo disco.

Percorso:
- VM → Disks → Add Data Disk

Impostazioni:

- Disk name

- LUN: assegnato automaticamente

- Caching: None / ReadOnly (in base al caso)

- Dopo il salvataggio, Azure ha montato il disco sulla VM.

5. Configurazione all’interno della VM

- All’interno della nuova VM ho completato il riconoscimento del disco.

Windows Server

Ho utilizzato:

- Disk Management → Bring Online → Assign Drive Letter

 per rendere il disco accessibile.

Risultato finale

Lo snapshot è stato convertito con successo in un nuovo disco e collegato a una seconda VM.
Questo flusso dimostra competenze fondamentali in:

- backup point-in-time

- disaster recovery

- migrazioni e clonazione dei dati

- gestione dei Managed Disk in Azure

Competenze acquisite:

- Creazione e gestione di Snapshot in Azure

- Provisioning di Managed Disks da snapshot

- Collegamento e gestione di dischi su VM Windows o Linux

- Procedure di migrazione e ripristino su ambienti cloud IaaS

- Comprensione delle best practice di storage su Azure
