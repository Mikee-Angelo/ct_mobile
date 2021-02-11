import 'dart:async';

class RegisterValidation {
  final firstNameValidate = StreamTransformer<String, String>.fromHandlers(
    handleData: (value, sink) {
      // if (value.length < 11) {
      //   sink.addError('Phone Number must be 11 digit');
      // } else {
      //   sink.add(value);
      // }
      bool match = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-]').hasMatch(value);

      if (!match) {
        sink.add(value);
      } else {
        sink.addError('Invalid characters are not allowed.');
      }
    },
  );

  final lastNameValidate = StreamTransformer<String, String>.fromHandlers(
    handleData: (value, sink) {
      bool match = RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%\s-]').hasMatch(value);

      if (!match) {
        sink.add(value);
      } else {
        sink.addError('Invalid characters are not allowed.');
      }
    },
  );

  final addressValidate = StreamTransformer<String, String>.fromHandlers(
    handleData: (value, sink) {
      if (value.length > 0) {
        sink.add(value);
      } else {
        sink.addError('Invalid characters are not allowed.');
      }
    },
  );

  final phoneValidate = StreamTransformer<String, String>.fromHandlers(
    handleData: (value, sink) {
      if (value.length < 11) {
        sink.addError('Phone Number must be 11 digit');
      } else {
        sink.add(value);
      }
    },
  );

  final passwordValidate = StreamTransformer<String, String>.fromHandlers(
    handleData: (value, sink) {
      if (value.length < 8) {
        sink.addError('Password must be 8 digit and above');
      } else {
        sink.add(value);
      }
    },
  );
}
