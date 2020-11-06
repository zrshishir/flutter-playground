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
        base: Font.ttf(await rootBundle.load("fonts/Siyamrupali.ttf")),
        bold: Font.ttf(await rootBundle.load("fonts/SutonnyMJ-Bold.ttf")),
        italic: Font.ttf(await rootBundle.load("fonts/SutonnyMJ-Italic.ttf")),
        boldItalic:
            Font.ttf(await rootBundle.load("fonts/SutonnyMJ-BoldItalic.ttf")),
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
            'Page ${context.pageNumber} of ${context.pagesCount}',
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
              Text('Report', textScaleFactor: 2),
              PdfLogo(),
            ],
          ),
        ),
        Header(
          level: 1,
          text: 'আমার সোনার বাংলা আমি তোমায় ভাল বাসি',
        ),
        Paragraph(
          text:
              'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
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
