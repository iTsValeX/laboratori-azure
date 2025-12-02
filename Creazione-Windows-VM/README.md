
Creazione di una Virtual Machine su Microsoft Azure
Descrizione del progetto

In questo laboratorio ho realizzato la creazione e configurazione completa di una Virtual Machine su Microsoft Azure, simulando un ambiente aziendale standard. L’obiettivo era comprendere tutti i componenti infrastrutturali necessari al deploy di una VM e le relative configurazioni di rete e sicurezza.

Obiettivi:

- Creare una Virtual Machine utilizzando Azure Portal

- Configurare rete, sicurezza e accesso

- Comprendere il ruolo di Resource Group, VNet, Subnet e NSG

- Effettuare la connessione alla VM tramite RDP/SSH

Servizi Azure utilizzati:

- Azure Virtual Machines

- Resource Groups

- Virtual Networks (VNet)

- Subnet

- Network Security Groups (NSG)

- Public IP

- Managed Disks

Panoramica delle attività svolte
1. Creazione del Resource Group

- Ho creato un Resource Group dedicato per ospitare tutte le risorse del laboratorio.

2. Configurazione della Virtual Machine

- Selezione dell’immagine (es. Windows Server / Ubuntu)

- Dimensionamento della VM in base ai requisiti (es. B1s / B2s)

- Configurazione dell’account amministratore

- Scelta del tipo di disco gestito

3. Configurazione della rete

Durante la creazione ho configurato:

- Virtual Network e Subnet

- Network Security Group con regole per:

- SSH (porta 22) o RDP (porta 3389)

- Public IP associato alla VM

Questo ha permesso l’accesso sicuro alla macchina e la segmentazione della rete.

4. Accesso alla VM

Windows: connessione tramite RDP

Da qui ho verificato il funzionamento della VM e la corretta applicazione delle regole di rete.

Risultato finale:

La Virtual Machine è stata distribuita correttamente, resa accessibile e protetta tramite NSG.
Il laboratorio ha permesso di acquisire familiarità con i componenti core di Azure, fondamentali per la gestione di ambienti cloud in contesti reali.

Link Screenshot della macchina configurata: Creazione-Windows-VM/Screenshot
