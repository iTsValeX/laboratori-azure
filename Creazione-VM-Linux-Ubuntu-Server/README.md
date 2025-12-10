Descrizione del progetto

In questo laboratorio ho effettuato il deploy di una Virtual Machine basata su Ubuntu Linux all’interno di Microsoft Azure.
L’obiettivo era creare un ambiente Linux accessibile tramite SSH, comprendere i componenti infrastrutturali coinvolti e configurare le principali impostazioni di rete e sicurezza.

Obiettivi:

- Creare una VM Linux utilizzando Azure Portal

- Configurare autenticazione e rete

- Abilitare l’accesso esterno tramite SSH

- Comprendere il ruolo di Resource Group, Virtual Network e NSG

- Verificare il funzionamento della VM tramite accesso da terminale

Servizi Azure utilizzati:

- Azure Virtual Machines (Ubuntu)

- Resource Groups

- Virtual Networks (VNet)

- Subnet

- Network Security Groups (NSG)

- Public IP

- Azure Portal

Attività svolte: 

1. Creazione della Virtual Machine Ubuntu Dal portale Azure:

- Virtual Machines → Create → Azure Virtual Machine

Configurazioni principali:

- Image: Ubuntu Server LTS

- Size: B1s / B2s (a seconda del lab)

Authentication type:

- SSH public key (best practice) oppure

- Password (se richiesto dal lab)

- Username amministratore: definito durante la creazione

- Porta SSH abilitata: 22

2. Configurazione rete

- Durante la creazione Azure ha generato:

- Una Virtual Network dedicata

- Una Subnet per la VM

- Un Network Security Group (NSG)

- Un Public IP per l’accesso remoto

Nel NSG ho verificato la presenza della regola in entrata:

- SSH (TCP/22)
Questa regola permette la connessione da terminale.

3. Deploy della VM

Una volta completate le configurazioni, ho avviato il deploy tramite:

- Review + Create → Create

- Azure ha generato e collegato automaticamente tutte le risorse necessarie.

4. Connessione alla VM tramite SSH

- Dopo l’avvio della VM, ho recuperato l’IP pubblico e ho effettuato la connessione dal mio terminale.

Esempio di comando:

ssh nomeutente@IP_PUBBLICO

Risultato finale:

La Virtual Machine Ubuntu è stata distribuita con successo, resa accessibile tramite SSH e configurata secondo le best practice per ambienti Linux in cloud.
Il laboratorio ha permesso di acquisire familiarità con le architetture IaaS di Azure e con la gestione remota di sistemi Linux.

Competenze acquisite:

- Provisioning di VM Linux in ambiente Azure

- Autenticazione SSH e gestione chiavi

- Configurazione della rete attraverso NSG

- Comprensione di VNet, subnet e IP pubblico

- Utilizzo del terminale Linux per operazioni amministrative

