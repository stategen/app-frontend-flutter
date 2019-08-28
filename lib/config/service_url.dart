const serviceUrl = 'https://wxmini.baixingliangfan.cn/baixing/';
const serviceLoocal = 'http://192.168.1.93:8080/tradeApp/api/';

const servicePath = {
//  'homePageContent':serviceUrl + 'wxmini/homePageContent',//商店首页信息
  'homePageContent':serviceLoocal + 'home/homePageContent',//商店首页信息
//  'homePageBelowConten':serviceUrl + 'wxmini/homePageBelowConten',//首页火爆专区
  'homePageBelowConten':serviceLoocal + 'home/homePageBelowConten',//首页火爆专区
//  'getCategory': serviceUrl+'wxmini/getCategory', //商品类别信息
  'getCategory': serviceLoocal+'category/getCategory', //商品类别信息
//  'getMallGoods': serviceUrl+'wxmini/getMallGoods', //商品分类的商品列表
  'getMallGoods': serviceLoocal+'goods/getMallGoods', //商品分类的商品列表
//  'getGoodDetailById': serviceUrl+'wxmini/getGoodDetailById', //商品详情页面
  'getGoodDetailById': serviceLoocal+'goodsDetail/getGoodDetailById', //商品详情页面

};
