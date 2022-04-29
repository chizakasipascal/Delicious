import 'package:flutter/material.dart';

import '../views/screens/screens.dart';

class Routes {
  Routes._();
  static const String initial = 'initial';
  static const String login = '/login';
  static const String enregistreUser = '/enregistre';
  static const String espace_revendeur = '/espace_revendeur';
  static const String espace_promoteur = '/espace_promoteur';
  static const String espace_client = '/espace_client';
  static const String historique = '/historique';
  static const String multicarte = '/multicarte';
  static const String motdepasseperdu = '/motdepasseperdu';
  static const String nouveau_mot_de_passe = '/nouveau_mot_de_passe';
  static const String notification = '/notifacation';
  static const String code_sms = '/code_sms';
  static const String chat = '/chat';
  static const String creer_ticket = '/creer_ticket';
  static const String statistique = '/statistique';
  static const String commission = '/commission';

  static final routes = <String, WidgetBuilder>{
    initial: (context) => Splash(),
    login: (context) => LoginScreen(),
    enregistreUser: (context) => EnregistreUser(),
    espace_revendeur: (context) => EspaceRevendeurScreen(),
    espace_promoteur: (context) => EspacePromoteurScreen(),
    espace_client: (context) => EspaceClientScreen(),
    historique: (context) => HistoriqueScreen(),
    multicarte: (context) => MultiCarteScreen(),
    motdepasseperdu: (context) => MotDePassePerdu(),
    code_sms: (context) => EntreCodeSmsRecu(),
    nouveau_mot_de_passe: (context) => NouveauMotDePasse(),
    notification: (context) => NotificationScreen(),
    chat: (contex) => TicketScreen(),
    creer_ticket: (contex) => CreerTicketScreen(),
    statistique: (context) => StatistiqueScreen(),
    commission: (context) => Commission(),
  };
}
