import 'dart:async';

class LoginValidation {
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
