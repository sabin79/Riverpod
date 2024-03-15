part of 'welcome_notifiler.dart';

class WelcomeState extends Equatable {
  const WelcomeState({
    this.page = 0,
  });
  final int page;

  WelcomeState copywith({
    int? page,
  }) {
    return WelcomeState(
      page: page ?? this.page,
    );
  }

  @override
  List<Object> get props => [page];
}
