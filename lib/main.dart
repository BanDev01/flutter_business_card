import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BusinessCardScreen(),
    );
  }
}

class BusinessCardScreen extends StatelessWidget {
  const BusinessCardScreen({super.key});

  static const String _phone = "+243818226824";
  static const String _email = "bertinngongo1@gmail.com";
  static const String _whatsapp = "https://wa.me/243818226824";
  static const String _linkedin =
      "https://www.linkedin.com/in/bertin-ngongo-96999b20a";
  static const String _github = "https://github.com/BanDev01";
  static const String _portfolio = "https://bandev01.github.io/portfolio/";

  Future<void> _launch(String url) async {
    final Uri uri = Uri.parse(url);
    if (await canLaunchUrl(uri)) {
      await launchUrl(uri, mode: LaunchMode.externalApplication);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFF6A11CB), Color(0xFF2575FC)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 24),
              child: Container(
                padding: const EdgeInsets.all(28),
                margin: const EdgeInsets.symmetric(horizontal: 20),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.95),
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 20,
                      offset: Offset(0, 10),
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // Avatar
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(
                          color: const Color(0xFF6A11CB),
                          width: 4,
                        ),
                      ),
                      child: const CircleAvatar(
                        radius: 55,
                        backgroundImage:
                            AssetImage("assets/images/profile.jpg"),
                      ),
                    ),
                    const SizedBox(height: 16),

                    // Nom
                    const Text(
                      "Bertin Ngongo",
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1A1A2E),
                      ),
                    ),
                    const SizedBox(height: 6),

                    // Titre
                    const Text(
                      "Full Stack Developer\nSoftware & Network Engineer",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        color: Color(0xFF6A11CB),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 8),

                    // Localisation
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.location_on,
                            size: 14, color: Colors.black45),
                        SizedBox(width: 4),
                        Text(
                          "Lubumbashi, RDC",
                          style:
                              TextStyle(fontSize: 13, color: Colors.black45),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),

                    // Badge disponibilité
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 6),
                      decoration: BoxDecoration(
                        color: const Color(0xFF2575FC).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                          color: const Color(0xFF2575FC).withOpacity(0.4),
                        ),
                      ),
                      child: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: const [
                          Icon(Icons.circle,
                              size: 8, color: Color(0xFF22C55E)),
                          SizedBox(width: 6),
                          Text(
                            "Disponible · Présentiel · Télétravail · Hybride",
                            style: TextStyle(
                              fontSize: 11,
                              color: Color(0xFF2575FC),
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 24),

                    // Divider
                    const Divider(height: 1, color: Color(0xFFE5E7EB)),
                    const SizedBox(height: 20),

                    // Boutons contact principaux
                    Row(
                      children: [
                        Expanded(
                          child: _actionButton(
                            icon: Icons.call,
                            label: "Appeler",
                            color: const Color(0xFF6A11CB),
                            onPressed: () => _launch("tel:$_phone"),
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: _actionButton(
                            icon: Icons.chat,
                            label: "WhatsApp",
                            color: const Color(0xFF25D366),
                            onPressed: () => _launch(_whatsapp),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 12),

                    // Bouton email (pleine largeur)
                    _actionButton(
                      icon: Icons.email_outlined,
                      label: "bertinngongo1@gmail.com",
                      color: const Color(0xFFEA4335),
                      onPressed: () => _launch("mailto:$_email"),
                      fullWidth: true,
                    ),
                    const SizedBox(height: 20),

                    // Divider
                    const Divider(height: 1, color: Color(0xFFE5E7EB)),
                    const SizedBox(height: 16),

                    // Liens réseaux
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        _iconLink(
                          icon: Icons.work_outline,
                          label: "Portfolio",
                          color: const Color(0xFF6A11CB),
                          onPressed: () => _launch(_portfolio),
                        ),
                        _iconLink(
                          icon: Icons.code,
                          label: "GitHub",
                          color: const Color(0xFF1A1A2E),
                          onPressed: () => _launch(_github),
                        ),
                        _iconLink(
                          icon: Icons.business_center_outlined,
                          label: "LinkedIn",
                          color: const Color(0xFF0A66C2),
                          onPressed: () => _launch(_linkedin),
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),

                    // Expérience
                    const SizedBox(height: 12),
                    GestureDetector(
                      onTap: () => _launch("https://be-technology.net"),
                      child: RichText(
                        textAlign: TextAlign.center,
                        text: const TextSpan(
                          style: TextStyle(fontSize: 11, color: Colors.black38),
                          children: [
                            TextSpan(text: "7+ ans d'expérience · Fondateur de "),
                            TextSpan(
                              text: "BE Technology",
                              style: TextStyle(
                                color: Color(0xFF6A11CB),
                                fontWeight: FontWeight.w600,
                                decoration: TextDecoration.underline,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  static Widget _actionButton({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
    bool fullWidth = false,
  }) {
    final btn = ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: color,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      onPressed: onPressed,
      icon: Icon(icon, size: 18),
      label: Text(label, style: const TextStyle(fontSize: 13)),
    );

    return fullWidth ? SizedBox(width: double.infinity, child: btn) : btn;
  }

  static Widget _iconLink({
    required IconData icon,
    required String label,
    required Color color,
    required VoidCallback onPressed,
  }) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(12),
            decoration: BoxDecoration(
              color: color.withOpacity(0.1),
              shape: BoxShape.circle,
            ),
            child: Icon(icon, color: color, size: 22),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
                fontSize: 11, color: color, fontWeight: FontWeight.w600),
          ),
        ],
      ),
    );
  }
}
