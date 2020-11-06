import 'package:flutter/material.dart';
import 'package:pdf_genration/screens/pdf_creation/dolil_pdf.dart';
import 'package:pdf_genration/screens/pdf_creation/report_pdf.dart';

class PDFCreator extends StatefulWidget {
  @override
  _PDFCreatorState createState() => _PDFCreatorState();
}

class _PDFCreatorState extends State<PDFCreator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 150),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 40,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    'রিপোর্ট',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    reportView(context);
                  },
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 30),
                height: 40,
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                  child: Text(
                    'মোহরী',
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                  color: Colors.blue,
                  onPressed: () {
                    dolilFormat(context);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
