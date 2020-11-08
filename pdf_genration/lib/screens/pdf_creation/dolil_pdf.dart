import 'dart:io';
import 'package:flutter/material.dart' as material;
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:pdf_genration/screens/pdf_creation/pdf_viewer_page.dart';
import 'package:flutter/services.dart' show rootBundle;

dolilFormat(context) async {
  final Document pdf = Document();

  pdf.addPage(
    MultiPage(
      theme: ThemeData.withFont(
        base: Font.ttf(await rootBundle.load("fonts/kalpurush.ttf")),
      ),
      pageFormat: PdfPageFormat.legal.copyWith(
          marginTop: 4.5 * PdfPageFormat.inch,
          marginBottom: 1.5 * PdfPageFormat.inch,
          marginLeft: 1.0 * PdfPageFormat.inch,
          marginRight: 0.8 * PdfPageFormat.inch),
      crossAxisAlignment: CrossAxisAlignment.start,
      header: (Context context) {
        if (context.pageNumber == 1) {
          return null;
        }

        return Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(bottom: 3.0 * PdfPageFormat.mm),
          padding: const EdgeInsets.only(bottom: 3.0 * PdfPageFormat.mm),
          decoration: BoxDecoration(
            border: BoxBorder(bottom: true, width: 0.5, color: PdfColors.grey),
          ),
          child: Text(
            'Dolil',
            style: Theme.of(context)
                .defaultTextStyle
                .copyWith(color: PdfColors.grey),
          ),
        );
      },
      footer: (Context context) {
        return Container(
          alignment: Alignment.centerRight,
          margin: const EdgeInsets.only(top: 1 * PdfPageFormat.mm),
          child: Text(
            'ÓPjgvb cvZv-${context.pageNumber}Ó ',
            style: Theme.of(context)
                .defaultTextStyle
                .copyWith(color: PdfColors.grey),
          ),
        );
      },
      build: (Context context) => <Widget>[
        Header(
          level: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('আমফল বিক্রয় দলিল', textScaleFactor: 2),
              PdfLogo(),
            ],
          ),
        ),
        Header(
          level: 1,
          text:
              'cig Kiæbvgq Avjøvn cv‡Ki bvg ¯^ib Kwiqv AÎ Avg evMv‡bi Avg dj weµq `wjj wjwLqv w`‡ZwQ †h, Avgvi mvsmvwiK bvbv cÖKvi Øvq emZt UvKvi we‡kl Avek¨K nIqvq Ab¨ †Kvb Dcv‡q UvKv msMÖn Kwi‡Z bv cvivq  Avgvi nK `Lwjq wb‡¤œ Zdwmj ewb©Z Rwgi Dc‡i Aew¯’Z 9(bq)wU Avg Mv‡Qi Avg dj 2(`yB) eQi †gqv‡` weµq Kwievi Rb¨ †gŠwLK kniZ w`‡j Avcbx Zv jB‡Z m¤§wZ cÖKvk K‡ib Df‡qi m¤§wZ µ‡g eZ©gvb evRvi `i wnmv‡e g~j¨ wba©vib  Kwijvg| hvnvi g~j¨t 60,000/-UvKv K_vqt lvU nvRvi UvKv ¯^vÿx M‡bi ¯^vÿv‡Z Dcw¯’Z n‡q D³ UvKv Avwg GK †hv‡M MÖnY Kwijvg| Avcbx  AvMvgx 2027Bs I 2028Bs mvj2(`yB)†gŠmy‡gi Avg dj wbqwgZ fv‡e †fvM `Lj Kwi‡Z _vwK‡eb|',
        ),
        Paragraph(
          text:
              'উহাতে  আমি কিংবা  আমার কোন  ওয়ারিশ গন কেহ  কোন প্রকার ওজর আপত্তি করিতে পারিবনা  বা পারিবেক না করিলেও তাহা আইন আদালতে অগ্রাহ্য বলিয়া গন্য হইবে। প্রকাশ থাকে যে , অত্র আম বাগানের আমফল বিক্রয় করিয়া যদি  কোন চালাকি বা প্রতারনা করি তাহলে আপনি আইন গত ভাবে যেকোন ব্যাবস্থা লইতে পারিবেন। এতদর্থে সুস্থ্য শরিরে সরল মনে স্বেচ্ছোয়  স্বজ্ঞনে অত্র আম বাগানের আম ফল বিক্রয় দলিল আপনার বরাবরে লিখিয়া দিয়া সহি সম্পাদন করিয়া দিলাম।',
        ),
        Paragraph(
          text:
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for "lorem ipsum" will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
        ),
        Header(
          level: 1,
          text: 'Where does it come from?',
        ),
        Paragraph(
            text:
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for "lorem ipsum" will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
        Paragraph(
          text:
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for "lorem ipsum" will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
        ),
        Header(
          level: 1,
          text: 'Where does it come from?',
        ),
        Paragraph(
            text:
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for "lorem ipsum" will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
        Paragraph(
          text:
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for "lorem ipsum" will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
        ),
        Header(
          level: 1,
          text: 'Where does it come from?',
        ),
        Paragraph(
            text:
                'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for "lorem ipsum" will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).'),
        Paragraph(
          text:
              'It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using "Content here, content here", making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for "lorem ipsum" will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose (injected humour and the like).',
        ),
        Padding(padding: const EdgeInsets.all(10)),
        Table.fromTextArray(context: context, data: const <List<String>>[
          <String>['Year', 'Ipsum', 'Lorem'],
          <String>['2000', 'Ipsum 1.0', 'Lorem 1'],
          <String>['2001', 'Ipsum 1.1', 'Lorem 2'],
          <String>['2002', 'Ipsum 1.2', 'Lorem 3'],
          <String>['2003', 'Ipsum 1.3', 'Lorem 4'],
          <String>['2004', 'Ipsum 1.4', 'Lorem 5'],
          <String>['2004', 'Ipsum 1.5', 'Lorem 6'],
          <String>['2006', 'Ipsum 1.6', 'Lorem 7'],
          <String>['2007', 'Ipsum 1.7', 'Lorem 8'],
          <String>['2008', 'Ipsum 1.7', 'Lorem 9'],
        ]),
      ],
    ),
  );
  final String dir = (await getApplicationSupportDirectory()).path;
  final String path = '$dir/report.pdf';
  final File file = File(path);
  await file.writeAsBytes(pdf.save());

  material.Navigator.of(context).push(
    material.MaterialPageRoute(
      builder: (_) => PdfViewerPage(
        path: path,
      ),
    ),
  );
}
