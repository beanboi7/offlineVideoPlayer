import 'package:flutter/material.dart';
import 'constants.dart';

class CustomForm extends StatefulWidget {
  @override
  _CustomFormState createState() => _CustomFormState();
}

class _CustomFormState extends State<CustomForm> {
  final _formKey = GlobalKey<FormState>();
  final textController = TextEditingController();

  void init(){
    super.initState();
  }
  @override
  void dispose(){
    textController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                    controller: textController,
                    initialValue: 'username',
                    autofocus: true,
                    validator: (_username){
                      if (_username == null || _username.isEmpty){
                        return 'Enter a valid username';
                      }
                      _username = textController.text;
                      return null;
                    }
                ),
                TextFormField(
                    controller: textController,
                    initialValue: 'email',
                    autofocus: true,
                    validator: (_mail){
                      if (_mail == null || _mail.isEmpty){
                        return 'Enter a valid Mail Id';
                      }
                      _mail = textController.text;
                      return null;
                    }
                ),
                TextFormField(
                    controller: textController,
                    initialValue: 'DOB',
                    validator: (_dob){
                      if (_dob == null || _dob.isEmpty){
                        return 'Enter a valid username';
                      }
                      _dob = textController.text;
                      return null;
                    }
                ),
                TextFormField(
                    controller: textController,
                    initialValue: 'phoneNumber',
                    autofocus: true,
                    validator: (_phone){
                      if (_phone == null || _phone.isEmpty){
                        return 'Enter a valid username';
                      }
                      _phone = textController.text;
                      return null;
                    }
                ),
                TextFormField(
                    controller: textController,
                    initialValue: 'gender',
                    autofocus: true,
                    validator: (_gender){
                      if (_gender == null || _gender.isEmpty){
                        return 'Enter a valid username';
                      }
                      _gender = textController.text;
                      return null;
                    }
                ),

                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState.validate()) {
                      ScaffoldMessenger.of(context)
                          .showSnackBar(SnackBar(content: Text('updating values')));
                    }
                  },
                  child: Text('Submit'),
                ),
              ]
          ),
        ),]

      ),
    );
  }
}
