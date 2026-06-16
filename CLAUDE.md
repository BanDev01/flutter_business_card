# BN Card — Évolution du projet

## Description
Application Flutter de carte de visite numérique pour **Bertin Ngongo** (Full Stack Developer & Software/Network Engineer, Fondateur de BE Technology).

---

## Ce qui est fait ✅

- Carte de visite complète avec vraies informations (nom, titre, téléphone, email)
- Boutons : Appeler, WhatsApp, Email, Portfolio, GitHub, LinkedIn
- Badge disponibilité : Disponible · Présentiel · Télétravail · Hybride
- Localisation : Lubumbashi, RD Congo
- Expérience : "7+ ans d'expérience · Fondateur de BE Technology" (lien cliquable vers https://be-technology.net)
- Photo de profil locale (assets/images/profile.jpg)
- Nom de l'app : **BN Card**
- Icône : monogramme BN blanc sur dégradé violet→bleu
- Fix URL launcher Android (schémas https, http, tel, mailto déclarés dans le manifest)

---

## En cours / À faire ⏳

### Publication sur les stores

**Étape suivante : choisir l'Application ID (décision permanente)**

> L'Application ID ne peut jamais changer après publication sur les stores.
> Options discutées :
> - `net.betechnology.bncard` ← **recommandé** (lié au domaine be-technology.net)
> - `com.bertinngongo.bncard`
> - `com.ngongo.bncard`

**Après validation de l'Application ID, faire dans l'ordre :**
1. Mettre à jour l'Application ID dans `android/app/build.gradle.kts`
2. Générer le keystore de signature (keytool)
3. Configurer la signature release dans `build.gradle.kts`
4. Générer l'APK release signé (`flutter build apk --release`)
5. Préparer les assets stores (screenshots, description, politique de confidentialité)
6. Soumettre sur Google Play Store (compte en cours de validation)
7. Soumettre sur Samsung Galaxy Store (compte gratuit)
8. Soumettre sur Amazon Appstore (compte gratuit)

---

## Informations utiles

- Repo GitHub : https://github.com/BanDev01/flutter_business_card
- Portfolio : https://bandev01.github.io/portfolio/
- Site BE Technology : https://be-technology.net
- Compte Google Play : en cours de validation (25$ payé)
