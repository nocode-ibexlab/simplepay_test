import 'package:flutter_test/flutter_test.dart';
import 'package:simple_pay_api/src/simple.dart';

const Matcher isSuccess = _IsSuccess();
const Matcher isFail = _IsFail();

Matcher hasResult(String? key, Matcher matcher) => _HasResult(key, matcher);

class _IsSuccess extends Matcher {
  const _IsSuccess();

  @override
  bool matches(Object? item, Map matchState) => Simple.successful(item);

  @override
  Description describe(Description description) => description.add('success');
}

class _IsFail extends Matcher {
  const _IsFail();

  @override
  bool matches(Object? item, Map matchState) => !Simple.successful(item);

  @override
  Description describe(Description description) => description.add('fail');
}

class _HasResult extends CustomMatcher {
  final String? _key;

  _HasResult(this._key, Matcher matcher)
      : super("${_key ?? 'map'} is", _key ?? 'map', matcher);

  @override
  featureValueOf(actual) => Simple.result(actual, _key);
}
