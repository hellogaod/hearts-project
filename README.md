# 前言 #

福生语录：福由心生，不要过多追求前进的速度，有时候停下步伐，感受下周边，才能明白人生的意义何在！

我发现我周边的人大部分（十之八九或者更高）对自己从事的工作并没有多大的积极性，或者说为了挣钱养家，被逼无奈。更有甚者对工作越来越抵触，越消极越抵触，越抵触越消极，如此恶性循环（与其这样，那就不如换一种活法：换一种方式生活可能更加美好 - 当然了，说的简单！！！）。

# 简介 #

做一款社交类app项目，前言已经说明，发生在周边的事与物，分享一种来自心灵的美，只希望能够自己净化心灵。

>可能感觉社会太过于浮夸、过于浮躁等等（也可能社会不是，我个人是哈，不必过于纠结），所以想借此通过自己的技术实现一款app，净化我们的心里。

> 这样的app需要很复杂吗，当然不需要，但是可以循序渐进的复杂。技术分享我只会提供相对简单的一套源码，供有需要的人学习。

# 实现步骤 #

这是一个从无到就的app项目，广度来说app肯定有微信小程序、android端、ios端：

1. 当前项目基于[base-saas架构](https://github.com/hellogaod/saas-base)实现的；

2. 项目需要设计原型图，帮助我们理解项目，以及梳理项目的业务逻辑关系；

3. 根据原型图做数据库设计，数据库的设计体现业务逻辑关系；

4. 因为前后端分离，数据库设计完成后，先将服务（接口api）接口实现，并且一一调通；

5. 服务接口完成后，先将后管端代码完成（当然后管端和app端可以不排列先后顺序）；

6. 再实现app端代码：

 - （1）微信小程序；
 - （2）android端
 - （3）ios端；

7. 还需要一个fastdfs服务，该服务的目的是存取文件，所以单独拎出来说明一下；

8. 部署：

 - （1）购买域名，绑定服务地址ip；
 - （2）部署环境配置，可以网上购买服务，也可以自己在电脑上配置；
 - （3）微信，android，ios端也需要上架；

9. 运营。

通过以上就是一款完整的app开发流程，当然还缺少一个网站，但是这不是重点，后面都会有的。

# 总结 #

下面就一步步去实现吧。

另外可以加群：233515952-it项目实战，现在人就两个，一个是我，一个是我小号！！！