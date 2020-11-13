import 'package:call_app/size_config.dart';
import 'package:flutter/material.dart';

import 'components/body.dart';

class AudioCallWithImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context); //it help us to make ui responsive
    return Scaffold(
      body: Body(),
    );
  }
}
