import 'package:eldercare_flutter/features/houses/presentation/houses_page.dart';
import 'package:eldercare_flutter/main.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:serverpod_auth_google_flutter/serverpod_auth_google_flutter.dart';

import '../../home/presentation/home.dart';
import '../data/google_auth_api.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (defaultTargetPlatform == TargetPlatform.iOS)
              SignInWithGoogleButton(
                onSignedIn: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HousesWidget(),
                    ),
                  )
                },
                caller: client.modules.auth,
                redirectUri: Uri.parse(
                  'http://localhost:5055',
                ),
                serverClientId: '850432245023-llodevhcid6cnrmea7cvp3gkpc28mv6g.apps.googleusercontent.com',
                clientId: '850432245023-llodevhcid6cnrmea7cvp3gkpc28mv6g.apps.googleusercontent.com',
              ),
              if (kIsWeb)
              SignInWithGoogleButton(
                onSignedIn: () => {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>
                          HousesWidget(),
                    ),
                  )
                },
                caller: client.modules.auth,
                redirectUri: Uri.parse(
                  'http://localhost:5055',
                ),
                clientId: '850432245023-cef0fcbn218n6oc0u0nd7r6ro28169lj.apps.googleusercontent.com',
              ),
          ],
        ),
      ),
    );
  }
}