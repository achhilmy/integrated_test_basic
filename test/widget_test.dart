import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integrated_test/material_widget_test.dart';

void main() {
  testWidgets(
    "Test Materi Widget Test",
    (WidgetTester tester) async {
      ///build widget kita dan triger sebuah frame supaya benar benar muncul
      await tester.pumpWidget(
        const MaterialApp(
          home: MaterialWidgetTest(),
        ),
      );

      ///verifikasi bahwa ada 1 widget untuk menampilkan test "Materi Widget Test"
      ///Text ini berada pada AppBar kita
      expect(find.textContaining("Materi Widget Test"), findsOneWidget);

      /// Verifikasi bahwa ada 1 widget yang menampilkan text "Menunggu data dari socket"
      expect(find.textContaining("Contoh Untuk Widget Test"), findsOneWidget);

      ///verifikasi bahwa ada 1 widget Icon 'Icons.home'.
      expect(find.byIcon(Icons.home), findsOneWidget);

      ///Verifikasi Bahwa ada 1 widget button, yaitu button 'Tombol'
      expect(find.byType(ElevatedButton), findsOneWidget);

      ///Tekan button dan triger sebuah frame
      await tester.tap(find.byType(ElevatedButton));
      await tester.pump();

      ///Verifikasi bahwa text telah diubah dan berubah manjadi 'Tombol ditekan'
      expect(find.textContaining('Tombol ditekan'), findsOneWidget);
    },
  );
}
