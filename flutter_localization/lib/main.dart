import 'package:flutter/material.dart';
import 'package:flutter_localization/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(const FluttterLocalization());
}

class FluttterLocalization extends StatelessWidget {
  const FluttterLocalization({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      locale: const Locale('ar'),
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      home: const Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).title)),
      body: Center(
        child: Row(
          children: [
            Text(S.of(context).hello),
            Padding(
              padding:  EdgeInsets.only(
                left: isArabic() ? 0:16,
                right: isArabic()? 16:0,
              ),
              child: Text(S.of(context).name),
            ),
          ],
        ),
      ),
    );
  }

  bool isArabic() {
    return Intl.getCurrentLocale() == 'ar';
  }
}
