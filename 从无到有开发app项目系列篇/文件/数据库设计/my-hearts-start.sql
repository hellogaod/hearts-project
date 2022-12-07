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

 Date: 07/12/2022 11:20:17
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
  `type` int(1) NULL DEFAULT NULL COMMENT '消息类型,1:登录，注册消息，修改密码；2.话题被赞，被评论了；3.用户被关注了；4.被举报了；5.举报受理情况；6. 意见反馈处理情况；',
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
  `classify` varbinary(32) NULL DEFAULT NULL COMMENT '举报分类',
  `create_time` datetime(0) NULL DEFAULT NULL COMMENT '举报创建时间',
  `status` int(1) NULL DEFAULT 1 COMMENT '举报状态',
  `source_id` varchar(50) CHARACTER SET utf8 COLLATE utf8_bin NULL DEFAULT NULL COMMENT '被举报的id，根据source_type值，0的话当前source_id表示话题id；1的话当前source_id表示评论id',
  `source_type` int(1) NULL DEFAULT NULL COMMENT '被举报类型,0:表示举报话题，1：表示举报评论',
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
  `error_account` int(1) NULL DEFAULT NULL COMMENT '用户登录错误次数',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8 COLLATE = utf8_bin COMMENT = '用户表' ROW_FORMAT = Dynamic;

SET FOREIGN_KEY_CHECKS = 1;
