import 'package:fluro/fluro.dart';
import 'pages.dart';

class PagesRouter {
  static registerRouters(Router router) {
    router.define(AppPage.path, handler: AppPage.handler);
    router.define(CategoryPage.path, handler: CategoryPage.handler);
    router.define(GoodsPage.path, handler: GoodsPage.handler);
    router.define(GoodsDetailPage.path, handler: GoodsDetailPage.handler);
    router.define(HomePage.path, handler: HomePage.handler);
    router.define(LoginPage.path, handler: LoginPage.handler);
    router.define(MsgPage.path, handler: MsgPage.handler);
    router.define(TopicPage.path, handler: TopicPage.handler);
    router.define(Topic_detail_$topicIdPage.path, handler: Topic_detail_$topicIdPage.handler);
    router.define(Topic_publishPage.path, handler: Topic_publishPage.handler);
    router.define(User_detail_$usernamePage.path, handler: User_detail_$usernamePage.handler);
    router.define(User_mePage.path, handler: User_mePage.handler);
  }
}