import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main(List<String> args) {
  runApp(const FormValidation());
}

class FormValidation extends StatefulWidget {
  const FormValidation({super.key});

  @override
  State<FormValidation> createState() => _FormValidationState();
}

class _FormValidationState extends State<FormValidation> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a `GlobalKey<FormState>`,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();
  String inputText = 'Form Validation';

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Form Validation',
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(inputText),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Form(
              // Set the form to the global key we created above
              key: _formKey,
              child: TextFormField(
                keyboardType: TextInputType.url,
                inputFormatters: [
                  FilteringTextInputFormatter.deny(RegExp(r'\s'))
                ],
                // Label
                decoration: const InputDecoration(
                  hintText: 'This is a hint text',
                  helperText: 'This is a helper text',
                  labelText: 'This is label text',
                  border: OutlineInputBorder(),
                ),
                // URL Validation
                validator: (value) {
                  if (value!.isEmpty) {
                    return '*Required';
                  } else if (!value.startsWith('http')) {
                    return 'Please enter valid URL';
                  }
                  return null;
                },
                onChanged: (value) {
                  setState(() {
                    inputText = value;
                  });
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: ElevatedButton(
                onPressed: () {
                  // Validate returns true if the form is valid, or false
                  // otherwise.
                  // get snackbar
                  if (_formKey.currentState!.validate()) {
                    Get.snackbar(
                      'Form Validation',
                      'Form is valid',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.green,
                      colorText: Colors.white,
                    );
                  } else {
                    Get.snackbar(
                      'Form Validation',
                      'Form is invalid',
                      snackPosition: SnackPosition.BOTTOM,
                      backgroundColor: Colors.red,
                      colorText: Colors.white,
                    );
                  }
                },
                child: const Text('Submit'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
