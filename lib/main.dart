import 'package:flutter/material.dart';
import 'package:gmail_ui_clone/email_entry.dart';

void main() {
  runApp(GmailCloneApp());
}

/// This widget is the root of our application.
class GmailCloneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gmail Clone',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => {},
          backgroundColor: Colors.red,
          child: Center(
            child: Icon(
              Icons.edit,
              size: 25,
            ),
          ),
        ),
        appBar: AppBar(
          title: Text("Posta in arrivo"),
          backgroundColor: Colors.red,
          leading: IconButton(
            onPressed: () => {},
            icon: Icon(Icons.menu),
          ),
          actions: <Widget>[
            IconButton(
              onPressed: () => {},
              icon: Icon(Icons.search),
            ),
          ],
        ),
        body: ListView(
          children: SampleEntries,
        ),
      ),
    );
  }
}

const SampleEntries = <Widget>[
  EmailEntry(
    sender: "GDG Bari",
    object:
        "Domani: unisciti a 45 Membri per il Meetup \"Flutter Study Jam - App multipiattaforma in tempo record con Flutter\"",
    message:
        "domani Flutter Study Jam - App multipiattaforma in tempo record con Flutter",
    date: "25 nov",
    unread: true,
  ),
  EmailEntry(
    sender: "Mercatino Musicale",
    object: "Non perderti l'occasione! Speciale Black Friday",
    message:
        "fino al 26 novembre!Se non leggi correttamente questo questo messaggio, clicca qui",
    date: "21 nov",
    unread: true,
  ),
  EmailEntry(
    sender: "Segreteria Studenti",
    object: "Pubblicazione Voto Appello",
    message:
        "Le comunichiamo che l'esito della prova d'esame relativa al corso di",
    date: "16 nov",
    unread: true,
  ),
  EmailEntry(
    sender: "Poste Italiane S.p.A",
    object: "[SPAM] Convocazione urgente per rinnovo PostePay",
    message: "Gentile Cliente, La informiamo che la sua carta sta per scadere",
    date: "11 nov",
    unread: true,
  ),
  EmailEntry(
    sender: "Godurioso - Mozzarelle & Co.",
    object: "Annullamento spedizione",
    message:
        "a causa di un malinteso, annulliamo la spedizione a suo carico e le rimborsiamo l'importo",
    date: "5 nov",
    unread: false,
  ),
  EmailEntry(
    sender: "Alfonsino",
    object: "Di nuovo?",
    message:
        "Mado sta volta mi fai sclerare, la smetti di guardare i porno e rispondi su wazzapp!?",
    date: "27 ott",
    unread: false,
  ),
  EmailEntry(
    sender: "Segreteria Studenti",
    object: "Pubblicazione Voto Appello",
    message:
        "Le comunichiamo che l'esito della prova d'esame relativa al corso di",
    date: "26 ott",
    unread: false,
  ),
  EmailEntry(
    sender: "assistenza@paypal.it",
    object: "Ricevuta del tuo pagamento a Wind Tre S.p.A.",
    message: "4 ott 2018 22:17:11 CET Codice transazione 6DD29488YYA8K009L",
    date: "4 ott",
    unread: true,
  ),
  EmailEntry(
    sender: "Alfonsino",
    object: "DOVE SEI??!!",
    message: "Oh ma sono ore che ti cerco, ndo stai? vieni su wa!",
    date: "30 set",
    unread: true,
  ),
  EmailEntry(
    sender: "Faacebook",
    object: "[SPAM] Problema di accesso",
    message:
        "Reinserisci le tue credenziali per sbloccare l'accesso a Faacebook",
    date: "3 set",
    unread: false,
  ),
  EmailEntry(
    sender: "Vacanze da Poveri",
    object: "Ancora voglia di estate?",
    message:
        "Prenota subito il tuo viaggio, Grumo Appula a soli €15.00* con VDP!",
    date: "16 ago",
    unread: false,
  ),
  EmailEntry(
    sender: "Twitter",
    object: "Nuovo accesso a Twitter da Android",
    message: "Abbiamo rilevato un accesso recente al tuo account @michezio_.",
    date: "14 ago",
    unread: false,
  ),
  EmailEntry(
    sender: "Alfonsino",
    object: "E quindi te ne vai in vacanza eh?",
    message: "Divertiti a Rodi Garganico, io mi accontento di Dubai :P",
    date: "12 ago",
    unread: false,
  ),
  EmailEntry(
    sender: "Gmail Clone",
    object: "Benvenuto!",
    message:
        "Il team di Gmail Clone ti da il benvenuto sulla nostra nuova, originalissima piattaforma.",
    date: "1 ago",
    unread: true,
  ),
];
