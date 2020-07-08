// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named

part of 'my_home_controller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

class _$MyHomeStateTearOff {
  const _$MyHomeStateTearOff();

  _MyHomeState call({Counter counter}) {
    return _MyHomeState(
      counter: counter,
    );
  }
}

// ignore: unused_element
const $MyHomeState = _$MyHomeStateTearOff();

mixin _$MyHomeState {
  Counter get counter;

  $MyHomeStateCopyWith<MyHomeState> get copyWith;
}

abstract class $MyHomeStateCopyWith<$Res> {
  factory $MyHomeStateCopyWith(
          MyHomeState value, $Res Function(MyHomeState) then) =
      _$MyHomeStateCopyWithImpl<$Res>;
  $Res call({Counter counter});
}

class _$MyHomeStateCopyWithImpl<$Res> implements $MyHomeStateCopyWith<$Res> {
  _$MyHomeStateCopyWithImpl(this._value, this._then);

  final MyHomeState _value;
  // ignore: unused_field
  final $Res Function(MyHomeState) _then;

  @override
  $Res call({
    Object counter = freezed,
  }) {
    return _then(_value.copyWith(
      counter: counter == freezed ? _value.counter : counter as Counter,
    ));
  }
}

abstract class _$MyHomeStateCopyWith<$Res>
    implements $MyHomeStateCopyWith<$Res> {
  factory _$MyHomeStateCopyWith(
          _MyHomeState value, $Res Function(_MyHomeState) then) =
      __$MyHomeStateCopyWithImpl<$Res>;
  @override
  $Res call({Counter counter});
}

class __$MyHomeStateCopyWithImpl<$Res> extends _$MyHomeStateCopyWithImpl<$Res>
    implements _$MyHomeStateCopyWith<$Res> {
  __$MyHomeStateCopyWithImpl(
      _MyHomeState _value, $Res Function(_MyHomeState) _then)
      : super(_value, (v) => _then(v as _MyHomeState));

  @override
  _MyHomeState get _value => super._value as _MyHomeState;

  @override
  $Res call({
    Object counter = freezed,
  }) {
    return _then(_MyHomeState(
      counter: counter == freezed ? _value.counter : counter as Counter,
    ));
  }
}

class _$_MyHomeState with DiagnosticableTreeMixin implements _MyHomeState {
  const _$_MyHomeState({this.counter});

  @override
  final Counter counter;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MyHomeState(counter: $counter)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MyHomeState'))
      ..add(DiagnosticsProperty('counter', counter));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyHomeState &&
            (identical(other.counter, counter) ||
                const DeepCollectionEquality().equals(other.counter, counter)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(counter);

  @override
  _$MyHomeStateCopyWith<_MyHomeState> get copyWith =>
      __$MyHomeStateCopyWithImpl<_MyHomeState>(this, _$identity);
}

abstract class _MyHomeState implements MyHomeState {
  const factory _MyHomeState({Counter counter}) = _$_MyHomeState;

  @override
  Counter get counter;
  @override
  _$MyHomeStateCopyWith<_MyHomeState> get copyWith;
}
