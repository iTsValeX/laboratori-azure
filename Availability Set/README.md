LAB – Creazione di un Availability Set con due Virtual Machine su Azure
Descrizione del progetto:

In questo laboratorio ho configurato un Availability Set su Microsoft Azure per garantire alta disponibilità di due Virtual Machine.
Entrambe le VM sono state inserite nello stesso Availability Set, con configurazione di 2 Fault Domains e 5 Update Domains, simulando un’architettura resiliente tipica di ambienti enterprise.

Obiettivi:

- Creare un Availability Set in Azure

- Configurare Fault Domains e Update Domains

- Distribuire due VM all’interno dello stesso Availability Set

- Comprendere i concetti di alta disponibilità e resilienza

- Applicare best practice di progettazione IaaS su Azure

Servizi Azure utilizzati: 

- Azure Virtual Machines

- Availability Sets

- Resource Groups

- Azure Compute Architecture

- Azure Portal


Attività svolte:
1. Creazione dell’Availability Set

Ho creato un Availability Set dedicato prima della creazione delle VM.

Percorso:
Availability Sets → Create

Configurazioni:

- Name

- Region: stessa delle VM

- Fault Domains: 2

- Update Domains: 5

Questa configurazione garantisce che le VM siano distribuite su:

- hardware fisicamente separato (Fault Domains)

- cicli di aggiornamento distinti (Update Domains)

2. Creazione della prima Virtual Machine

Durante la creazione della prima VM ho associato l’Availability Set precedentemente creato.

Configurazione chiave:

Availability options: Availability Set

Availability Set: la stessa precedentemente creata

La VM viene automaticamente assegnata a un Fault Domain e Update Domain.

3. Creazione della seconda Virtual Machine

Ho creato una seconda VM con le stesse caratteristiche infrastrutturali, associandola allo stesso Availability Set.

Questo assicura che:

- le VM non condividano lo stesso hardware fisico

- non vengano aggiornate contemporaneamente

4. Verifica della distribuzione

Nella sezione dell’Availability Set ho verificato che:

- entrambe le VM risultano correttamente associate

- le VM sono distribuite su Fault Domains differenti

- le VM sono assegnate a Update Domains separati

Questa distribuzione garantisce continuità del servizio anche in caso di:

- guasti hardware

- aggiornamenti pianificati da Microsoft

Risultato finale:

Le due Virtual Machine sono state distribuite con successo all’interno dello stesso Availability Set, beneficiando di un’architettura ad alta disponibilità.
Questa configurazione riduce i tempi di inattività e aumenta l’affidabilità del servizio.

Competenze acquisite:

- Progettazione di architetture ad alta disponibilità su Azure

- Configurazione di Availability Set

- Comprensione di Fault Domains e Update Domains

Distribuzione resiliente di Virtual Machine

Best practice IaaS in ambienti enterprise
