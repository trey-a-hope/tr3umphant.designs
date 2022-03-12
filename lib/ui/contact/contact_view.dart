import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:tr3umphant_designs/ui/contact/contact_view_model.dart';

class ContactView extends StatelessWidget {
  const ContactView({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<ContactViewModel>(
      init: ContactViewModel(),
      builder: (model) => Column(
        children: const <Widget>[
          Text('Contact Page'),
        ],
      ),
    );
  }
}
