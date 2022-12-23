/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80016
 Source Host           : localhost:3306
 Source Schema         : my-hearts-start

 Target Server Type    : MySQL
 Target Server Version : 80016
 File Encoding         : 65001

 Date: 23/12/2022 11:13:17
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for area_city
-- ----------------------------
DROP TABLE IF EXISTS `area_city`;
CREATE TABLE `area_city`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `namess` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '父级区域id',
  `level` int(1) NULL DEFAULT NULL COMMENT '级别',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '区域市表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_city
-- ----------------------------
INSERT INTO `area_city` VALUES ('110100000000', '市辖区', '110000000000', 2);
INSERT INTO `area_city` VALUES ('120100000000', '市辖区', '120000000000', 2);
INSERT INTO `area_city` VALUES ('130100000000', '石家庄市', '130000000000', 2);
INSERT INTO `area_city` VALUES ('130200000000', '唐山市', '130000000000', 2);
INSERT INTO `area_city` VALUES ('130300000000', '秦皇岛市', '130000000000', 2);
INSERT INTO `area_city` VALUES ('130400000000', '邯郸市', '130000000000', 2);
INSERT INTO `area_city` VALUES ('130500000000', '邢台市', '130000000000', 2);
INSERT INTO `area_city` VALUES ('130600000000', '保定市', '130000000000', 2);
INSERT INTO `area_city` VALUES ('130700000000', '张家口市', '130000000000', 2);
INSERT INTO `area_city` VALUES ('130800000000', '承德市', '130000000000', 2);
INSERT INTO `area_city` VALUES ('130900000000', '沧州市', '130000000000', 2);
INSERT INTO `area_city` VALUES ('131000000000', '廊坊市', '130000000000', 2);
INSERT INTO `area_city` VALUES ('131100000000', '衡水市', '130000000000', 2);
INSERT INTO `area_city` VALUES ('140100000000', '太原市', '140000000000', 2);
INSERT INTO `area_city` VALUES ('140200000000', '大同市', '140000000000', 2);
INSERT INTO `area_city` VALUES ('140300000000', '阳泉市', '140000000000', 2);
INSERT INTO `area_city` VALUES ('140400000000', '长治市', '140000000000', 2);
INSERT INTO `area_city` VALUES ('140500000000', '晋城市', '140000000000', 2);
INSERT INTO `area_city` VALUES ('140600000000', '朔州市', '140000000000', 2);
INSERT INTO `area_city` VALUES ('140700000000', '晋中市', '140000000000', 2);
INSERT INTO `area_city` VALUES ('140800000000', '运城市', '140000000000', 2);
INSERT INTO `area_city` VALUES ('140900000000', '忻州市', '140000000000', 2);
INSERT INTO `area_city` VALUES ('141000000000', '临汾市', '140000000000', 2);
INSERT INTO `area_city` VALUES ('141100000000', '吕梁市', '140000000000', 2);
INSERT INTO `area_city` VALUES ('150100000000', '呼和浩特市', '150000000000', 2);
INSERT INTO `area_city` VALUES ('150200000000', '包头市', '150000000000', 2);
INSERT INTO `area_city` VALUES ('150300000000', '乌海市', '150000000000', 2);
INSERT INTO `area_city` VALUES ('150400000000', '赤峰市', '150000000000', 2);
INSERT INTO `area_city` VALUES ('150500000000', '通辽市', '150000000000', 2);
INSERT INTO `area_city` VALUES ('150600000000', '鄂尔多斯市', '150000000000', 2);
INSERT INTO `area_city` VALUES ('150700000000', '呼伦贝尔市', '150000000000', 2);
INSERT INTO `area_city` VALUES ('150800000000', '巴彦淖尔市', '150000000000', 2);
INSERT INTO `area_city` VALUES ('150900000000', '乌兰察布市', '150000000000', 2);
INSERT INTO `area_city` VALUES ('152200000000', '兴安盟', '150000000000', 2);
INSERT INTO `area_city` VALUES ('152500000000', '锡林郭勒盟', '150000000000', 2);
INSERT INTO `area_city` VALUES ('152900000000', '阿拉善盟', '150000000000', 2);
INSERT INTO `area_city` VALUES ('210100000000', '沈阳市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('210200000000', '大连市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('210300000000', '鞍山市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('210400000000', '抚顺市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('210500000000', '本溪市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('210600000000', '丹东市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('210700000000', '锦州市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('210800000000', '营口市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('210900000000', '阜新市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('211000000000', '辽阳市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('211100000000', '盘锦市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('211200000000', '铁岭市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('211300000000', '朝阳市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('211400000000', '葫芦岛市', '210000000000', 2);
INSERT INTO `area_city` VALUES ('220100000000', '长春市', '220000000000', 2);
INSERT INTO `area_city` VALUES ('220200000000', '吉林市', '220000000000', 2);
INSERT INTO `area_city` VALUES ('220300000000', '四平市', '220000000000', 2);
INSERT INTO `area_city` VALUES ('220400000000', '辽源市', '220000000000', 2);
INSERT INTO `area_city` VALUES ('220500000000', '通化市', '220000000000', 2);
INSERT INTO `area_city` VALUES ('220600000000', '白山市', '220000000000', 2);
INSERT INTO `area_city` VALUES ('220700000000', '松原市', '220000000000', 2);
INSERT INTO `area_city` VALUES ('220800000000', '白城市', '220000000000', 2);
INSERT INTO `area_city` VALUES ('222400000000', '延边朝鲜族自治州', '220000000000', 2);
INSERT INTO `area_city` VALUES ('230100000000', '哈尔滨市', '230000000000', 2);
INSERT INTO `area_city` VALUES ('230200000000', '齐齐哈尔市', '230000000000', 2);
INSERT INTO `area_city` VALUES ('230300000000', '鸡西市', '230000000000', 2);
INSERT INTO `area_city` VALUES ('230400000000', '鹤岗市', '230000000000', 2);
INSERT INTO `area_city` VALUES ('230500000000', '双鸭山市', '230000000000', 2);
INSERT INTO `area_city` VALUES ('230600000000', '大庆市', '230000000000', 2);
INSERT INTO `area_city` VALUES ('230700000000', '伊春市', '230000000000', 2);
INSERT INTO `area_city` VALUES ('230800000000', '佳木斯市', '230000000000', 2);
INSERT INTO `area_city` VALUES ('230900000000', '七台河市', '230000000000', 2);
INSERT INTO `area_city` VALUES ('231000000000', '牡丹江市', '230000000000', 2);
INSERT INTO `area_city` VALUES ('231100000000', '黑河市', '230000000000', 2);
INSERT INTO `area_city` VALUES ('231200000000', '绥化市', '230000000000', 2);
INSERT INTO `area_city` VALUES ('232700000000', '大兴安岭地区', '230000000000', 2);
INSERT INTO `area_city` VALUES ('310100000000', '市辖区', '310000000000', 2);
INSERT INTO `area_city` VALUES ('320100000000', '南京市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('320200000000', '无锡市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('320300000000', '徐州市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('320400000000', '常州市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('320500000000', '苏州市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('320600000000', '南通市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('320700000000', '连云港市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('320800000000', '淮安市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('320900000000', '盐城市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('321000000000', '扬州市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('321100000000', '镇江市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('321200000000', '泰州市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('321300000000', '宿迁市', '320000000000', 2);
INSERT INTO `area_city` VALUES ('330100000000', '杭州市', '330000000000', 2);
INSERT INTO `area_city` VALUES ('330200000000', '宁波市', '330000000000', 2);
INSERT INTO `area_city` VALUES ('330300000000', '温州市', '330000000000', 2);
INSERT INTO `area_city` VALUES ('330400000000', '嘉兴市', '330000000000', 2);
INSERT INTO `area_city` VALUES ('330500000000', '湖州市', '330000000000', 2);
INSERT INTO `area_city` VALUES ('330600000000', '绍兴市', '330000000000', 2);
INSERT INTO `area_city` VALUES ('330700000000', '金华市', '330000000000', 2);
INSERT INTO `area_city` VALUES ('330800000000', '衢州市', '330000000000', 2);
INSERT INTO `area_city` VALUES ('330900000000', '舟山市', '330000000000', 2);
INSERT INTO `area_city` VALUES ('331000000000', '台州市', '330000000000', 2);
INSERT INTO `area_city` VALUES ('331100000000', '丽水市', '330000000000', 2);
INSERT INTO `area_city` VALUES ('340100000000', '合肥市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('340200000000', '芜湖市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('340300000000', '蚌埠市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('340400000000', '淮南市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('340500000000', '马鞍山市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('340600000000', '淮北市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('340700000000', '铜陵市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('340800000000', '安庆市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('341000000000', '黄山市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('341100000000', '滁州市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('341200000000', '阜阳市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('341300000000', '宿州市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('341500000000', '六安市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('341600000000', '亳州市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('341700000000', '池州市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('341800000000', '宣城市', '340000000000', 2);
INSERT INTO `area_city` VALUES ('350100000000', '福州市', '350000000000', 2);
INSERT INTO `area_city` VALUES ('350200000000', '厦门市', '350000000000', 2);
INSERT INTO `area_city` VALUES ('350300000000', '莆田市', '350000000000', 2);
INSERT INTO `area_city` VALUES ('350400000000', '三明市', '350000000000', 2);
INSERT INTO `area_city` VALUES ('350500000000', '泉州市', '350000000000', 2);
INSERT INTO `area_city` VALUES ('350600000000', '漳州市', '350000000000', 2);
INSERT INTO `area_city` VALUES ('350700000000', '南平市', '350000000000', 2);
INSERT INTO `area_city` VALUES ('350800000000', '龙岩市', '350000000000', 2);
INSERT INTO `area_city` VALUES ('350900000000', '宁德市', '350000000000', 2);
INSERT INTO `area_city` VALUES ('360100000000', '南昌市', '360000000000', 2);
INSERT INTO `area_city` VALUES ('360200000000', '景德镇市', '360000000000', 2);
INSERT INTO `area_city` VALUES ('360300000000', '萍乡市', '360000000000', 2);
INSERT INTO `area_city` VALUES ('360400000000', '九江市', '360000000000', 2);
INSERT INTO `area_city` VALUES ('360500000000', '新余市', '360000000000', 2);
INSERT INTO `area_city` VALUES ('360600000000', '鹰潭市', '360000000000', 2);
INSERT INTO `area_city` VALUES ('360700000000', '赣州市', '360000000000', 2);
INSERT INTO `area_city` VALUES ('360800000000', '吉安市', '360000000000', 2);
INSERT INTO `area_city` VALUES ('360900000000', '宜春市', '360000000000', 2);
INSERT INTO `area_city` VALUES ('361000000000', '抚州市', '360000000000', 2);
INSERT INTO `area_city` VALUES ('361100000000', '上饶市', '360000000000', 2);
INSERT INTO `area_city` VALUES ('370100000000', '济南市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('370200000000', '青岛市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('370300000000', '淄博市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('370400000000', '枣庄市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('370500000000', '东营市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('370600000000', '烟台市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('370700000000', '潍坊市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('370800000000', '济宁市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('370900000000', '泰安市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('371000000000', '威海市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('371100000000', '日照市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('371300000000', '临沂市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('371400000000', '德州市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('371500000000', '聊城市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('371600000000', '滨州市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('371700000000', '菏泽市', '370000000000', 2);
INSERT INTO `area_city` VALUES ('410100000000', '郑州市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('410200000000', '开封市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('410300000000', '洛阳市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('410400000000', '平顶山市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('410500000000', '安阳市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('410600000000', '鹤壁市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('410700000000', '新乡市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('410800000000', '焦作市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('410900000000', '濮阳市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('411000000000', '许昌市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('411100000000', '漯河市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('411200000000', '三门峡市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('411300000000', '南阳市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('411400000000', '商丘市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('411500000000', '信阳市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('411600000000', '周口市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('411700000000', '驻马店市', '410000000000', 2);
INSERT INTO `area_city` VALUES ('419000000000', '省直辖县级行政区划', '410000000000', 2);
INSERT INTO `area_city` VALUES ('420100000000', '武汉市', '420000000000', 2);
INSERT INTO `area_city` VALUES ('420200000000', '黄石市', '420000000000', 2);
INSERT INTO `area_city` VALUES ('420300000000', '十堰市', '420000000000', 2);
INSERT INTO `area_city` VALUES ('420500000000', '宜昌市', '420000000000', 2);
INSERT INTO `area_city` VALUES ('420600000000', '襄阳市', '420000000000', 2);
INSERT INTO `area_city` VALUES ('420700000000', '鄂州市', '420000000000', 2);
INSERT INTO `area_city` VALUES ('420800000000', '荆门市', '420000000000', 2);
INSERT INTO `area_city` VALUES ('420900000000', '孝感市', '420000000000', 2);
INSERT INTO `area_city` VALUES ('421000000000', '荆州市', '420000000000', 2);
INSERT INTO `area_city` VALUES ('421100000000', '黄冈市', '420000000000', 2);
INSERT INTO `area_city` VALUES ('421200000000', '咸宁市', '420000000000', 2);
INSERT INTO `area_city` VALUES ('421300000000', '随州市', '420000000000', 2);
INSERT INTO `area_city` VALUES ('422800000000', '恩施土家族苗族自治州', '420000000000', 2);
INSERT INTO `area_city` VALUES ('429000000000', '省直辖县级行政区划', '420000000000', 2);
INSERT INTO `area_city` VALUES ('430100000000', '长沙市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('430200000000', '株洲市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('430300000000', '湘潭市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('430400000000', '衡阳市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('430500000000', '邵阳市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('430600000000', '岳阳市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('430700000000', '常德市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('430800000000', '张家界市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('430900000000', '益阳市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('431000000000', '郴州市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('431100000000', '永州市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('431200000000', '怀化市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('431300000000', '娄底市', '430000000000', 2);
INSERT INTO `area_city` VALUES ('433100000000', '湘西土家族苗族自治州', '430000000000', 2);
INSERT INTO `area_city` VALUES ('440100000000', '广州市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('440200000000', '韶关市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('440300000000', '深圳市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('440400000000', '珠海市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('440500000000', '汕头市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('440600000000', '佛山市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('440700000000', '江门市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('440800000000', '湛江市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('440900000000', '茂名市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('441200000000', '肇庆市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('441300000000', '惠州市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('441400000000', '梅州市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('441500000000', '汕尾市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('441600000000', '河源市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('441700000000', '阳江市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('441800000000', '清远市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('441900000000', '东莞市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('442000000000', '中山市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('445100000000', '潮州市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('445200000000', '揭阳市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('445300000000', '云浮市', '440000000000', 2);
INSERT INTO `area_city` VALUES ('450100000000', '南宁市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('450200000000', '柳州市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('450300000000', '桂林市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('450400000000', '梧州市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('450500000000', '北海市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('450600000000', '防城港市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('450700000000', '钦州市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('450800000000', '贵港市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('450900000000', '玉林市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('451000000000', '百色市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('451100000000', '贺州市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('451200000000', '河池市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('451300000000', '来宾市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('451400000000', '崇左市', '450000000000', 2);
INSERT INTO `area_city` VALUES ('460100000000', '海口市', '460000000000', 2);
INSERT INTO `area_city` VALUES ('460200000000', '三亚市', '460000000000', 2);
INSERT INTO `area_city` VALUES ('460300000000', '三沙市', '460000000000', 2);
INSERT INTO `area_city` VALUES ('460400000000', '儋州市', '460000000000', 2);
INSERT INTO `area_city` VALUES ('469000000000', '省直辖县级行政区划', '460000000000', 2);
INSERT INTO `area_city` VALUES ('500100000000', '市辖区', '500000000000', 2);
INSERT INTO `area_city` VALUES ('500200000000', '县', '500000000000', 2);
INSERT INTO `area_city` VALUES ('510100000000', '成都市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('510300000000', '自贡市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('510400000000', '攀枝花市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('510500000000', '泸州市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('510600000000', '德阳市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('510700000000', '绵阳市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('510800000000', '广元市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('510900000000', '遂宁市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('511000000000', '内江市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('511100000000', '乐山市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('511300000000', '南充市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('511400000000', '眉山市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('511500000000', '宜宾市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('511600000000', '广安市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('511700000000', '达州市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('511800000000', '雅安市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('511900000000', '巴中市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('512000000000', '资阳市', '510000000000', 2);
INSERT INTO `area_city` VALUES ('513200000000', '阿坝藏族羌族自治州', '510000000000', 2);
INSERT INTO `area_city` VALUES ('513300000000', '甘孜藏族自治州', '510000000000', 2);
INSERT INTO `area_city` VALUES ('513400000000', '凉山彝族自治州', '510000000000', 2);
INSERT INTO `area_city` VALUES ('520100000000', '贵阳市', '520000000000', 2);
INSERT INTO `area_city` VALUES ('520200000000', '六盘水市', '520000000000', 2);
INSERT INTO `area_city` VALUES ('520300000000', '遵义市', '520000000000', 2);
INSERT INTO `area_city` VALUES ('520400000000', '安顺市', '520000000000', 2);
INSERT INTO `area_city` VALUES ('520500000000', '毕节市', '520000000000', 2);
INSERT INTO `area_city` VALUES ('520600000000', '铜仁市', '520000000000', 2);
INSERT INTO `area_city` VALUES ('522300000000', '黔西南布依族苗族自治州', '520000000000', 2);
INSERT INTO `area_city` VALUES ('522600000000', '黔东南苗族侗族自治州', '520000000000', 2);
INSERT INTO `area_city` VALUES ('522700000000', '黔南布依族苗族自治州', '520000000000', 2);
INSERT INTO `area_city` VALUES ('530100000000', '昆明市', '530000000000', 2);
INSERT INTO `area_city` VALUES ('530300000000', '曲靖市', '530000000000', 2);
INSERT INTO `area_city` VALUES ('530400000000', '玉溪市', '530000000000', 2);
INSERT INTO `area_city` VALUES ('530500000000', '保山市', '530000000000', 2);
INSERT INTO `area_city` VALUES ('530600000000', '昭通市', '530000000000', 2);
INSERT INTO `area_city` VALUES ('530700000000', '丽江市', '530000000000', 2);
INSERT INTO `area_city` VALUES ('530800000000', '普洱市', '530000000000', 2);
INSERT INTO `area_city` VALUES ('530900000000', '临沧市', '530000000000', 2);
INSERT INTO `area_city` VALUES ('532300000000', '楚雄彝族自治州', '530000000000', 2);
INSERT INTO `area_city` VALUES ('532500000000', '红河哈尼族彝族自治州', '530000000000', 2);
INSERT INTO `area_city` VALUES ('532600000000', '文山壮族苗族自治州', '530000000000', 2);
INSERT INTO `area_city` VALUES ('532800000000', '西双版纳傣族自治州', '530000000000', 2);
INSERT INTO `area_city` VALUES ('532900000000', '大理白族自治州', '530000000000', 2);
INSERT INTO `area_city` VALUES ('533100000000', '德宏傣族景颇族自治州', '530000000000', 2);
INSERT INTO `area_city` VALUES ('533300000000', '怒江傈僳族自治州', '530000000000', 2);
INSERT INTO `area_city` VALUES ('533400000000', '迪庆藏族自治州', '530000000000', 2);
INSERT INTO `area_city` VALUES ('540100000000', '拉萨市', '540000000000', 2);
INSERT INTO `area_city` VALUES ('540200000000', '日喀则市', '540000000000', 2);
INSERT INTO `area_city` VALUES ('540300000000', '昌都市', '540000000000', 2);
INSERT INTO `area_city` VALUES ('540400000000', '林芝市', '540000000000', 2);
INSERT INTO `area_city` VALUES ('540500000000', '山南市', '540000000000', 2);
INSERT INTO `area_city` VALUES ('540600000000', '那曲市', '540000000000', 2);
INSERT INTO `area_city` VALUES ('542500000000', '阿里地区', '540000000000', 2);
INSERT INTO `area_city` VALUES ('610100000000', '西安市', '610000000000', 2);
INSERT INTO `area_city` VALUES ('610200000000', '铜川市', '610000000000', 2);
INSERT INTO `area_city` VALUES ('610300000000', '宝鸡市', '610000000000', 2);
INSERT INTO `area_city` VALUES ('610400000000', '咸阳市', '610000000000', 2);
INSERT INTO `area_city` VALUES ('610500000000', '渭南市', '610000000000', 2);
INSERT INTO `area_city` VALUES ('610600000000', '延安市', '610000000000', 2);
INSERT INTO `area_city` VALUES ('610700000000', '汉中市', '610000000000', 2);
INSERT INTO `area_city` VALUES ('610800000000', '榆林市', '610000000000', 2);
INSERT INTO `area_city` VALUES ('610900000000', '安康市', '610000000000', 2);
INSERT INTO `area_city` VALUES ('611000000000', '商洛市', '610000000000', 2);
INSERT INTO `area_city` VALUES ('620100000000', '兰州市', '620000000000', 2);
INSERT INTO `area_city` VALUES ('620200000000', '嘉峪关市', '620000000000', 2);
INSERT INTO `area_city` VALUES ('620300000000', '金昌市', '620000000000', 2);
INSERT INTO `area_city` VALUES ('620400000000', '白银市', '620000000000', 2);
INSERT INTO `area_city` VALUES ('620500000000', '天水市', '620000000000', 2);
INSERT INTO `area_city` VALUES ('620600000000', '武威市', '620000000000', 2);
INSERT INTO `area_city` VALUES ('620700000000', '张掖市', '620000000000', 2);
INSERT INTO `area_city` VALUES ('620800000000', '平凉市', '620000000000', 2);
INSERT INTO `area_city` VALUES ('620900000000', '酒泉市', '620000000000', 2);
INSERT INTO `area_city` VALUES ('621000000000', '庆阳市', '620000000000', 2);
INSERT INTO `area_city` VALUES ('621100000000', '定西市', '620000000000', 2);
INSERT INTO `area_city` VALUES ('621200000000', '陇南市', '620000000000', 2);
INSERT INTO `area_city` VALUES ('622900000000', '临夏回族自治州', '620000000000', 2);
INSERT INTO `area_city` VALUES ('623000000000', '甘南藏族自治州', '620000000000', 2);
INSERT INTO `area_city` VALUES ('630100000000', '西宁市', '630000000000', 2);
INSERT INTO `area_city` VALUES ('630200000000', '海东市', '630000000000', 2);
INSERT INTO `area_city` VALUES ('632200000000', '海北藏族自治州', '630000000000', 2);
INSERT INTO `area_city` VALUES ('632300000000', '黄南藏族自治州', '630000000000', 2);
INSERT INTO `area_city` VALUES ('632500000000', '海南藏族自治州', '630000000000', 2);
INSERT INTO `area_city` VALUES ('632600000000', '果洛藏族自治州', '630000000000', 2);
INSERT INTO `area_city` VALUES ('632700000000', '玉树藏族自治州', '630000000000', 2);
INSERT INTO `area_city` VALUES ('632800000000', '海西蒙古族藏族自治州', '630000000000', 2);
INSERT INTO `area_city` VALUES ('640100000000', '银川市', '640000000000', 2);
INSERT INTO `area_city` VALUES ('640200000000', '石嘴山市', '640000000000', 2);
INSERT INTO `area_city` VALUES ('640300000000', '吴忠市', '640000000000', 2);
INSERT INTO `area_city` VALUES ('640400000000', '固原市', '640000000000', 2);
INSERT INTO `area_city` VALUES ('640500000000', '中卫市', '640000000000', 2);
INSERT INTO `area_city` VALUES ('650100000000', '乌鲁木齐市', '650000000000', 2);
INSERT INTO `area_city` VALUES ('650200000000', '克拉玛依市', '650000000000', 2);
INSERT INTO `area_city` VALUES ('650400000000', '吐鲁番市', '650000000000', 2);
INSERT INTO `area_city` VALUES ('650500000000', '哈密市', '650000000000', 2);
INSERT INTO `area_city` VALUES ('652300000000', '昌吉回族自治州', '650000000000', 2);
INSERT INTO `area_city` VALUES ('652700000000', '博尔塔拉蒙古自治州', '650000000000', 2);
INSERT INTO `area_city` VALUES ('652800000000', '巴音郭楞蒙古自治州', '650000000000', 2);
INSERT INTO `area_city` VALUES ('652900000000', '阿克苏地区', '650000000000', 2);
INSERT INTO `area_city` VALUES ('653000000000', '克孜勒苏柯尔克孜自治州', '650000000000', 2);
INSERT INTO `area_city` VALUES ('653100000000', '喀什地区', '650000000000', 2);
INSERT INTO `area_city` VALUES ('653200000000', '和田地区', '650000000000', 2);
INSERT INTO `area_city` VALUES ('654000000000', '伊犁哈萨克自治州', '650000000000', 2);
INSERT INTO `area_city` VALUES ('654200000000', '塔城地区', '650000000000', 2);
INSERT INTO `area_city` VALUES ('654300000000', '阿勒泰地区', '650000000000', 2);
INSERT INTO `area_city` VALUES ('659000000000', '自治区直辖县级行政区划', '650000000000', 2);

-- ----------------------------
-- Table structure for area_province
-- ----------------------------
DROP TABLE IF EXISTS `area_province`;
CREATE TABLE `area_province`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `namess` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '名称',
  `level` int(1) NULL DEFAULT NULL COMMENT '级别',
  `pid` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '父级区域id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '区域省表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of area_province
-- ----------------------------
INSERT INTO `area_province` VALUES ('110000000000', '北京市', 1, '0');
INSERT INTO `area_province` VALUES ('120000000000', '天津市', 1, '0');
INSERT INTO `area_province` VALUES ('130000000000', '河北省', 1, '0');
INSERT INTO `area_province` VALUES ('140000000000', '山西省', 1, '0');
INSERT INTO `area_province` VALUES ('150000000000', '内蒙古自治区', 1, '0');
INSERT INTO `area_province` VALUES ('210000000000', '辽宁省', 1, '0');
INSERT INTO `area_province` VALUES ('220000000000', '吉林省', 1, '0');
INSERT INTO `area_province` VALUES ('230000000000', '黑龙江省', 1, '0');
INSERT INTO `area_province` VALUES ('310000000000', '上海市', 1, '0');
INSERT INTO `area_province` VALUES ('320000000000', '江苏省', 1, '0');
INSERT INTO `area_province` VALUES ('330000000000', '浙江省', 1, '0');
INSERT INTO `area_province` VALUES ('340000000000', '安徽省', 1, '0');
INSERT INTO `area_province` VALUES ('350000000000', '福建省', 1, '0');
INSERT INTO `area_province` VALUES ('360000000000', '江西省', 1, '0');
INSERT INTO `area_province` VALUES ('370000000000', '山东省', 1, '0');
INSERT INTO `area_province` VALUES ('410000000000', '河南省', 1, '0');
INSERT INTO `area_province` VALUES ('420000000000', '湖北省', 1, '0');
INSERT INTO `area_province` VALUES ('430000000000', '湖南省', 1, '0');
INSERT INTO `area_province` VALUES ('440000000000', '广东省', 1, '0');
INSERT INTO `area_province` VALUES ('450000000000', '广西壮族自治区', 1, '0');
INSERT INTO `area_province` VALUES ('460000000000', '海南省', 1, '0');
INSERT INTO `area_province` VALUES ('500000000000', '重庆市', 1, '0');
INSERT INTO `area_province` VALUES ('510000000000', '四川省', 1, '0');
INSERT INTO `area_province` VALUES ('520000000000', '贵州省', 1, '0');
INSERT INTO `area_province` VALUES ('530000000000', '云南省', 1, '0');
INSERT INTO `area_province` VALUES ('540000000000', '西藏自治区', 1, '0');
INSERT INTO `area_province` VALUES ('610000000000', '陕西省', 1, '0');
INSERT INTO `area_province` VALUES ('620000000000', '甘肃省', 1, '0');
INSERT INTO `area_province` VALUES ('630000000000', '青海省', 1, '0');
INSERT INTO `area_province` VALUES ('640000000000', '宁夏回族自治区', 1, '0');
INSERT INTO `area_province` VALUES ('650000000000', '新疆维吾尔自治区', 1, '0');

-- ----------------------------
-- Table structure for cust_about_app
-- ----------------------------
DROP TABLE IF EXISTS `cust_about_app`;
CREATE TABLE `cust_about_app`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '关于id',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '所属企业',
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '项目名',
  `android_code_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'android最新版本name',
  `android_code_version` int(11) NULL DEFAULT NULL COMMENT 'android最新版本version',
  `android_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'android最新版本url',
  `ios_code_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'ios版本name',
  `ios_code_version` int(11) NULL DEFAULT NULL COMMENT 'ios版本version',
  `ios_url` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'ios版本url',
  `description` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'app简介',
  `logo` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '项目logo地址',
  `creater_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建人,企业端用户',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '最新一次修改人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '最新一次修改时间',
  `android_update_description` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'android更新描述',
  `ios_update_description` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT 'ios更新描述',
  `status` tinyint(1) NOT NULL DEFAULT 1 COMMENT '状态，0：停用；1：启用',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '关于app表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cust_advertisement
-- ----------------------------
DROP TABLE IF EXISTS `cust_advertisement`;
CREATE TABLE `cust_advertisement`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '广告id',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '广告所属企业',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '广告内容',
  `attachment_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '广告图片地址',
  `status` int(1) NULL DEFAULT 1 COMMENT '广告状态,1正常，0删除',
  `expired_time` datetime(0) NULL DEFAULT NULL COMMENT '广告期限',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建者id,企业用户',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '广告创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '广告修改时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '修改者id，企业用户',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '广告表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cust_attachment
-- ----------------------------
DROP TABLE IF EXISTS `cust_attachment`;
CREATE TABLE `cust_attachment`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '图片id',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片所属企业',
  `url` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '图片地址路径',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '图片创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '图片表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cust_attention
-- ----------------------------
DROP TABLE IF EXISTS `cust_attention`;
CREATE TABLE `cust_attention`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '关注id',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '关注所属企业',
  `attention_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '关注者id',
  `be_attention_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '被关注着id',
  `status` int(1) NULL DEFAULT 1 COMMENT '关注状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '关注创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '关注表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cust_comment
-- ----------------------------
DROP TABLE IF EXISTS `cust_comment`;
CREATE TABLE `cust_comment`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '评论id',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '评论所属企业',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '评论创建者',
  `talk_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '评论所属话题',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '评论内容',
  `status` int(1) NULL DEFAULT 1 COMMENT '评论状态',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '评论创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '评论修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '评论表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cust_comment
-- ----------------------------
INSERT INTO `cust_comment` VALUES ('7f1c1580-107e-4158-a5d2-54a83f6c49cf', 'string', 'string', 'dfc145b6-065c-4293-8463-ef7595f912c7', 'string', 1, '2022-12-23 02:26:49', '2022-12-23 02:26:49');
INSERT INTO `cust_comment` VALUES ('9ee7f585-6ec4-4ce7-b458-59879a76fe0d', 'string', 'string', 'dfc145b6-065c-4293-8463-ef7595f912c7', 'string123', 1, '2022-12-23 02:28:33', '2022-12-23 02:28:33');
INSERT INTO `cust_comment` VALUES ('f959853f-2b34-4ed0-a1ef-30ef8027b0d9', 'string', 'string', 'dfc145b6-065c-4293-8463-ef7595f912c7', 'string', 0, '2022-12-23 02:22:21', '2022-12-23 02:30:53');

-- ----------------------------
-- Table structure for cust_message
-- ----------------------------
DROP TABLE IF EXISTS `cust_message`;
CREATE TABLE `cust_message`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '消息id',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '消息所属企业',
  `title` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '消息标题',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '消息内容',
  `status` int(1) NULL DEFAULT 1 COMMENT '消息状态',
  `customer_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '消息所属客户',
  `type` int(1) NULL DEFAULT NULL COMMENT '消息类型,1:注册消息，修改密码；2.话题被赞，被评论了；3.用户被关注了；4.被举报了；5.举报受理情况；6. 意见反馈处理情况；',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '消息创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '消息表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cust_praise
-- ----------------------------
DROP TABLE IF EXISTS `cust_praise`;
CREATE TABLE `cust_praise`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '点赞id',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '点赞所属企业',
  `status` int(1) NULL DEFAULT 1 COMMENT '点赞状态',
  `talk_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '所属文章id',
  `praise_user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '点赞者id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '点赞创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '点赞修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '点赞表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cust_report
-- ----------------------------
DROP TABLE IF EXISTS `cust_report`;
CREATE TABLE `cust_report`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '举报id',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '举报所属企业',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '举报内容',
  `classify` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '举报类别，配置在字典中',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '举报创建时间',
  `status` int(1) NULL DEFAULT 1 COMMENT '举报状态',
  `source_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '被举报的id，根据source_type值，0的话当前source_id表示话题id；1的话当前source_id表示评论id',
  `source_type` int(1) NULL DEFAULT NULL COMMENT '被举报类型,0:表示举报话题，1：表示举报评论',
  `creator_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '举报发起人id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '举报表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cust_suggest
-- ----------------------------
DROP TABLE IF EXISTS `cust_suggest`;
CREATE TABLE `cust_suggest`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '所属企业',
  `content` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '意见内容',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '创建者id',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `status` int(1) NULL DEFAULT 1 COMMENT '意见状态',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '意见反馈表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Table structure for cust_talk
-- ----------------------------
DROP TABLE IF EXISTS `cust_talk`;
CREATE TABLE `cust_talk`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '话题id',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '话题所属企业',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '话题所属用户',
  `title` varchar(32) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '话题标题',
  `content` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '话题内容',
  `status` int(1) NULL DEFAULT 1 COMMENT '话题状态',
  `satisface_rate` int(3) NULL DEFAULT NULL COMMENT '话题满意度',
  `attachment_ids` varchar(2000) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '话题拥有的图片id,逗号隔开',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '话题创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '话题修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '话题表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cust_talk
-- ----------------------------
INSERT INTO `cust_talk` VALUES ('dfc145b6-065c-4293-8463-ef7595f912c7', 'string', 'string', 'string', 'string', 0, 80, 'string', '2022-12-23 02:22:20', '2022-12-23 02:23:16');

-- ----------------------------
-- Table structure for cust_user
-- ----------------------------
DROP TABLE IF EXISTS `cust_user`;
CREATE TABLE `cust_user`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL COMMENT '用户id',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户所属企业',
  `phone` varchar(11) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户手机号',
  `password` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户密码',
  `unique_identy` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户唯一标识',
  `attachment_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户头像',
  `address` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户所在城市',
  `sign` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户签名',
  `sex` int(1) NULL DEFAULT -1 COMMENT '用户性别',
  `nickname` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户昵称',
  `wechatno` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '用户微信号',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `last_login_ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '最近一次登录的ip',
  `last_login_time` datetime(0) NULL DEFAULT NULL COMMENT '最近一次登录时间',
  `status` int(1) NULL DEFAULT 1 COMMENT '用户状态1：启用 0：停用2：锁定（在密码错误达到一定次数时，进行锁定）',
  `error_count` int(1) NULL DEFAULT 0 COMMENT '用户登录错误次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of cust_user
-- ----------------------------
INSERT INTO `cust_user` VALUES ('string', 'string', 'string', 'string', 'string', 'string', 'string', 'string', 0, 'string', 'string', '2022-12-21 06:58:02', '2022-12-21 06:58:02', '192.168.102.4', '2022-12-23 02:28:10', 1, 0);

-- ----------------------------
-- Table structure for ent_dict_config
-- ----------------------------
DROP TABLE IF EXISTS `ent_dict_config`;
CREATE TABLE `ent_dict_config`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编号',
  `item_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典编号',
  `item_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '停用:0,启用:1',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典项表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ent_dict_config
-- ----------------------------
INSERT INTO `ent_dict_config` VALUES ('aef73f02-2b39-4381-b89f-9ded66bf8fe1', 'JXSG20221121c85d', 'infomationType', '资讯类型', 1, '发表文章所属类型', 'adminGQ', '2022-11-22 08:20:50', 'adminGQ', '2022-11-22 08:21:23');

-- ----------------------------
-- Table structure for ent_dict_item_config
-- ----------------------------
DROP TABLE IF EXISTS `ent_dict_item_config`;
CREATE TABLE `ent_dict_item_config`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编号',
  `item_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典编号',
  `detail_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '明细code',
  `detail_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '字典名称',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '停用:0,启用:1,删除:2',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '字典明细表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ent_dict_item_config
-- ----------------------------
INSERT INTO `ent_dict_item_config` VALUES ('6bfe722f-bf7b-451d-85d0-f3697679b7ce', 'JXSG20221121c85d', 'infomationType', 'InfomationJoke', '笑话', 1, '资讯类型之笑话', '超级管理员', '2022-11-22 08:23:54', '超级管理员', '2022-11-22 08:30:25');

-- ----------------------------
-- Table structure for ent_log
-- ----------------------------
DROP TABLE IF EXISTS `ent_log`;
CREATE TABLE `ent_log`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `login_account` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录账号',
  `company_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编码',
  `company_name` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `method` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法名',
  `method_desc` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '方法描述',
  `method_args` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '方法参数',
  `operate_time` datetime(0) NULL DEFAULT NULL COMMENT '登录时间',
  `operate_ip` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'IP地址',
  `operate_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '操作类型（0-登录日志，1-操作日志）',
  `terminal_type` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '终端(0-pc端，1-安卓，2-ios)',
  `status` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态(0成功1异常)',
  `status_code` varchar(4) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '状态码',
  `messages` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '请求返回描述',
  `is_delete` int(11) NULL DEFAULT NULL COMMENT '是否删除',
  `exception_code` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常编码',
  `exception_description` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '异常描述',
  `exception_stack_msg` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '异常堆栈',
  `create_time` datetime(0) NULL DEFAULT NULL,
  `create_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `update_by` varchar(64) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '企业日志表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ent_log
-- ----------------------------
INSERT INTO `ent_log` VALUES ('0074fc32-d395-4bb6-8140-b728b4169345', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=216da748-27f7-45cf-9986-9b40e9ecd666&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 02:59:08', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:59:08', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('03500edd-8229-46dc-9fc1-989773ef7056', '超级管理员', NULL, NULL, '/getModuleList', NULL, 'status=-1&pageIndex=1&pageSize=10', '2022-12-23 02:57:26', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:26', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('0728d055-c9e5-4fef-a702-00bae9781254', '超级管理员', NULL, NULL, '/getEnterpriseByCompanyCode', NULL, 'companyCode=JXSG20221121c85d', '2022-12-23 03:10:42', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:10:42', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('0842c830-dea8-431d-823e-25bf6926b371', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:02:46', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:46', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('0862939c-7c4e-456f-b1b7-83a8ea7b8b8f', '超级管理员', NULL, NULL, '/updateSysModule', NULL, '{\"moduleId\":\"dd44c89d-4c59-436d-aef1-abc6a3fbf4bc\",\"moduleName\":\"测试模块\",\"createUser\":\"admin\",\"createTime\":\"2022-11-17T07:18:36.000+0000\",\"updateUser\":\"admin\",\"updateTime\":\"2022-11-17T07:18:36.000+0000\",\"remark\":\"测试模块\",\"status\":1}', '2022-12-23 02:56:55', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:56:55', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('086aa9c1-a49e-4658-a33e-848c16a854a2', '超级管理员', NULL, NULL, '/getEffectiveModule', NULL, NULL, '2022-12-23 03:07:50', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:07:50', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('0992d528-8c5b-4c4e-bbcd-cff97c896236', '超级管理员', NULL, NULL, '/getSysEnterpriseList', NULL, 'pageIndex=1&pageSize=10', '2022-12-23 02:55:05', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:55:05', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('0a742d78-bb41-4695-83fc-fe7059fe6fb1', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=d9e11dc6-8d0b-4890-8628-88896ef5b6d0&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:04:07', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:04:07', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('0d458652-73c8-4abc-99d4-d97dcce20b92', '超级管理员', NULL, NULL, '/getEnterpriseByCompanyCode', NULL, 'companyCode=JXSG20221121c85d', '2022-12-23 03:07:29', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:07:29', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('19b21067-2404-47af-940e-7227fc7106e5', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=b8bf4f17-0749-4251-b547-856ee4dff8dd&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:00:18', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:18', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('1d2ba880-de17-4779-b3c6-3f36668e5afb', '超级管理员', NULL, NULL, '/getModuleList', NULL, 'status=-1&pageIndex=1&pageSize=10', '2022-12-23 02:57:30', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:30', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('1dd31cf4-b6ca-408c-bba5-b9dfcf1ced43', '超级管理员', 'JXSG20221121c85d', NULL, '/index', NULL, NULL, '2022-12-23 02:56:27', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:56:27', 'adminGQ', NULL, NULL);
INSERT INTO `ent_log` VALUES ('1df97345-4771-409e-b9c3-bf7b8d318fb3', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=a4a3e7e0-6252-4a27-a281-80684d50882e&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:00:14', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:14', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('1f60dd0b-0a44-4fbe-9350-fc51437b1df2', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:04:44', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:04:44', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('242bc2bd-8bb4-425b-b2f5-8d879a45cb23', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=e3a1972b-5637-4e01-b080-670d555cf26f&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:02:24', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:24', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('25400622-8d46-420b-9931-8a1e5bd1e129', '超级管理员', NULL, NULL, '/getMenuById', NULL, 'menuId=e3a1972b-5637-4e01-b080-670d555cf26f', '2022-12-23 03:02:33', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:33', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('2579fccc-9bff-4acf-8cc3-2413ce4e2e5e', '超级管理员', NULL, NULL, '/editMenu', NULL, '{\"menuId\":\"e3a1972b-5637-4e01-b080-670d555cf26f\",\"isDesensite\":null,\"menuName\":\"日志管理\",\"url\":null,\"sequence\":\"5\",\"icon\":\"fa fa-commenting-o\",\"parentId\":\"#\",\"parentName\":null,\"createUser\":\"admin\",\"createTime\":\"2022-11-17T11:52:25.000+0000\",\"updateUser\":\"admin\",\"updateTime\":\"2022-11-17T11:52:25.000+0000\",\"status\":1,\"desensitizeStatus\":-1,\"moduleId\":\"04c3ea3f-18b5-46bc-83d4-f45c573a6210\",\"remark\":\"企业端日志信息，登录日志和操作日志\",\"parentStatus\":null,\"parentUrl\":null,\"children\":null}', '2022-12-23 03:02:28', '192.168.102.19', '1', '0', '1', '400', '失败：修改成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:28', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('2a52e5d7-3d6d-40ba-a1bf-e61a446c5e6b', '超级管理员', NULL, NULL, '/getMenuById', NULL, 'menuId=e3a1972b-5637-4e01-b080-670d555cf26f', '2022-12-23 03:02:24', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:24', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('2b0187b7-5c76-45d5-88b0-f28849c3b9f2', '超级管理员', NULL, NULL, '/getMenuById', NULL, 'menuId=a4a3e7e0-6252-4a27-a281-80684d50882e', '2022-12-23 03:00:25', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:25', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('2dd33515-c06e-4cea-ac70-cf3c92639795', '超级管理员', NULL, NULL, '/getSysEnterpriseList', NULL, 'pageIndex=1&pageSize=10', '2022-12-23 03:07:27', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:07:27', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('311e1df6-f442-4504-9de1-facb6f2a52b9', '超级管理员', NULL, NULL, '/getModuleList', NULL, 'status=-1&pageIndex=1&pageSize=10', '2022-12-23 02:56:00', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:56:00', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('34474174-e1f6-4a20-9ac7-76aea1926eae', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=e3a1972b-5637-4e01-b080-670d555cf26f&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:00:20', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:20', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('3480354c-f0cf-41af-a03b-052459254581', '超级管理员', NULL, NULL, '/getSysEnterpriseList', NULL, 'pageIndex=1&pageSize=10', '2022-12-23 03:07:53', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:07:53', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('3b8ff840-0e7b-40b8-a49c-d39fdb4c81f1', '超级管理员', NULL, NULL, '/getModuleList', NULL, 'status=-1&pageIndex=1&pageSize=10', '2022-12-23 02:59:03', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:59:03', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('3c469440-3774-46d8-a5d1-d0d239b3ec1d', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=a4a3e7e0-6252-4a27-a281-80684d50882e&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:00:11', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:11', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('3c73f891-397b-49b0-b9f9-365ca34c9df6', '超级管理员', NULL, NULL, '/getModuleList', NULL, 'status=-1&pageIndex=1&pageSize=10', '2022-12-23 02:58:20', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:58:20', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('42a212b4-2e8e-4ee4-9d6f-21189991c03f', '超级管理员', NULL, NULL, '/getEffectiveModule', NULL, NULL, '2022-12-23 03:07:29', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:07:29', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('42cf93aa-124e-4527-8ae9-5bc63cb45174', '超级管理员', NULL, NULL, '/addMenu', NULL, '{\"menuName\":\"话题列表\",\"desensitizeStatus\":1,\"sequence\":\"1\",\"url\":\"1234\",\"remark\":\"\",\"parentId\":\"d9e11dc6-8d0b-4890-8628-88896ef5b6d0\",\"parentName\":\"话题管理\",\"moduleId\":\"04c3ea3f-18b5-46bc-83d4-f45c573a6210\",\"status\":1,\"icon\":\"fa fa-assistive-listening-systems\"}', '2022-12-23 03:04:44', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:04:44', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('460f4263-e1c4-41c2-ae43-49181f50cadb', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=b8bf4f17-0749-4251-b547-856ee4dff8dd&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 02:59:09', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:59:09', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('47647a77-9f3e-4817-9527-350b2915c513', '超级管理员', NULL, NULL, '/updateSysModuleStatus', NULL, '{\"status\":\"0\",\"moduleId\":\"dd44c89d-4c59-436d-aef1-abc6a3fbf4bc\"}', '2022-12-23 02:57:30', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:30', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('48f42f77-05aa-46ff-8bf8-7e33301b2e66', NULL, NULL, NULL, '/logout', NULL, '{}', '2022-12-23 03:07:23', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:07:23', NULL, NULL, NULL);
INSERT INTO `ent_log` VALUES ('4c33d39c-b8b1-407c-92cb-2af9bed93fde', '超级管理员', NULL, NULL, '/updateMenuStatus', NULL, '{\"menuId\":\"1223709c-bf3f-4f54-8a85-895cc8709146\",\"status\":0}', '2022-12-23 02:57:01', '192.168.102.19', '1', '0', '1', '400', '失败：该配置部分企业正在使用，无法停用', 0, NULL, NULL, NULL, '2022-12-23 02:57:01', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('4d00f2f1-232a-4d5c-b513-e81e61807b1a', '超级管理员', NULL, NULL, '/editMenu', NULL, '{\"menuId\":\"d9e11dc6-8d0b-4890-8628-88896ef5b6d0\",\"isDesensite\":null,\"menuName\":\"话题管理\",\"url\":null,\"sequence\":3,\"icon\":\"fa fa-assistive-listening-systems\",\"parentId\":\"#\",\"parentName\":null,\"createUser\":\"admin\",\"createTime\":\"2022-12-23T03:01:12.000+0000\",\"updateUser\":\"admin\",\"updateTime\":\"2022-12-23T03:01:12.000+0000\",\"status\":1,\"desensitizeStatus\":-1,\"moduleId\":\"04c3ea3f-18b5-46bc-83d4-f45c573a6210\",\"remark\":\"\",\"parentStatus\":null,\"parentUrl\":null,\"children\":null}', '2022-12-23 03:02:59', '192.168.102.19', '1', '0', '1', '400', '失败：修改成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:59', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('4e6c4308-dee0-4542-a1d8-62dccd2af8c7', NULL, NULL, NULL, '/doLogin', NULL, '{\"username\":\"admin\",\"password\":\"e10adc3949ba59abbe56e057f20f883e\",\"code\":\"4394\",\"key\":\"096d3a817a272647f4ada2d6d733a8fb\"}', '2022-12-23 02:55:04', '192.168.102.19', '0', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:55:04', NULL, NULL, NULL);
INSERT INTO `ent_log` VALUES ('4ecfe39a-b0b5-4240-b146-8240e9769e4e', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 02:56:19', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:56:19', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('508dbda5-5550-4d41-ad75-a9032429d0cb', '超级管理员', NULL, NULL, '/getModuleList', NULL, 'status=-1&pageIndex=1&pageSize=10', '2022-12-23 03:03:33', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:03:33', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('5157e2e6-8520-4f7c-89c6-0abcf499f824', '超级管理员', NULL, NULL, '/getEffectiveModule', NULL, NULL, '2022-12-23 03:10:29', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:10:29', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('54659eb9-dadd-4628-a49c-1236f2dda631', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=d9e11dc6-8d0b-4890-8628-88896ef5b6d0&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:01:15', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:01:15', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('54af03ff-ffa1-4ce0-b17e-8e7555eee82e', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=f5cf8c1c-6491-44b5-9e54-e289a4fdb094&moduleId=dd44c89d-4c59-436d-aef1-abc6a3fbf4bc', '2022-12-23 02:57:21', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:21', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('58bb2b84-e04b-4199-a3b4-64a8683bd8f9', '超级管理员', NULL, NULL, '/getEffectiveModule', NULL, NULL, '2022-12-23 03:08:22', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:08:22', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('5b63fce4-b7ae-45be-bbf1-fd382714ef26', '超级管理员', NULL, NULL, '/editMenu', NULL, '{\"menuId\":\"e3a1972b-5637-4e01-b080-670d555cf26f\",\"isDesensite\":null,\"menuName\":\"日志管理\",\"url\":null,\"sequence\":5,\"icon\":\"fa fa-clock-o\",\"parentId\":\"#\",\"parentName\":null,\"createUser\":\"admin\",\"createTime\":\"2022-11-17T11:52:25.000+0000\",\"updateUser\":\"admin\",\"updateTime\":\"2022-12-23T03:02:28.000+0000\",\"status\":1,\"desensitizeStatus\":-1,\"moduleId\":\"04c3ea3f-18b5-46bc-83d4-f45c573a6210\",\"remark\":\"企业端日志信息，登录日志和操作日志\",\"parentStatus\":null,\"parentUrl\":null,\"children\":null}', '2022-12-23 03:02:46', '192.168.102.19', '1', '0', '1', '400', '失败：修改成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:46', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('60fcd1ec-7da7-4fd5-9aa4-131755abe7b5', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:06:16', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:06:16', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('639b85e9-8b43-498a-9a3b-b1deb02cd159', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=e3a1972b-5637-4e01-b080-670d555cf26f&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:02:33', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:33', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('651ba85d-7c38-4175-b81a-11e261060ad7', '超级管理员', NULL, NULL, '/getModuleList', NULL, 'status=-1&pageIndex=1&pageSize=10', '2022-12-23 02:57:12', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:12', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('6be41e6c-90ab-4e90-b2fc-5471bb29fb1d', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=e3a1972b-5637-4e01-b080-670d555cf26f&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:00:19', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:19', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('6dbae1c9-8dbb-480c-a97f-1f9ce53ed89c', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=1223709c-bf3f-4f54-8a85-895cc8709146&moduleId=dd44c89d-4c59-436d-aef1-abc6a3fbf4bc', '2022-12-23 02:57:18', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:18', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('6e130887-64c2-4f81-bdbb-e3d583f10c82', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=b8bf4f17-0749-4251-b547-856ee4dff8dd&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:00:15', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:15', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('6f1c627d-80fd-4338-b538-46119e35aeab', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=b8bf4f17-0749-4251-b547-856ee4dff8dd&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:00:29', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:29', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('708a7170-ea4f-412b-8a84-563484fd254d', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:02:22', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:22', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('71201448-869f-4e83-9dba-664bae9fe64a', '超级管理员', 'JXSG20221121c85d', NULL, '/doLogin', NULL, '{\"keyScript\":\"gAyf5WyyNoJxLNFzzAcsE7aj9ymPSRzEFNIW6G7xtn5/N8pomGW92KbHSZa4kHLFPnlThs1DaYLqPgrgALYj7+3VuDkYgzQxePh/kuvmoQJG5ud/awDdjANU1dDkK7RNtfKRmuBhSHBf5Loe3YBU5d0dAN0qaUu/gUrxSbnXqSmluOlN/47PHuSDszYbqT/ZFFfdfW3BgOclu+nkDwaqPzTthLE61ayP3YENfX4pJTUP1GrDqfE2jAOIBY8l3aaUNm5nlNkaEJ7ecz+V7jjGrzcE/0sns/K0kYhKPahzXjiKTvujw9R737fZWx46EPHOTPUN4h/sz+CgdRbl1u2XACQc1Af9Hl7EIUZ49HSbI7R46HjNfkGpwYOixgqiU+wy8A4jxAn4FLec7JtWlWNWOFi0AfDaXXfSbbWxqJl6Rg8FHrwzmJOsp2MUu85ET20qmoikzhZI7kTQXBd7LpHsgSym/vZBsmPUS3IePTIpOgdO7WZmvLjhJSwQ4yaX3pXgdtBdW4zwRsv33OyAanpXLZ7QkN9rA8/81CzAf9ZEpwNgY4dP4Ie1Mg8AtjN2sPs2y949J+ozXNFOCBX2N5/IEWWDypGaIa9NDsP8atzIerJh/W8hX1rYe50B4oB6f200VzIyzbgyrtJ+NgSuGRob3AfDc6Wms1gq6TRUta4nDt4=\"}', '2022-12-23 02:56:27', '192.168.102.19', '0', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:56:27', 'adminGQ', NULL, NULL);
INSERT INTO `ent_log` VALUES ('741e2d53-85b6-485c-8a3d-0f915af2f951', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 02:59:05', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:59:05', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('77c38fa0-f55a-4f90-ae34-60be0b106753', '超级管理员', NULL, NULL, '/getEnterpriseByCompanyCode', NULL, 'companyCode=JXSG20221121c85d', '2022-12-23 02:58:57', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:58:57', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('7d6c4135-42e5-405c-bb24-1215602de86c', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=b8bf4f17-0749-4251-b547-856ee4dff8dd&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:00:23', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:23', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('7fa51b0c-ddb4-4cb8-a90a-a2afc2353f53', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:05:49', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:05:49', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('807420b5-8d4a-45a1-8fb5-1595478389ae', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:02:28', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:28', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('8087b065-c092-43f5-aa64-dab7c1733ca1', '超级管理员', 'JXSG20221121c85d', NULL, '/doLogin', NULL, '{\"keyScript\":\"abLxDO09XkFn+I4rmYXj8c4MtziRKqnikZZSKKeU2Q7JqzB42IczH1nmtsJZl3DHxoXaVNWJ+m/OlJxgeduEMJ75CFQFexOTPgqlMX0IwsguIonF+q4Uvdty7ZNTiB9AipuVnAGVA39oC8z1djgc8hEIwWRdqDh4/m825WvNB4bZKEaK4vn+jHSUM0hhIihWtqyTSHW4AlDjaynwO0mgnG+VVe/aX0DKdQyRXJt8M6sZXD1hchQaVwk/cE4PqFMb3DtQDeHoU0HRlsGgpFSG6TDtOT1OEQIhOh9tQb4rdvIQ/qKQiv5SrO1lONnmUdxBldp62xSsf/T9Jj6TSIODI4bcQK/ustuOvKxff0l+crWAuRTGqNs8+SEpwfHjEvTG9LwzK9qT2UKhogu/Ds6f3iVBwi+uhw8Zjz1fCAaYJn3597gL8BsZEfmkUlbyhb7FQei6AmTNP7pfqrAzDvLNQCl+/Yz8eLxV0iTLy71IzW4fNHcSTOVpqD+c4x089nzhCeid9I9G9RVOo0ewXDM/oVQNNiTQogSlK/asaAH6fh9tbGhbfK+BqztQH6g1XmNVUYqRfdMBJuBrK4EVylksLcbBv1RIYLUot4a65oHqRsJxv8NIJ/+Ftwf4fR0l8ZrIxsQq1T2p+yva/8UzgI4+PuAF8D2ochdtHdGxCDFWnYg=\"}', '2022-12-23 03:08:00', '192.168.102.19', '0', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:08:00', 'adminGQ', NULL, NULL);
INSERT INTO `ent_log` VALUES ('81c6a272-f4ca-44ef-9c2a-b8cab02adac7', '超级管理员', NULL, NULL, '/getOtherList', NULL, 'pageIndex=1&pageSize=10', '2022-12-23 03:03:51', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:03:51', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('83b5b20f-dee7-4960-a890-77759832b77f', '超级管理员', NULL, NULL, '/getModuleList', NULL, 'status=-1&pageIndex=1&pageSize=10', '2022-12-23 03:03:53', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:03:53', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('85b0766f-b174-4859-8c42-7283f2b6e41c', '超级管理员', NULL, NULL, '/updateSysEnterprise', NULL, '{\"companyName\":\"静馨舍工作室\",\"shortName\":\"恒馨\",\"tel\":\"18256908359\",\"companyManager\":\"高强\",\"email\":\"1105107264@qq.com\",\"wechatNo\":\"foxuetu\",\"status\":1,\"moduleIds\":[\"04c3ea3f-18b5-46bc-83d4-f45c573a6210\"],\"companyCode\":\"JXSG20221121c85d\"}', '2022-12-23 03:07:53', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:07:53', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('861c4348-88cb-44c2-bc36-2a783646eb9f', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=d9e11dc6-8d0b-4890-8628-88896ef5b6d0&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:04:04', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:04:04', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('86fceeca-7d1e-4a4b-9714-6c93dcd046f8', '超级管理员', NULL, NULL, '/getMenuById', NULL, 'menuId=d9e11dc6-8d0b-4890-8628-88896ef5b6d0', '2022-12-23 03:02:48', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:48', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('873c4cac-382f-4028-9e97-ae5f9e01a108', '超级管理员', 'JXSG20221121c85d', NULL, '/doLogin', NULL, '{\"keyScript\":\"q3+nooWyqh+TG0zmlGsjb8ZQBAqDlrpkzmOQk2OxKH1twZ+XecOh7Skkz7tcZ93JzoXMxtRPoSHloy1f3+/WuJ0dcfNp4RZTP7ExyYG0/G/F4/vA5gUdAKgqMmoYrjt9s/zNeK+N5d00owJUs8ZgeG/sUGsgmceVBZoBE0GqijKMdrHbOJy3w7wBA7bJE9ISaojOcfWHBXIo2oL61fynV0G8V/PJ4+f1PPOCtkwqfDD2nHSRo9QfCq7pVmEPc6kiAzQ5N/5xIH1Ex1Pvy4r1Ux20G82YHj5NmvxQeveytIYXHtoSTKyaaeIm35IOh5/1zeWEoopXoDjt04dL46I2VKVFN3NSK3XFCp3D1oU4IqVRaChPhb/dvSUL7vcoGt/HXim+LHHFTGnBWwhWc//716TCTwMrn+GXjIfedutkgW6ROZpwJF6qIcUs0DqPs3RxJoVUOGwUpPSCNZbflKyQEcjyv2MvoQgKD69vAamG+ccfFLzKdavQmumh/+SyfhPGEb7ZEQoMwpRC/EQcSuesAfLUHHHfLJtY+JbiZHxuQR7YZlugjhYIvKKISCwN+m82Q/Kikb25zY7rVjVmkB1nQFyPUSqazXnV369p8Nq8eivXtkOHVngudobM2js1yQWYqGttOYJREnI9jgFovE0GOn73AsczhS4/6zu7B6BGiN8=\"}', '2022-12-23 03:07:36', '192.168.102.19', '0', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:07:36', 'adminGQ', NULL, NULL);
INSERT INTO `ent_log` VALUES ('8a7b3841-23b3-40a5-81df-06263fd1fcb2', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=dd44c89d-4c59-436d-aef1-abc6a3fbf4bc', '2022-12-23 02:56:58', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:56:58', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('8afe75e4-d0a7-48b7-80a4-9dda17752828', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=dd44c89d-4c59-436d-aef1-abc6a3fbf4bc', '2022-12-23 02:57:16', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:16', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('8d518d48-b56b-4694-9a9e-040623fb2f03', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:03:55', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:03:55', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('8df404c9-c1b9-415b-83c1-83e373053db9', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=444fb273-673e-4b54-9e8d-b660f13e1888&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:02:30', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:30', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('8f94aa05-034d-4042-a1a5-11e46ea31c77', '超级管理员', NULL, NULL, '/getMenuById', NULL, 'menuId=e3a1972b-5637-4e01-b080-670d555cf26f', '2022-12-23 03:00:20', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:20', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('90e01e5e-bc27-419d-944b-0f181f18ec6d', '超级管理员', 'JXSG20221121c85d', NULL, '/index', NULL, NULL, '2022-12-23 03:07:36', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:07:36', 'adminGQ', NULL, NULL);
INSERT INTO `ent_log` VALUES ('916c6a8d-7a15-426c-8351-1b453b664426', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:02:59', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:59', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('92dd5a52-2181-4929-bbba-076942b6489a', '超级管理员', NULL, NULL, '/getModuleInfo', NULL, 'moduleId=dd44c89d-4c59-436d-aef1-abc6a3fbf4bc', '2022-12-23 02:56:44', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:56:44', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('99d613a4-23e8-499a-b06b-69c7f89b08c5', '超级管理员', NULL, NULL, '/getEffectiveModule', NULL, NULL, '2022-12-23 03:10:42', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:10:42', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('9f188da1-438a-4c2a-8481-449a3c00cb46', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=dd44c89d-4c59-436d-aef1-abc6a3fbf4bc', '2022-12-23 02:57:19', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:19', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('9f36098e-59e1-4a75-a76d-a27cd4282c12', '超级管理员', NULL, NULL, '/getEnterpriseByCompanyCode', NULL, 'companyCode=JXSG20221121c85d', '2022-12-23 03:10:22', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:10:22', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('a57a9498-688a-4093-8a33-db5fd052cdd6', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=dd44c89d-4c59-436d-aef1-abc6a3fbf4bc', '2022-12-23 02:57:22', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:22', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('a60dd100-fe65-4c90-883b-e62be08e4ca6', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=b8bf4f17-0749-4251-b547-856ee4dff8dd&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:00:13', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:13', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('a6164f87-f9f0-4152-bdcf-c074b3206179', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=444fb273-673e-4b54-9e8d-b660f13e1888&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:04:48', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:04:48', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('a89591f9-2e77-4695-a16d-18c4d553d412', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=e3a1972b-5637-4e01-b080-670d555cf26f&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:00:16', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:16', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('aa2f4f59-1d5b-4343-8b12-6055b618d7ec', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=dd44c89d-4c59-436d-aef1-abc6a3fbf4bc', '2022-12-23 02:56:06', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:56:06', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('aafae7d9-fb75-4b36-adfa-919f18f9247e', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=444fb273-673e-4b54-9e8d-b660f13e1888&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:05:56', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:05:56', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('abdac9a9-eaad-47bb-a19c-2bd3c8582e76', '超级管理员', 'JXSG20221121c85d', NULL, '/index', NULL, NULL, '2022-12-23 03:08:00', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:08:00', 'adminGQ', NULL, NULL);
INSERT INTO `ent_log` VALUES ('ae657f32-110c-4203-bf58-07153968a40a', '超级管理员', NULL, NULL, '/getModuleList', NULL, 'status=-1&pageIndex=1&pageSize=10', '2022-12-23 03:03:42', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:03:42', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('af72159a-f230-4462-8f08-02cb011a4a43', '超级管理员', NULL, NULL, '/getSysEnterpriseList', NULL, 'pageIndex=1&pageSize=10', '2022-12-23 02:58:56', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:58:56', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('b0925018-9aef-4a86-9004-6cd8e501e801', '超级管理员', NULL, NULL, '/getEffectiveModule', NULL, NULL, '2022-12-23 03:10:22', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:10:22', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('b1a80637-6a77-4e73-b9a1-cf6621abfd8f', '超级管理员', NULL, NULL, '/addMenu', NULL, '{\"menuName\":\"评论列表\",\"desensitizeStatus\":1,\"sequence\":\"1\",\"url\":\"1234\",\"remark\":\"\",\"parentId\":\"444fb273-673e-4b54-9e8d-b660f13e1888\",\"parentName\":\"评论管理\",\"moduleId\":\"04c3ea3f-18b5-46bc-83d4-f45c573a6210\",\"status\":1,\"icon\":\"fa fa-commenting\"}', '2022-12-23 03:05:39', '192.168.102.19', '1', '0', '1', '400', '失败：该菜单路径已经存在', 0, NULL, NULL, NULL, '2022-12-23 03:05:39', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('b21f47b2-219c-45cd-8ed1-e612dfbbd80a', '超级管理员', NULL, NULL, '/updateSysModule', NULL, '{\"moduleId\":\"04c3ea3f-18b5-46bc-83d4-f45c573a6210\",\"moduleName\":\"福生语录\",\"createUser\":\"admin\",\"createTime\":\"2022-11-17T07:23:12.000+0000\",\"updateUser\":\"admin\",\"updateTime\":\"2022-11-17T07:52:20.000+0000\",\"remark\":\"围绕我们身边的一些事情或礼仪方面，主要给自己看的语录\",\"status\":1}', '2022-12-23 02:58:19', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:58:19', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('b2a592ca-9b08-4414-be49-fe644c9bfa9e', '超级管理员', NULL, NULL, '/updateSysEnterprise', NULL, '{\"companyName\":\"静馨舍工作室\",\"shortName\":\"恒馨\",\"tel\":\"18256908359\",\"companyManager\":\"高强\",\"email\":\"1105107264@qq.com\",\"wechatNo\":\"foxuetu\",\"status\":1,\"moduleIds\":[\"04c3ea3f-18b5-46bc-83d4-f45c573a6210\"],\"companyCode\":\"JXSG20221121c85d\"}', '2022-12-23 02:57:11', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:11', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('b495302b-805e-412d-97f3-0e5174a66452', '超级管理员', NULL, NULL, '/getMenuById', NULL, 'menuId=b8bf4f17-0749-4251-b547-856ee4dff8dd', '2022-12-23 03:00:23', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:23', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('b7a7ea62-7fea-46cd-9f18-bd757815d671', '超级管理员', NULL, NULL, '/updateMenuStatus', NULL, '{\"menuId\":\"1223709c-bf3f-4f54-8a85-895cc8709146\",\"status\":0}', '2022-12-23 02:57:19', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:19', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('bce3ec91-9d32-4706-9d3f-e729384a8dd9', '超级管理员', NULL, NULL, '/getModuleList', NULL, 'status=-1&pageIndex=1&pageSize=10', '2022-12-23 02:56:39', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:56:39', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('bed3888f-5c7c-4831-9251-e7276962f77e', '超级管理员', NULL, NULL, '/getMenuById', NULL, 'menuId=444fb273-673e-4b54-9e8d-b660f13e1888', '2022-12-23 03:05:56', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:05:56', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('c1de6fac-e278-41a2-be96-4c85f6b36fb0', '超级管理员', NULL, NULL, '/index', NULL, 'userId=fb616e4e-2f24-4666-9fa1-e0749a60d228', '2022-12-23 02:55:04', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:55:04', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('c5237a67-28ba-41d3-8f5e-bd6b5d57c7f6', '超级管理员', NULL, NULL, '/getAllMenuTree', NULL, 'moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:01:12', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:01:12', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('cb373622-8bff-46dd-8b44-a91751afd4d4', '超级管理员', NULL, NULL, '/getSysEnterpriseList', NULL, 'pageIndex=1&pageSize=10', '2022-12-23 02:57:11', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:11', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('cfa20865-1a08-4afd-8685-ee8fb15c429b', '超级管理员', NULL, NULL, '/getModuleList', NULL, 'status=-1&pageIndex=1&pageSize=10', '2022-12-23 02:56:17', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:56:17', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('d2a4ed07-fb29-4160-b67a-2afb89b2cd8b', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=444fb273-673e-4b54-9e8d-b660f13e1888&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:05:53', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:05:53', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('d46b813d-affe-4448-9d26-065cab901133', '超级管理员', NULL, NULL, '/addMenu', NULL, '{\"menuName\":\"评论管理\",\"sequence\":\"4\",\"remark\":\"\",\"parentId\":\"#\",\"moduleId\":\"04c3ea3f-18b5-46bc-83d4-f45c573a6210\",\"status\":1,\"icon\":\"fa fa-commenting-o\"}', '2022-12-23 03:02:22', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:22', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('d6a79a84-e0c6-40d1-ba32-55f178452510', '超级管理员', NULL, NULL, '/getOtherList', NULL, 'pageIndex=1&pageSize=10', '2022-12-23 03:03:41', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:03:41', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('d811098a-bff8-43dc-8b44-5b547accd56c', '超级管理员', NULL, NULL, '/getModuleInfo', NULL, 'moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 02:57:34', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:34', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('d84fc6e2-6edc-40ea-a26e-0c7fb993f45b', '超级管理员', NULL, NULL, '/addMenu', NULL, '{\"menuName\":\"评论列表\",\"desensitizeStatus\":1,\"sequence\":\"1\",\"url\":\"123456\",\"remark\":\"\",\"parentId\":\"444fb273-673e-4b54-9e8d-b660f13e1888\",\"parentName\":\"评论管理\",\"moduleId\":\"04c3ea3f-18b5-46bc-83d4-f45c573a6210\",\"status\":1,\"icon\":\"fa fa-commenting\"}', '2022-12-23 03:06:16', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:06:16', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('dd3960b9-c9e2-4c30-a261-9ceb793f8d59', '超级管理员', NULL, NULL, '/addMenu', NULL, '{\"menuName\":\"话题管理\",\"sequence\":\"3\",\"remark\":\"\",\"parentId\":\"#\",\"moduleId\":\"04c3ea3f-18b5-46bc-83d4-f45c573a6210\",\"status\":1,\"icon\":\"fa fa-heart\"}', '2022-12-23 03:01:12', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:01:12', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('e6e1b6b4-3707-4232-8a0a-2d8277a83c9e', '超级管理员', NULL, NULL, '/updateMenuStatus', NULL, '{\"menuId\":\"f5cf8c1c-6491-44b5-9e54-e289a4fdb094\",\"status\":0}', '2022-12-23 02:57:22', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:22', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('e7f79503-25f0-4252-ae0e-b72e77ab33ce', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=a4a3e7e0-6252-4a27-a281-80684d50882e&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:00:25', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:00:25', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('eb8e0052-44fa-490e-8553-002c9800ebf8', '超级管理员', NULL, NULL, '/getEffectiveModule', NULL, NULL, '2022-12-23 02:58:57', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:58:57', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('ec57d225-0e66-4629-947b-fe97f3dc0d63', '超级管理员', NULL, NULL, '/getSysEnterpriseList', NULL, 'pageIndex=1&pageSize=10', '2022-12-23 02:57:06', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:06', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('ee21b3eb-3529-4446-9b98-ae2dcdb7da1d', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=444fb273-673e-4b54-9e8d-b660f13e1888&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:05:58', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:05:58', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('ef28cf78-1d21-49cf-b7c0-de972cdbfb02', NULL, NULL, NULL, '/logout', NULL, '{}', '2022-12-23 03:07:56', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:07:56', NULL, NULL, NULL);
INSERT INTO `ent_log` VALUES ('efb21c62-76bc-4a0d-ad22-c6c63eabe28f', '超级管理员', NULL, NULL, '/getEffectiveModule', NULL, NULL, '2022-12-23 02:57:08', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:08', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('efdc1a57-96b9-4cf6-b946-94b771071901', '超级管理员', NULL, NULL, '/getSysEnterpriseList', NULL, 'pageIndex=1&pageSize=10', '2022-12-23 03:03:39', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:03:39', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('f0c887d0-81ba-4834-870c-27cde97cbb87', '超级管理员', NULL, NULL, '/getModuleList', NULL, 'status=-1&pageIndex=1&pageSize=10', '2022-12-23 02:56:55', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:56:55', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('f18c7f9b-24fe-4bb2-bb3e-60f5e58b9f9b', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=1223709c-bf3f-4f54-8a85-895cc8709146&moduleId=dd44c89d-4c59-436d-aef1-abc6a3fbf4bc', '2022-12-23 02:57:00', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:00', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('f26f1318-16a6-4035-9839-05dc8ec9c8a1', '超级管理员', NULL, NULL, '/getEnterpriseByCompanyCode', NULL, 'companyCode=JXSG20221121c85d', '2022-12-23 02:57:08', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 02:57:08', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('f3958284-df21-4dfa-a952-2051d37a0ece', '超级管理员', NULL, NULL, '/getEnterpriseByCompanyCode', NULL, 'companyCode=JXSG20221121c85d', '2022-12-23 03:08:22', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:08:22', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('f74b5950-9e0e-4adc-8501-c430b7af07a6', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=b8bf4f17-0749-4251-b547-856ee4dff8dd&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:03:56', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:03:56', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('f8be1631-7b70-42ff-9858-c66c27d59535', '超级管理员', NULL, NULL, '/getEnterpriseByCompanyCode', NULL, 'companyCode=JXSG20221121c85d', '2022-12-23 03:10:29', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:10:29', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('f8cdeaca-d590-4133-8eda-b5f385fabe7d', '超级管理员', NULL, NULL, '/getAllMenuList', NULL, 'parentId=d9e11dc6-8d0b-4890-8628-88896ef5b6d0&moduleId=04c3ea3f-18b5-46bc-83d4-f45c573a6210', '2022-12-23 03:02:48', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:02:48', 'admin', NULL, NULL);
INSERT INTO `ent_log` VALUES ('fffc0cb6-671e-4174-a9a8-08446fc9a881', '超级管理员', NULL, NULL, '/getEnterpriseByCompanyCode', NULL, 'companyCode=JXSG20221121c85d', '2022-12-23 03:07:50', '192.168.102.19', '1', '0', '0', '200', '成功', 0, NULL, NULL, NULL, '2022-12-23 03:07:50', 'admin', NULL, NULL);

-- ----------------------------
-- Table structure for ent_menu
-- ----------------------------
DROP TABLE IF EXISTS `ent_menu`;
CREATE TABLE `ent_menu`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '所属企业',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `menu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'sys_menu主键',
  `module_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'sys_module主键',
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单父级id',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ent_menu
-- ----------------------------
INSERT INTO `ent_menu` VALUES ('1a8a5f67-2245-4d06-bee6-d507ad6b18d1', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', 'c0bd9ae4-6375-462f-85c0-526aba1c486a', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', 'a4a3e7e0-6252-4a27-a281-80684d50882e');
INSERT INTO `ent_menu` VALUES ('245263b5-4957-4d89-9870-f1d3abcb98a6', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', 'fe98249c-0d01-4ecf-85a3-e360ed21f172', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', 'a4a3e7e0-6252-4a27-a281-80684d50882e');
INSERT INTO `ent_menu` VALUES ('2b1f8f34-7316-412a-9845-de8c95d28b68', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', 'a4a3e7e0-6252-4a27-a281-80684d50882e', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', '#');
INSERT INTO `ent_menu` VALUES ('4194ad8c-e5b2-4a0a-b6f5-a1de8c00fc9c', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', '69b60731-6b35-423f-a52a-bb524fe0ec09', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', 'e3a1972b-5637-4e01-b080-670d555cf26f');
INSERT INTO `ent_menu` VALUES ('4a0b16af-6f5b-4bf3-bc5e-11b0de0d7b4d', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', 'b8bf4f17-0749-4251-b547-856ee4dff8dd', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', '#');
INSERT INTO `ent_menu` VALUES ('5f1cb3a6-ec4b-4f50-9f92-f618b29f4efc', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', 'db095c80-111f-4326-b183-d2e43e343f04', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', 'a4a3e7e0-6252-4a27-a281-80684d50882e');
INSERT INTO `ent_menu` VALUES ('61d396f6-1ad2-47f5-a53a-38c12a6d63c6', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', 'c2d82c74-0b30-41e2-9c0d-5f4f861c24e6', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', 'e3a1972b-5637-4e01-b080-670d555cf26f');
INSERT INTO `ent_menu` VALUES ('71013e94-a92d-4499-838b-792941c594e3', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', '444fb273-673e-4b54-9e8d-b660f13e1888', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', '#');
INSERT INTO `ent_menu` VALUES ('7a342b59-4f19-4c08-aca9-57d707a60034', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', 'a7d6dc6b-c9f3-4763-a186-4a86840f9e4c', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', 'a4a3e7e0-6252-4a27-a281-80684d50882e');
INSERT INTO `ent_menu` VALUES ('a77f17e0-2313-408f-8cb0-c6c14fa78025', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', 'eae4cea1-a52a-4935-82ba-89315c2502f6', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', 'd9e11dc6-8d0b-4890-8628-88896ef5b6d0');
INSERT INTO `ent_menu` VALUES ('adcbca18-b493-49f8-89f2-1d4eb9ce5bfb', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', 'd9e11dc6-8d0b-4890-8628-88896ef5b6d0', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', '#');
INSERT INTO `ent_menu` VALUES ('ba840706-baed-4b7a-9753-002fd7ce2175', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', 'e3a1972b-5637-4e01-b080-670d555cf26f', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', '#');
INSERT INTO `ent_menu` VALUES ('effc0b27-600a-490b-8489-955d853cd5d5', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', 'a1ca0716-1236-4acc-9bb1-1708a2199f6c', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', 'a4a3e7e0-6252-4a27-a281-80684d50882e');
INSERT INTO `ent_menu` VALUES ('f627ba40-91d5-4970-8280-c0ad0290613e', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', 'ec51d925-a81e-4c55-ae58-95176110f53f', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', '444fb273-673e-4b54-9e8d-b660f13e1888');
INSERT INTO `ent_menu` VALUES ('faa2c003-b884-4056-882f-bbadce161ce0', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', '216da748-27f7-45cf-9986-9b40e9ecd666', '04c3ea3f-18b5-46bc-83d4-f45c573a6210', 'b8bf4f17-0749-4251-b547-856ee4dff8dd');

-- ----------------------------
-- Table structure for ent_module
-- ----------------------------
DROP TABLE IF EXISTS `ent_module`;
CREATE TABLE `ent_module`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编号',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `module_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '关联sys_module的主键',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '企业关联系统模块表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ent_module
-- ----------------------------
INSERT INTO `ent_module` VALUES ('8a12be5e-6549-4a4c-b2e1-29b885cddda1', 'JXSG20221121c85d', 'admin', '2022-12-23 03:07:53', 'admin', '2022-12-23 03:07:53', '04c3ea3f-18b5-46bc-83d4-f45c573a6210');

-- ----------------------------
-- Table structure for ent_organization
-- ----------------------------
DROP TABLE IF EXISTS `ent_organization`;
CREATE TABLE `ent_organization`  (
  `org_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '组织编号',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编号',
  `parent_org_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级编号',
  `org_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织名称',
  `org_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织编码',
  `org_manager` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `org_tel` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话(手机号)',
  `org_short_tel` varchar(12) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '固定电话',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态（1：启用  0：停用）',
  `org_type` smallint(6) NULL DEFAULT NULL COMMENT '组织机构类型（1=部门;0=公司）',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`org_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '组织架构管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ent_organization
-- ----------------------------
INSERT INTO `ent_organization` VALUES ('5f99cbdf-4218-4cd9-b33a-3bde583fb044', 'JXSG20221121c85d', 'f01b7758-744b-4c3f-b531-9c784464a8cf', '接待小组', 'JDXZ', '恒馨', '18234598372', '0551-6298374', 1, 1, 'adminGQ', '2022-11-22 05:56:25', 'adminGQ', '2022-11-22 06:09:04');
INSERT INTO `ent_organization` VALUES ('e2604acf-1368-4873-8b16-4cba823c8ef3', 'JXSG20221121c85d', 'f01b7758-744b-4c3f-b531-9c784464a8cf', '科技小组', 'KJXZ', '佛学徒', '18256909311', '', 1, 1, 'adminGQ', '2022-11-22 05:46:09', 'adminGQ', '2022-11-22 06:09:09');
INSERT INTO `ent_organization` VALUES ('e2655d9a-d5e1-44ab-a4cc-7806b3f5b88c', 'JXSG20221121c85d', 'f01b7758-744b-4c3f-b531-9c784464a8cf', '财政小组', 'CZXZ', '恒馨', '18259102110', '0551-6820284', 1, 1, 'adminGQ', '2022-11-22 05:52:36', 'adminGQ', '2022-11-22 06:09:48');
INSERT INTO `ent_organization` VALUES ('f01b7758-744b-4c3f-b531-9c784464a8cf', 'JXSG20221121c85d', '#', '静馨舍工作室', '1', '佛学徒', '18256908110', NULL, 1, 0, 'admin', '2022-11-21 03:19:28', 'adminGQ', '2022-11-22 06:09:01');

-- ----------------------------
-- Table structure for ent_other_config
-- ----------------------------
DROP TABLE IF EXISTS `ent_other_config`;
CREATE TABLE `ent_other_config`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编码',
  `other_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '三方id',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '企业关联三方配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ent_other_config
-- ----------------------------
INSERT INTO `ent_other_config` VALUES ('4739c32f-2c31-430a-a9da-747466716969', 'JXSG20221121c85d', '13d03111-f149-4cb5-8555-eed59a5dbf7c', 'admin', '2022-11-21 05:46:35', 'admin', '2022-11-21 05:46:35');
INSERT INTO `ent_other_config` VALUES ('59d606f9-78a6-4c9f-8325-1148d29caa09', 'JXSG20221121c85d', '752214aa-dc42-45fd-895d-8b7d7d98a02e', 'admin', '2022-11-21 05:46:35', 'admin', '2022-11-21 05:46:35');

-- ----------------------------
-- Table structure for ent_profile
-- ----------------------------
DROP TABLE IF EXISTS `ent_profile`;
CREATE TABLE `ent_profile`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键id',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业编号',
  `content` longtext CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '公司简介',
  `delete_flag` smallint(6) NULL DEFAULT NULL COMMENT '删除标识 0 未删除 1 已删除',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ent_profile
-- ----------------------------
INSERT INTO `ent_profile` VALUES ('0c713979-5a94-40bc-b38b-5bd731def0d3', 'JXSG20221121c85d', '<p>段祺瑞（1865年3月6日－1936年11月2日），原名启瑞，字芝泉，<a href=\"https://baike.baidu.com/item/%E5%AE%89%E5%BE%BD%E7%9C%81/526353\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">安徽省</a><a href=\"https://baike.baidu.com/item/%E5%BA%90%E5%B7%9E%E5%BA%9C/5492566\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">庐州府</a><a href=\"https://baike.baidu.com/item/%E5%90%88%E8%82%A5%E5%8E%BF/5314625\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">合肥县</a>（今<a href=\"https://baike.baidu.com/item/%E5%AE%89%E5%BE%BD%E7%9C%81/526353\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">安徽省</a><a href=\"https://baike.baidu.com/item/%E5%90%88%E8%82%A5%E5%B8%82/6501395\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">合肥市</a>）人。中华民国时期<a href=\"https://baike.baidu.com/item/%E7%9A%96%E7%B3%BB%E5%86%9B%E9%98%80/424862\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">皖系军阀</a>首领，号称“<a href=\"https://baike.baidu.com/item/%E5%8C%97%E6%B4%8B%E4%B9%8B%E8%99%8E/17613519\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">北洋之虎</a>”，<a href=\"https://baike.baidu.com/item/%E5%AD%99%E4%B8%AD%E5%B1%B1/128084\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">孙中山</a>“<a href=\"https://baike.baidu.com/item/%E6%8A%A4%E6%B3%95%E8%BF%90%E5%8A%A8/4484972\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">护法运动</a>”的主要讨伐对象。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[1-3]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;&nbsp;&nbsp;</span></p><p>1916年至1920年为北洋政府的实际掌权者。1924年至1926年为中华民国临时执政。1926年3月18日发生了段祺瑞政府镇压北京学生运动的<a href=\"https://baike.baidu.com/item/%E4%B8%89%C2%B7%E4%B8%80%E5%85%AB%E6%83%A8%E6%A1%88/1080857\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">三·一八惨案</a>。“<a href=\"https://baike.baidu.com/item/%E4%B9%9D%C2%B7%E4%B8%80%E5%85%AB/265540\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">九·一八</a>”事变后，日本人曾胁迫段祺瑞去东北组织傀儡政府，段严词拒绝。1936年11月2日，段祺瑞逝于上海宏恩医院。</p><p>号称“六不总理”，曾四任总理，四任陆军总长，一任参谋总长，一任国家元首。是中国现代化军队的第一任陆军总长和炮兵司令。任过中国第一所现代化军事学校——<a href=\"https://baike.baidu.com/item/%E4%BF%9D%E5%AE%9A%E5%86%9B%E6%A0%A1/792620\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">保定军校</a>的总办。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[4]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span></p><p><img src=\"http://192.168.102.19:9100/api/file/8a91c3c499dd4279b61c16991f3aa30a.jpg\"></p><p><br></p><p>来一张段总长的照片：</p><p><img src=\"http://192.168.102.19:9100/api/file/3f16606616fd4a818ef1b7a168f2a252.jpg\"></p>', 0);
INSERT INTO `ent_profile` VALUES ('28505c1e-2cc8-4732-bf47-17420c1db649', 'JXSG20221121c85d', '<p>段祺瑞（1865年3月6日－1936年11月2日），原名启瑞，字芝泉，<a href=\"https://baike.baidu.com/item/%E5%AE%89%E5%BE%BD%E7%9C%81/526353\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">安徽省</a><a href=\"https://baike.baidu.com/item/%E5%BA%90%E5%B7%9E%E5%BA%9C/5492566\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">庐州府</a><a href=\"https://baike.baidu.com/item/%E5%90%88%E8%82%A5%E5%8E%BF/5314625\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">合肥县</a>（今<a href=\"https://baike.baidu.com/item/%E5%AE%89%E5%BE%BD%E7%9C%81/526353\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">安徽省</a><a href=\"https://baike.baidu.com/item/%E5%90%88%E8%82%A5%E5%B8%82/6501395\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">合肥市</a>）人。中华民国时期<a href=\"https://baike.baidu.com/item/%E7%9A%96%E7%B3%BB%E5%86%9B%E9%98%80/424862\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">皖系军阀</a>首领，号称“<a href=\"https://baike.baidu.com/item/%E5%8C%97%E6%B4%8B%E4%B9%8B%E8%99%8E/17613519\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">北洋之虎</a>”，<a href=\"https://baike.baidu.com/item/%E5%AD%99%E4%B8%AD%E5%B1%B1/128084\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">孙中山</a>“<a href=\"https://baike.baidu.com/item/%E6%8A%A4%E6%B3%95%E8%BF%90%E5%8A%A8/4484972\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">护法运动</a>”的主要讨伐对象。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[1-3]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;&nbsp;&nbsp;</span></p><p>1916年至1920年为北洋政府的实际掌权者。1924年至1926年为中华民国临时执政。1926年3月18日发生了段祺瑞政府镇压北京学生运动的<a href=\"https://baike.baidu.com/item/%E4%B8%89%C2%B7%E4%B8%80%E5%85%AB%E6%83%A8%E6%A1%88/1080857\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">三·一八惨案</a>。“<a href=\"https://baike.baidu.com/item/%E4%B9%9D%C2%B7%E4%B8%80%E5%85%AB/265540\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">九·一八</a>”事变后，日本人曾胁迫段祺瑞去东北组织傀儡政府，段严词拒绝。1936年11月2日，段祺瑞逝于上海宏恩医院。</p><p>号称“六不总理”，曾四任总理，四任陆军总长，一任参谋总长，一任国家元首。是中国现代化军队的第一任陆军总长和炮兵司令。任过中国第一所现代化军事学校——<a href=\"https://baike.baidu.com/item/%E4%BF%9D%E5%AE%9A%E5%86%9B%E6%A0%A1/792620\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">保定军校</a>的总办。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[4]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span></p><p><img src=\"http://192.168.102.19:9100/api/file/8a91c3c499dd4279b61c16991f3aa30a.jpg\"></p><p><br></p><p>来一张段总长的照片：</p><p><img src=\"http://192.168.102.19:9100/api/file/3f16606616fd4a818ef1b7a168f2a252.jpg\"></p>', 1);
INSERT INTO `ent_profile` VALUES ('c9eb5c6b-b4cd-457e-bbcd-10b4d20777f4', 'JXSG20221121c85d', '<p>	段祺瑞（1865年3月6日－1936年11月2日），原名启瑞，字芝泉，<a href=\"https://baike.baidu.com/item/%E5%AE%89%E5%BE%BD%E7%9C%81/526353\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">安徽省</a><a href=\"https://baike.baidu.com/item/%E5%BA%90%E5%B7%9E%E5%BA%9C/5492566\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">庐州府</a><a href=\"https://baike.baidu.com/item/%E5%90%88%E8%82%A5%E5%8E%BF/5314625\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">合肥县</a>（今<a href=\"https://baike.baidu.com/item/%E5%AE%89%E5%BE%BD%E7%9C%81/526353\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">安徽省</a><a href=\"https://baike.baidu.com/item/%E5%90%88%E8%82%A5%E5%B8%82/6501395\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">合肥市</a>）人。中华民国时期<a href=\"https://baike.baidu.com/item/%E7%9A%96%E7%B3%BB%E5%86%9B%E9%98%80/424862\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">皖系军阀</a>首领，号称“<a href=\"https://baike.baidu.com/item/%E5%8C%97%E6%B4%8B%E4%B9%8B%E8%99%8E/17613519\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">北洋之虎</a>”，<a href=\"https://baike.baidu.com/item/%E5%AD%99%E4%B8%AD%E5%B1%B1/128084\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">孙中山</a>“<a href=\"https://baike.baidu.com/item/%E6%8A%A4%E6%B3%95%E8%BF%90%E5%8A%A8/4484972\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">护法运动</a>”的主要讨伐对象。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[1-3]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;&nbsp;&nbsp;</span></p><p>	1916年至1920年为北洋政府的实际掌权者。1924年至1926年为中华民国临时执政。1926年3月18日发生了段祺瑞政府镇压北京学生运动的<a href=\"https://baike.baidu.com/item/%E4%B8%89%C2%B7%E4%B8%80%E5%85%AB%E6%83%A8%E6%A1%88/1080857\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">三·一八惨案</a>。“<a href=\"https://baike.baidu.com/item/%E4%B9%9D%C2%B7%E4%B8%80%E5%85%AB/265540\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">九·一八</a>”事变后，日本人曾胁迫段祺瑞去东北组织傀儡政府，段严词拒绝。1936年11月2日，段祺瑞逝于上海宏恩医院。</p><p>	号称“六不总理”，曾四任总理，四任陆军总长，一任参谋总长，一任国家元首。是中国现代化军队的第一任陆军总长和炮兵司令。任过中国第一所现代化军事学校——<a href=\"https://baike.baidu.com/item/%E4%BF%9D%E5%AE%9A%E5%86%9B%E6%A0%A1/792620\" target=\"_blank\" style=\"color: rgb(19, 110, 194);\">保定军校</a>的总办。<span style=\"color: rgb(51, 102, 204);\">&nbsp;[4]</span><span style=\"color: rgb(19, 110, 194);\">&nbsp;</span></p><p><img src=\"http://192.168.102.19:9100/api/file/8a91c3c499dd4279b61c16991f3aa30a.jpg\"></p><p><br></p>', 1);

-- ----------------------------
-- Table structure for ent_role
-- ----------------------------
DROP TABLE IF EXISTS `ent_role`;
CREATE TABLE `ent_role`  (
  `role_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '角色编号',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编号',
  `role_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色名称',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态  1：启用  0：停用',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '角色管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ent_role
-- ----------------------------
INSERT INTO `ent_role` VALUES ('8bec474a-f8e8-4a22-9979-3b08af0ce77b', 'JXSG20221121c85d', '普通管理员', 1, 'adminGQ', '2022-11-23 06:12:02', 'adminGQ', '2022-11-23 06:23:40', '测试下');
INSERT INTO `ent_role` VALUES ('a4713756-137f-4a19-8492-1af5190a1dde', 'JXSG20221121c85d', '超级管理员角色', 1, 'admin', '2022-11-21 03:19:28', 'admin', '2022-11-21 03:19:28', NULL);
INSERT INTO `ent_role` VALUES ('ff920c1b-d555-4706-8dc8-78a50d5cb399', 'e57cb1f1-0195-4c07-a218-b2b411a036bd', '超级管理员', 1, 'admin', '2018-06-11 15:49:10', 'admin', '2018-06-11 15:49:10', '');

-- ----------------------------
-- Table structure for ent_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `ent_role_menu`;
CREATE TABLE `ent_role_menu`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统编号',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编号',
  `role_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色编号',
  `menu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单资源编号',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '权限管理表:权限关联模块以及模块下的菜单，模块id存储在ent_module表中' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ent_role_menu
-- ----------------------------
INSERT INTO `ent_role_menu` VALUES ('007f3402-6112-4b57-9787-f67829382742', '', 'ff920c1b-d555-4706-8dc8-78a50d5cb399', 'aed7bade-638f-4923-897a-20c1ec56a386', 'admin', '2018-06-12 15:44:30');
INSERT INTO `ent_role_menu` VALUES ('03702192-21a4-49a7-b15d-b97ba5236496', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', 'db095c80-111f-4326-b183-d2e43e343f04', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('047008fb-685f-47c0-90d8-12d6ed548339', '', 'ff920c1b-d555-4706-8dc8-78a50d5cb399', 'bed7bade-638f-4923-897a-20c1ec56a123', 'admin', '2018-06-12 15:45:01');
INSERT INTO `ent_role_menu` VALUES ('08e03378-51c4-4b99-9961-950d7897ed5d', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', 'b8bf4f17-0749-4251-b547-856ee4dff8dd', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('15cff7cd-7b44-447c-9af6-ede866a1ea3a', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', 'fe98249c-0d01-4ecf-85a3-e360ed21f172', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('17920a27-5c9d-42b2-8916-9d2e72286a15', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', 'a7d6dc6b-c9f3-4763-a186-4a86840f9e4c', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('3b2c5584-ba02-4d89-8841-b3e6c1ac7f36', 'JXSG20221121c85d', '8bec474a-f8e8-4a22-9979-3b08af0ce77b', 'f5cf8c1c-6491-44b5-9e54-e289a4fdb094', 'adminGQ', '2022-11-25 02:18:40');
INSERT INTO `ent_role_menu` VALUES ('3ea8f966-e447-4d70-9fc1-c73c10296ee6', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', 'c0bd9ae4-6375-462f-85c0-526aba1c486a', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('7170e735-5b4f-4acd-a986-01ce3ec56c46', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', '444fb273-673e-4b54-9e8d-b660f13e1888', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('7e0bc18d-a17a-43bc-b234-ae1c0c0352ff', 'JXSG20221121c85d', '8bec474a-f8e8-4a22-9979-3b08af0ce77b', 'c2d82c74-0b30-41e2-9c0d-5f4f861c24e6', 'adminGQ', '2022-11-25 02:18:40');
INSERT INTO `ent_role_menu` VALUES ('7ea8e576-c583-4fe6-bb67-6ab216a66385', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', 'a1ca0716-1236-4acc-9bb1-1708a2199f6c', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('89521858-82d6-44be-86bd-c28a3a5b8c60', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', '216da748-27f7-45cf-9986-9b40e9ecd666', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('aa97eb35-9b2f-4350-8d3f-6d8d120f1d15', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', 'c2d82c74-0b30-41e2-9c0d-5f4f861c24e6', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('as56gh67-6112-4b57-9787-as4566ugh678', '', 'ff920c1b-d555-4706-8dc8-78a50d5cb399', '7d19cf26-f334-4c16-bebd-d8f789aa8d5c', 'admin', '2018-06-12 15:44:30');
INSERT INTO `ent_role_menu` VALUES ('as56gh67-6112-4b57-9787-f67829382742', '', 'ff920c1b-d555-4706-8dc8-78a50d5cb399', '82b25d15-dcf8-44db-87be-035d5c8fd630', 'admin', '2018-06-12 15:44:30');
INSERT INTO `ent_role_menu` VALUES ('c149cedd-8089-49d7-8066-90640da84d81', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', 'a4a3e7e0-6252-4a27-a281-80684d50882e', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('d61824ee-5d23-4bd3-a29e-43e090f4bfb9', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', '69b60731-6b35-423f-a52a-bb524fe0ec09', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('e5fc58d2-624b-4b7c-9253-e97c15f7f5ea', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', 'd9e11dc6-8d0b-4890-8628-88896ef5b6d0', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('e6d463c5-6405-4a4c-a2f1-6e94a2b6360e', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', 'eae4cea1-a52a-4935-82ba-89315c2502f6', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('efde5fb0-45d6-4a48-bfa0-d0a6891ae3cf', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', 'e3a1972b-5637-4e01-b080-670d555cf26f', 'admin', '2022-12-23 03:07:53');
INSERT INTO `ent_role_menu` VALUES ('f2e40772-30b0-4dc0-8cba-be0011d65d1c', 'JXSG20221121c85d', 'a4713756-137f-4a19-8492-1af5190a1dde', 'ec51d925-a81e-4c55-ae58-95176110f53f', 'admin', '2022-12-23 03:07:53');

-- ----------------------------
-- Table structure for ent_user
-- ----------------------------
DROP TABLE IF EXISTS `ent_user`;
CREATE TABLE `ent_user`  (
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户编号',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编号',
  `org_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织编号',
  `employee_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工编号',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `real_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名:超级管理员有且仅有一个，在创建企业时生成',
  `sex` smallint(6) NULL DEFAULT NULL COMMENT '性别:1男，２女',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `qq` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态  1：启用 0：停用2：锁定（在密码错误达到一定次数时，进行锁定）',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `role_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `lock_time` datetime(0) NULL DEFAULT NULL COMMENT '锁定时间',
  `latest_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次登录时间',
  `latest_ip` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后一次登录IP',
  `error_count` int(11) NULL DEFAULT NULL COMMENT '错误次数（通过手动解锁来重置错误次数）',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `UK_USER`(`user_id`, `company_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '企业用户管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ent_user
-- ----------------------------
INSERT INTO `ent_user` VALUES ('02c09399-ab1f-471c-b6ff-160ad082face', 'JXSG20221121c85d', 'f01b7758-744b-4c3f-b531-9c784464a8cf', NULL, 'adminGQ', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', 0, NULL, '18256909696', NULL, 1, NULL, 'a4713756-137f-4a19-8492-1af5190a1dde', NULL, '2022-12-23 11:07:59', '192.168.102.4', 0, 'admin', '2022-11-21 03:19:28', 'adminGQ', '2022-11-24 02:27:07');
INSERT INTO `ent_user` VALUES ('3c0d4353-96ab-4b42-86c0-0220f3b551b6', 'JXSG20221121c85d', 'e2655d9a-d5e1-44ab-a4cc-7806b3f5b88c', '', 'hengxin', 'e10adc3949ba59abbe56e057f20f883e', '恒馨', 1, '11051072654@qq.com', '18225603323', '1105107265', 1, '领导当然是管财政的', '8bec474a-f8e8-4a22-9979-3b08af0ce77b', NULL, '2022-11-25 11:02:27', '192.168.102.4', 0, 'adminGQ', '2022-11-24 01:49:45', 'adminGQ', '2022-11-24 10:13:48');
INSERT INTO `ent_user` VALUES ('9aa851d8-f314-4efb-a78d-370c6f949f66', 'JXSG20221121c85d', 'e2604acf-1368-4873-8b16-4cba823c8ef3', '9527', 'gaoq', 'e10adc3949ba59abbe56e057f20f883e', '佛学徒', 0, '1105107264@qq.com', '17654433322', '1105107264', 1, '科技小组中坚力量，俗称技男', NULL, NULL, NULL, NULL, 0, 'adminGQ', '2022-11-24 02:02:40', 'adminGQ', '2022-11-24 02:16:38');

-- ----------------------------
-- Table structure for ent_user_menu_desensite
-- ----------------------------
DROP TABLE IF EXISTS `ent_user_menu_desensite`;
CREATE TABLE `ent_user_menu_desensite`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '系统编号',
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业编号',
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '用户编号',
  `menu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单资源编号',
  `is_desensite` smallint(6) NULL DEFAULT 0 COMMENT '是否脱敏 1：是 0：否(默认值)',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户针对菜单脱敏表-表示当前用户针对当前存在敏感信息的菜单是否可展示该敏感信息。' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of ent_user_menu_desensite
-- ----------------------------
INSERT INTO `ent_user_menu_desensite` VALUES ('82ccf883-ffb8-4a2f-be7d-653c0011e88d', 'JXSG20221121c85d', '02c09399-ab1f-471c-b6ff-160ad082face', 'c0bd9ae4-6375-462f-85c0-526aba1c486a', 1, 'adminGQ', '2022-11-24 07:28:26', 'adminGQ', '2022-11-24 07:31:36');

-- ----------------------------
-- Table structure for sys_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `sys_enterprise`;
CREATE TABLE `sys_enterprise`  (
  `company_code` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '企业编号',
  `company_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业名称',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业邮箱',
  `tel` varchar(18) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业联系电话',
  `company_manager` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系人',
  `org_img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '营业执照',
  `org_owner_img` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '法人身份证',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '企业状态 1：启用（默认值） 0：停用',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `short_name` varchar(128) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '企业简称',
  `wechat_no` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '微信号',
  PRIMARY KEY (`company_code`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '企业信息管理' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_enterprise
-- ----------------------------
INSERT INTO `sys_enterprise` VALUES ('JXSG20221121c85d', '静馨舍工作室', '1105107264@qq.com', '18256908359', '高强', NULL, NULL, 1, 'admin', '2022-11-21 03:19:28', 'admin', '2022-12-23 03:07:53', '恒馨', 'foxuetu');

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu`;
CREATE TABLE `sys_menu`  (
  `menu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单路径',
  `sequence` int(11) NULL DEFAULT NULL COMMENT '序号',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父级菜单id',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态   0：停用, 1：启用',
  `desensitize_status` smallint(6) NULL DEFAULT -1 COMMENT '是否支持脱敏(0,否,1是)；默认-1表示不支持脱敏设置',
  `module_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '当前菜单所属模块',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统模块下菜单配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
INSERT INTO `sys_menu` VALUES ('1223709c-bf3f-4f54-8a85-895cc8709146', '系统管理', '', 1, 'fa fa-cogs', '#', 'admin', '2022-11-17 07:18:36', 'admin', '2022-12-23 10:57:18', '系统管理,添加模块时，会默认生成一个系统菜单', 0, -1, 'dd44c89d-4c59-436d-aef1-abc6a3fbf4bc');
INSERT INTO `sys_menu` VALUES ('216da748-27f7-45cf-9986-9b40e9ecd666', '客户列表', '1223', 1, 'fa fa-address-card-o', 'b8bf4f17-0749-4251-b547-856ee4dff8dd', 'admin', '2022-11-18 07:46:48', 'admin', '2022-11-21 01:57:57', '', 1, 1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('3e751234-7949-4562-b73c-cf0370351d95', '功能管理', 'moduletest', 1, 'fa fa-bank', '1223709c-bf3f-4f54-8a85-895cc8709146', 'admin', '2022-11-23 05:36:06', 'admin', '2022-12-23 10:57:18', '', 0, -1, 'dd44c89d-4c59-436d-aef1-abc6a3fbf4bc');
INSERT INTO `sys_menu` VALUES ('444fb273-673e-4b54-9e8d-b660f13e1888', '评论管理', NULL, 4, 'fa fa-commenting-o', '#', 'admin', '2022-12-23 03:02:22', 'admin', '2022-12-23 03:02:22', '', 1, -1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('69b60731-6b35-423f-a52a-bb524fe0ec09', '操作日志', '/ent-manage/operation-log', 2, 'fa fa-eye', 'e3a1972b-5637-4e01-b080-670d555cf26f', 'admin', '2022-11-18 07:11:36', 'admin', '2022-11-18 07:11:36', '', 1, -1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('9a563537-398c-4f97-9d30-41d331970789', '不支持脱敏', 'test', 1, 'fa fa-balance-scale', 'f5cf8c1c-6491-44b5-9e54-e289a4fdb094', 'admin', '2022-11-24 06:35:56', 'admin', '2022-12-23 10:57:22', '', 0, -1, 'dd44c89d-4c59-436d-aef1-abc6a3fbf4bc');
INSERT INTO `sys_menu` VALUES ('a1ca0716-1236-4acc-9bb1-1708a2199f6c', '架构管理', '/ent-manage/organization', 3, 'fa fa-calendar-check-o', 'a4a3e7e0-6252-4a27-a281-80684d50882e', 'admin', '2022-11-18 06:54:31', 'admin', '2022-11-18 06:54:31', '公司组织架构', 1, -1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('a4a3e7e0-6252-4a27-a281-80684d50882e', '系统管理', '', 1, 'fa fa-cogs', '#', 'admin', '2022-11-17 07:23:12', 'admin', '2022-11-18 06:57:18', '系统管理,添加模块时，会默认生成一个系统菜单', 1, -1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('a7d6dc6b-c9f3-4763-a186-4a86840f9e4c', '公司简介', '/ent-manage/company', 4, 'fa fa-anchor', 'a4a3e7e0-6252-4a27-a281-80684d50882e', 'admin', '2022-11-18 06:58:32', 'admin', '2022-11-18 07:05:37', '', 1, -1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('b8bf4f17-0749-4251-b547-856ee4dff8dd', '客户管理', '', 2, 'fa fa-address-book-o', '#', 'admin', '2022-11-17 08:52:24', 'admin', '2022-11-18 06:45:32', 'app用户管理', 1, -1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('c0bd9ae4-6375-462f-85c0-526aba1c486a', '用户管理', '/ent-manage/user', 1, 'fa fa-user-o', 'a4a3e7e0-6252-4a27-a281-80684d50882e', 'admin', '2022-11-17 12:26:03', 'admin', '2022-11-21 01:58:18', '企业下的用户管理', 1, 1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('c2d82c74-0b30-41e2-9c0d-5f4f861c24e6', '登录日志', '/ent-manage/login-log', 1, 'fa fa-lock', 'e3a1972b-5637-4e01-b080-670d555cf26f', 'admin', '2022-11-18 07:10:06', 'admin', '2022-11-18 07:10:06', '', 1, -1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('d9e11dc6-8d0b-4890-8628-88896ef5b6d0', '话题管理', NULL, 3, 'fa fa-assistive-listening-systems', '#', 'admin', '2022-12-23 03:01:12', 'admin', '2022-12-23 03:02:59', '', 1, -1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('db095c80-111f-4326-b183-d2e43e343f04', '字典管理', '/ent-manage/dict', 5, 'fa fa-book', 'a4a3e7e0-6252-4a27-a281-80684d50882e', 'admin', '2022-11-18 07:04:13', 'admin', '2022-11-18 07:05:31', '', 1, -1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('e3a1972b-5637-4e01-b080-670d555cf26f', '日志管理', NULL, 5, 'fa fa-clock-o', '#', 'admin', '2022-11-17 11:52:25', 'admin', '2022-12-23 03:02:46', '企业端日志信息，登录日志和操作日志', 1, -1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('eae4cea1-a52a-4935-82ba-89315c2502f6', '话题列表', '1234', 1, 'fa fa-assistive-listening-systems', 'd9e11dc6-8d0b-4890-8628-88896ef5b6d0', 'admin', '2022-12-23 03:04:44', 'admin', '2022-12-23 03:04:44', '', 1, 1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('ec51d925-a81e-4c55-ae58-95176110f53f', '评论列表', '123456', 1, 'fa fa-commenting', '444fb273-673e-4b54-9e8d-b660f13e1888', 'admin', '2022-12-23 03:06:16', 'admin', '2022-12-23 03:06:16', '', 1, 1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');
INSERT INTO `sys_menu` VALUES ('f5cf8c1c-6491-44b5-9e54-e289a4fdb094', '测试管理', NULL, 1, 'fa fa-adjust', '#', 'admin', '2022-11-23 05:35:36', 'admin', '2022-12-23 10:57:22', '', 0, -1, 'dd44c89d-4c59-436d-aef1-abc6a3fbf4bc');
INSERT INTO `sys_menu` VALUES ('fe98249c-0d01-4ecf-85a3-e360ed21f172', '角色管理', '/ent-manage/role', 2, 'fa fa-calendar-plus-o', 'a4a3e7e0-6252-4a27-a281-80684d50882e', 'admin', '2022-11-18 06:50:35', 'admin', '2022-11-18 06:50:35', '', 1, -1, '04c3ea3f-18b5-46bc-83d4-f45c573a6210');

-- ----------------------------
-- Table structure for sys_menu_fixed
-- ----------------------------
DROP TABLE IF EXISTS `sys_menu_fixed`;
CREATE TABLE `sys_menu_fixed`  (
  `menu_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '编号',
  `menu_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单名称',
  `url` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '菜单路径',
  `sequence` int(11) NULL DEFAULT NULL COMMENT '序号',
  `icon` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '菜单图标',
  `parent_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '父级菜单id',
  `parent_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '父级菜单名称',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` text CHARACTER SET utf8 COLLATE utf8_general_ci NULL COMMENT '备注',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态   0：停用, 1：启用',
  PRIMARY KEY (`menu_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '菜单表-当前系统管理固定菜单' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_menu_fixed
-- ----------------------------
INSERT INTO `sys_menu_fixed` VALUES ('7d19cf26-f334-4c16-bebd-d8f789aa8d5c', '模块管理', '/sys-manage/modular', 7, 'fa fa-plus-square', 'aed7bade-638f-4923-897a-20c1ec56a386', '系统管理', 'admin', '2022-10-18 17:13:54', 'admin', '2022-10-18 16:51:48', '', 1);
INSERT INTO `sys_menu_fixed` VALUES ('82b25d15-dcf8-44db-87be-035d5c8fd630', '企业管理', '/sys-manage/business', 1, 'fa fa-bank', 'aed7bade-638f-4923-897a-20c1ec56a386', '系统管理', 'admin', '2022-10-18 18:15:09', 'admin', '2022-10-18 17:09:15', '', 1);
INSERT INTO `sys_menu_fixed` VALUES ('aed7bade-638f-4923-897a-20c1ec56a386', '系统管理', '', 1, 'fa fa-cogs', '#', '', 'admin', '2022-10-18 17:20:28', 'admin', '2022-10-18 13:44:22', '', 1);
INSERT INTO `sys_menu_fixed` VALUES ('bed7bade-638f-4923-897a-20c1ec56a123', '参数维护', '/sys-manage/other', 5, 'fa fa-bank', 'aed7bade-638f-4923-897a-20c1ec56a386', '系统管理', 'admin', '2022-10-18 18:23:04', 'admin', '2022-10-18 16:40:37', NULL, 1);

-- ----------------------------
-- Table structure for sys_module
-- ----------------------------
DROP TABLE IF EXISTS `sys_module`;
CREATE TABLE `sys_module`  (
  `module_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `module_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '系统名称',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  `remark` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`module_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '系统模块' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_module
-- ----------------------------
INSERT INTO `sys_module` VALUES ('04c3ea3f-18b5-46bc-83d4-f45c573a6210', '福生语录', 'admin', '2022-11-17 07:23:12', 'admin', '2022-12-23 02:58:19', '围绕我们身边的一些事情或礼仪方面，主要给自己看的语录', 1);
INSERT INTO `sys_module` VALUES ('dd44c89d-4c59-436d-aef1-abc6a3fbf4bc', '测试模块', 'admin', '2022-11-17 07:18:36', 'admin', '2022-12-23 02:57:30', '测试模块', 0);

-- ----------------------------
-- Table structure for sys_other_columns_conf
-- ----------------------------
DROP TABLE IF EXISTS `sys_other_columns_conf`;
CREATE TABLE `sys_other_columns_conf`  (
  `id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '主键',
  `other_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `sortting` int(11) NULL DEFAULT NULL COMMENT '排序值',
  `para_code` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数编码',
  `para_value` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数值',
  `para_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '参数名称 ',
  `remark` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `status` smallint(6) NULL DEFAULT 1 COMMENT '状态(1=有效；0=无效）',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_other_columns_conf
-- ----------------------------
INSERT INTO `sys_other_columns_conf` VALUES ('0dbdfc8d-5d74-4b7f-b523-39333634624a', '927fc87c-b2cf-4014-8b8d-9c4439baf42a', 0, 'wechatPay', 'wechatPay', '微信支付', '', 1, 'admin', '2022-11-21 05:25:06', 'admin', '2022-11-21 05:25:06');
INSERT INTO `sys_other_columns_conf` VALUES ('249ed3dd-d8eb-4d12-85a9-228292c3bfc1', '752214aa-dc42-45fd-895d-8b7d7d98a02e', 3, 'aplipayPrivateKey', 'PrivateKey-9527', '支付宝支付私钥', '支付宝私钥和公钥是一起的', 1, 'admin', '2022-11-17 05:47:19', 'admin', '2022-11-17 05:56:49');
INSERT INTO `sys_other_columns_conf` VALUES ('4fb19658-e001-4876-a363-a982e18e7724', '752214aa-dc42-45fd-895d-8b7d7d98a02e', 2, 'aplipayPublicKey', 'PublicKey-9527', '支付宝支公钥', '支付宝私钥和公钥是一起的', 1, 'admin', '2022-11-17 05:51:28', 'admin', '2022-11-17 05:56:49');
INSERT INTO `sys_other_columns_conf` VALUES ('ab09d206-4dbe-484d-a6ed-cd85599fff4f', '13d03111-f149-4cb5-8555-eed59a5dbf7c', 1, 'androidVersionCode', '1', 'android版本号', '', 1, 'admin', '2022-11-16 10:04:11', 'admin', '2022-11-16 10:04:11');
INSERT INTO `sys_other_columns_conf` VALUES ('ddd0aad2-506f-4cb0-a3c0-a234ebde77a6', '752214aa-dc42-45fd-895d-8b7d7d98a02e', 1, 'aplipayUrl', 'https://www.alipay.com', '支付宝网络请求地址', '', 1, 'admin', '2022-11-17 05:16:43', 'admin', '2022-11-17 05:56:49');
INSERT INTO `sys_other_columns_conf` VALUES ('e99d4862-f3a3-42b4-8509-bc2e5a91718e', '13d03111-f149-4cb5-8555-eed59a5dbf7c', 2, 'androidVersionName', '1.0.0', 'android版本名称', '', 1, 'admin', '2022-11-16 10:04:11', 'admin', '2022-11-16 10:04:11');

-- ----------------------------
-- Table structure for sys_other_config
-- ----------------------------
DROP TABLE IF EXISTS `sys_other_config`;
CREATE TABLE `sys_other_config`  (
  `other_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `other_name` varchar(200) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '三方名称',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `create_time` datetime(0) NULL DEFAULT NULL,
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL,
  `update_time` datetime(0) NULL DEFAULT NULL,
  `status` smallint(6) NULL DEFAULT 1 COMMENT '1：有效，0：无效',
  `type` smallint(6) NULL DEFAULT 1 COMMENT '参数类型(1=三方参数;0=系统配置参数)',
  PRIMARY KEY (`other_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '三方配置表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_other_config
-- ----------------------------
INSERT INTO `sys_other_config` VALUES ('13d03111-f149-4cb5-8555-eed59a5dbf7c', '基础配置', 'admin', '2022-11-16 10:04:11', 'admin', '2022-11-17 05:29:15', 1, 0);
INSERT INTO `sys_other_config` VALUES ('752214aa-dc42-45fd-895d-8b7d7d98a02e', '支付宝', 'admin', '2022-11-17 05:16:43', 'admin', '2022-11-17 05:56:49', 1, 1);
INSERT INTO `sys_other_config` VALUES ('927fc87c-b2cf-4014-8b8d-9c4439baf42a', '微信支付', 'admin', '2022-11-21 05:25:06', 'admin', '2022-11-21 05:25:06', 1, 1);

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE IF EXISTS `sys_user`;
CREATE TABLE `sys_user`  (
  `user_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '用户编号',
  `org_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '组织编号',
  `employee_no` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '员工编号',
  `account` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL COMMENT '登录账号',
  `password` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '登录密码',
  `real_name` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '真实姓名',
  `sex` smallint(6) NULL DEFAULT NULL COMMENT '性别:1男，２女',
  `email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '邮箱',
  `tel` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '联系电话',
  `qq` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT 'QQ',
  `status` smallint(6) NULL DEFAULT NULL COMMENT '状态  1：启用 0：停用2：锁定（在密码错误达到一定次数时，进行锁定）',
  `remark` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '备注',
  `role_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '角色id',
  `lock_time` datetime(0) NULL DEFAULT NULL COMMENT '锁定时间',
  `latest_time` datetime(0) NULL DEFAULT NULL COMMENT '最后一次登录时间',
  `latest_ip` varchar(25) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '最后一次登录IP',
  `error_count` int(11) NULL DEFAULT NULL COMMENT '错误次数（通过手动解锁来重置错误次数）',
  `create_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '创建人',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '创建时间',
  `update_user` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NULL DEFAULT NULL COMMENT '修改人',
  `update_time` datetime(0) NULL DEFAULT NULL COMMENT '修改时间',
  PRIMARY KEY (`user_id`) USING BTREE,
  UNIQUE INDEX `UK_USER`(`user_id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_general_ci COMMENT = '用户管理表' ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of sys_user
-- ----------------------------
INSERT INTO `sys_user` VALUES ('fb616e4e-2f24-4666-9fa1-e0749a60d228', '20b99b5e-3d9b-4591-a501-f15dd6bd00a7', 'zzl463381', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '超级管理员', 1, NULL, NULL, NULL, 1, NULL, 'ff920c1b-d555-4706-8dc8-78a50d5cb399', NULL, '2022-12-23 10:55:04', '192.168.102.4', 0, 'admin', '2018-05-23 17:31:51', 'admin', '2018-05-29 17:20:58');

SET FOREIGN_KEY_CHECKS = 1;
