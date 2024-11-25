abstract class HomePageEvent {
  const HomePageEvent();
}

class gotoHomePage extends HomePageEvent {
  const gotoHomePage();
}

class gotoQuickAction extends HomePageEvent {
  const gotoQuickAction();
}

class gotoRecentDiscussion extends HomePageEvent {
  const gotoRecentDiscussion();
}

class gotoNeedHelp extends HomePageEvent {
  const gotoNeedHelp();
}
