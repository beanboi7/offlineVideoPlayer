import 'package:flutter/material.dart';
import 'package:videoplayer/profile.dart';
import 'constants.dart';

class CustomForm extends StatefulWidget {
  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final mailController = TextEditingController();
  final dobController = TextEditingController();
  final genderController = TextEditingController();
  final phoneController = TextEditingController();

  void initState() {
    super.initState();
  }

  @override
  // void dispose(){
  //   textController.dispose();
  //   super.dispose();
  // }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(children: <Widget>[
        Form(
          key: _formKey,
          child: Column(children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.person),
                hintText: 'What do people call you?',
                labelText: 'UserName *',
              ),
              controller: nameController,
              autofocus: true,
              validator: (String value) {
                if (value == null || value.isEmpty) {
                  return 'Enter a valid username';
                } else {
                  userName = nameController.text;
                  return null;
                }
              },
            ),
            TextFormField(
              decoration: const InputDecoration(
                icon: Icon(Icons.mail),
                hintText: 'Where to send your emails to?',
                labelText: 'Email *',
              ),
              controller: mailController,
              autofocus: true,
              validator: (String value) {
                if (value == null || value.isEmpty) {
                  return 'Enter a valid Mail Id';
                } else {
                  mail = mailController.text;
                  return null;
                }
              },
            ),
            TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.calendar_today_outlined),
                  hintText: 'When did you first cry?',
                  labelText: 'DOB *',
                ),
                controller: dobController,
                // initialValue: 'DOB', Shouldn't set both initialValue and controller
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a valid DOB';
                  } else {
                    dob = dobController.text;
                    return null;
                  }
                }),
            TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.phone),
                  hintText: 'Your 10 digit mobile number',
                  labelText: 'PhoneNumber *',
                ),
                controller: phoneController,
                // initialValue: 'phoneNumber',
                autofocus: true,
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a valid PhoneNumber';
                  } else {
                    phone = phoneController.text;
                    return null;
                  }
                }),
            TextFormField(
                decoration: const InputDecoration(
                  icon: Icon(Icons.wc),
                  hintText: 'Your gender',
                  labelText: 'Gender *',
                ),
                controller: genderController,
                // initialValue: 'gender',
                autofocus: true,
                validator: (String value) {
                  if (value == null || value.isEmpty) {
                    return 'Enter a valid Gender';
                  }
                  gender = genderController.text;
                  return null;
                }),
            ElevatedButton(
              onPressed: () {
                if (_formKey.currentState.validate()) {
                  _formKey.currentState.save();
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (_) => Profile(
                              updateUserName: userName,
                              updateMail: mail,
                              updateDOB: dob,
                              updateGender: gender,
                              updatePhone: phone,
                            )),
                  );
                }
              },
              child: Text('Submit'),
            ),
          ]),
        ),
      ]),
    );
  }
}
