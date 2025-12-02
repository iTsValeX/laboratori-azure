Descrizione del progetto:

In questo laboratorio ho configurato un Web Server su una macchina virtuale Windows Server ospitata su Microsoft Azure.
L’obiettivo era rendere disponibile una pagina web raggiungibile esternamente tramite protocollo HTTP (porta 80), comprendendo sia la parte di configurazione del sistema operativo sia la gestione della sicurezza di rete in Azure.

Obiettivi:

- Installare il ruolo Web Server (IIS) su Windows Server

- Configurare la VM per rispondere tramite HTTP

- Abilitare il traffico sulla porta 80 tramite Network Security Group

- Verificare il funzionamento del servizio web da browser esterno

Servizi Azure utilizzati:

- Azure Virtual Machines (Windows Server)

- Network Security Groups (NSG)

- Public IP Address

- Azure Portal

Attività svolte:
1. Accesso alla VM Windows Server

- Ho effettuato l’accesso alla macchina tramite RDP, utilizzando l’indirizzo IP pubblico della VM.
Nel Server Manager ho verificato la configurazione iniziale del sistema.

2. Installazione del Web Server IIS

Dal Server Manager ho installato il ruolo necessario:

- Server Manager → Add Roles and Features → Web Server (IIS)

L’installazione ha configurato automaticamente:

Servizi HTTP

Struttura file del web server (C:\inetpub\wwwroot)

Regole firewall di base per HTTP

3. Configurazione della sicurezza di rete su Azure (NSG)

Per permettere l’accesso HTTP dall’esterno, ho aperto la Porta 80 nel Network Security Group collegato alla VM.

- VM → Networking → Network Security Group → Inbound rules → Add rule

Impostazioni utilizzate:

- Porta: 80

- Protocollo: TCP

- Azione: Allow

- Nome regola

Questo passaggio abilita l’accesso al web server da client esterni.

4. Test del web server

Dal mio browser locale ho inserito:

http://IP_PUBBLICO_DELLA_VM


La VM ha correttamente risposto mostrando:

- la pagina iniziale predefinita di IIS

Risultato finale:

Il Web Server IIS è stato installato correttamente e reso raggiungibile tramite HTTP.
La configurazione dimostra competenze relative alla gestione di servizi Windows Server e alla configurazione della sicurezza di rete su Azure.

Competenze acquisite:

- Configurazione di ruoli in Windows Server (IIS)

- Gestione del firewall interno della VM

- Configurazione di Network Security Groups su Azure

- Pubblicazione di un servizio web in ambiente IaaS

- Comprensione del flusso rete → Azure → VM → Web Server
