/**
*@DatabaseName StuResSystemDB.data
*@Author ZZY
*@Date 2022/7/11
**/
-- admin表记录
INSERT INTO admin VALUES ('admin', '管理员', '123456');

-- class表记录
INSERT INTO class VALUES ('100001', '计算机科学与技术1班');
INSERT INTO class VALUES ('100002', '计算机科学与技术2班');
INSERT INTO class VALUES ('100003', '计算机科学与技术3班');
INSERT INTO class VALUES ('100004', '计算机科学与技术4班');
INSERT INTO class VALUES ('100011', '软件工程1班');
INSERT INTO class VALUES ('100012', '软件工程2班');
INSERT INTO class VALUES ('100013', '软件工程3班');
INSERT INTO class VALUES ('100014', '软件工程4班');
INSERT INTO class VALUES ('100021', '软件工程(卓越工程师)1班');
INSERT INTO class VALUES ('100022', '软件工程(卓越工程师)2班');

-- student表记录
INSERT INTO student VALUES('201931100332','张政尧','123456','100001','男','19337183800');
INSERT INTO student VALUES('202001000535','朱宝涵','123456','100002','男','19337183801');
INSERT INTO student VALUES('202007070637','赵晨辉','123456','100003','男','19337183803');
INSERT INTO student VALUES('202024100102','崔萌萌','123456','100004','男','19337183804');
INSERT INTO student VALUES('202024100106','郭家和','123456','100011','男','19337183805');
INSERT INTO student VALUES('202024100814','李满强','123456','100004','男','19337183824');
INSERT INTO student VALUES('202024100108','胡强','123456','100012','男','19337183806');
INSERT INTO student VALUES('202024100208','黄海琴','123456','100013','女','19337183807');
INSERT INTO student VALUES('202024100235','杨爽','123456','100014','女','19337183808');
INSERT INTO student VALUES('202024100327','王萧凯','123456','100021','男','19337183809');
INSERT INTO student VALUES('202024100338','张永慧','123456','100022','女','19337183810');
INSERT INTO student VALUES('202024100833','杨鉴远','123456','100011','男','19337183825');
INSERT INTO student VALUES('202024100342','周瑶','123456','100001','女','19337183811');
INSERT INTO student VALUES('202024100407','董浩天','123456','100002','男','19337183812');
INSERT INTO student VALUES('202024100502','陈留洋','123456','100003','男','19337183813');
INSERT INTO student VALUES('202024100504','丁毅','123456','100004','男','19337183814');
INSERT INTO student VALUES('202024100523','田双标','123456','100011','男','19337183815');
INSERT INTO student VALUES('202024100536','张雪铮','123456','100012','女','19337183816');
INSERT INTO student VALUES('202024100602','陈志茹','123456','100013','女','19337183817');
INSERT INTO student VALUES('202024100603','郝荣政','123456','100014','男','19337183818');
INSERT INTO student VALUES('202024100610','李硕硕','123456','100021','男','19337183819');
INSERT INTO student VALUES('202024100622','孙逸博','123456','100022','男','19337183820');
INSERT INTO student VALUES('202024100434','于梦娜','123456','100001','女','19337183821');
INSERT INTO student VALUES('202024100738','赵庆举','123456','100002','男','19337183822');
INSERT INTO student VALUES('202024100740','朱敏杰','123456','100003','女','19337183823');
INSERT INTO student VALUES('202024100837','张旗星','123456','100012','男','19337183826');
INSERT INTO student VALUES('202024100442','周志阳','123456','100013','男','19337183826');

-- teacher表记录
INSERT INTO teacher VALUES ('200824100001', '牛老师', '123456', '男', '12345678910');
INSERT INTO teacher VALUES ('200824100002', '赵老师', '123456', '女', '12345678911');
INSERT INTO teacher VALUES ('200824100003', '姜老师', '123456', '男', '12345678912');
INSERT INTO teacher VALUES ('200824100004', '王老师', '123456', '男', '12345678913');
INSERT INTO teacher VALUES ('200824100005', '陈老师', '123456', '男', '12345678914');
INSERT INTO teacher VALUES ('200824100006', '周老师', '123456', '女', '12345678915');
INSERT INTO teacher VALUES ('200824100007', '郭老师', '123456', '女', '12345678916');
INSERT INTO teacher VALUES ('200824100008', '张老师', '123456', '男', '12345678917');
INSERT INTO teacher VALUES ('200824100009', '徐老师', '123456', '男', '12345678918');
INSERT INTO teacher VALUES ('200824100010', '贾老师', '123456', '男', '12345678919');
INSERT INTO teacher VALUES ('200824100011', '李老师', '123456', '男', '12345678920');

-- course表记录
/*注意:工号为200824100006 周老师 没有添加课程，供测试使用*/
INSERT INTO course VALUES ('211016', '200824100005','微积分A (Ⅰ)','20-2020-9');
INSERT INTO course VALUES ('211005', '200824100005','线性代数','20-2020-9');
INSERT INTO course VALUES ('242064', '200824100002','程序设计基础','20-2020-9');
INSERT INTO course VALUES ('242075', '200824100002','计算学科导论','20-2020-9');
INSERT INTO course VALUES ('242072', '200824100001','计算机技术基础（双语）','20-2020-9');
INSERT INTO course VALUES ('245059', '200824100001','程序设计基础实验','20-2020-9');
INSERT INTO course VALUES ('211007', '200824100005','概率与数理统计','20-2021-2');
INSERT INTO course VALUES ('211017', '200824100005','微积分A (Ⅱ)','20-2021-2');
INSERT INTO course VALUES ('242076', '200824100011','信息科学前沿','20-2021-2');
INSERT INTO course VALUES ('245029', '200824100011','认知实习','20-2021-2');
INSERT INTO course VALUES ('242078', '200824100010','高级语言程序设计','20-2021-2');
INSERT INTO course VALUES ('245064', '200824100010','高级语言程序设计实验','20-2021-2');
INSERT INTO course VALUES ('245001', '200824100010','高级语言课程设计','20-2021-9');
INSERT INTO course VALUES ('242041', '200824100009','离散数学','20-2021-9');
INSERT INTO course VALUES ('242057', '200824100009','计算机系统基础','20-2021-9');
INSERT INTO course VALUES ('242066', '200824100008','数据结构与算法分析','20-2021-9');
INSERT INTO course VALUES ('243113', '200824100007','软件工程导论','20-2021-9');
INSERT INTO course VALUES ('243202', '200824100007','面向对象原理与语言','20-2021-9');
INSERT INTO course VALUES ('243119', '200824100003','软件需求工程','20-2022-2');
INSERT INTO course VALUES ('243124', '200824100003','软件体系结构','20-2022-2');
INSERT INTO course VALUES ('243203', '200824100003','计算机网络原理与技术','20-2022-2');
INSERT INTO course VALUES ('243325', '200824100001','数据库技术与应用','20-2022-2');
INSERT INTO course VALUES ('245002', '200824100001','数据库课程设计','20-2022-2');
INSERT INTO course VALUES ('244067', '200824100004','移动编程技术','20-2022-2');

-- takes表记录
INSERT INTO takes VALUES ('1', '201931100332', '242066', '59');
INSERT INTO takes VALUES ('2', '201931100332', '211016', '88');
INSERT INTO takes VALUES ('3', '201931100332', '211005', '78');
INSERT INTO takes VALUES ('4', '201931100332', '242064', '93');
INSERT INTO takes VALUES ('5', '201931100332', '242075', '100');
INSERT INTO takes VALUES ('6', '201931100332', '242072', '100');
INSERT INTO takes VALUES ('7', '201931100332', '245059', '100');
INSERT INTO takes VALUES ('8', '201931100332', '211007', '92');
INSERT INTO takes VALUES ('9', '201931100332', '211017', '85');
INSERT INTO takes VALUES ('10', '201931100332', '242076', '89');
INSERT INTO takes VALUES ('11', '201931100332', '245029', '89');
INSERT INTO takes VALUES ('12', '201931100332', '242078', '90');
INSERT INTO takes VALUES ('13', '201931100332', '245064', '100');

INSERT INTO takes VALUES ('14', '202001000535', '242075', '78');
INSERT INTO takes VALUES ('15', '202001000535', '242072', '97');
INSERT INTO takes VALUES ('16', '202001000535', '242066', '87');
INSERT INTO takes VALUES ('17', '202001000535', '211016', '60');
INSERT INTO takes VALUES ('18', '202001000535', '245064', '55');
INSERT INTO takes VALUES ('19', '202001000535', '211005', '77');
INSERT INTO takes VALUES ('20', '202001000535', '245059', '96');
INSERT INTO takes VALUES ('21', '202001000535', '242064', '95');
INSERT INTO takes VALUES ('22', '202001000535', '211007', '94');
INSERT INTO takes VALUES ('23', '202001000535', '211017', '87');
INSERT INTO takes VALUES ('24', '202001000535', '242076', '76');
INSERT INTO takes VALUES ('25', '202001000535', '245029', '85');
INSERT INTO takes VALUES ('26', '202001000535', '242078', '85');
INSERT INTO takes VALUES ('27', '202001000535', '245001', '76');

INSERT INTO takes VALUES ('28', '202007070637', '242075', '50');
INSERT INTO takes VALUES ('29', '202007070637', '242072', '60');
INSERT INTO takes VALUES ('30', '202007070637', '242066', '88');
INSERT INTO takes VALUES ('31', '202007070637', '211016', '60');
INSERT INTO takes VALUES ('32', '202007070637', '245064', '64');
INSERT INTO takes VALUES ('33', '202007070637', '211005', '78');
INSERT INTO takes VALUES ('34', '202007070637', '245059', '78');
INSERT INTO takes VALUES ('35', '202007070637', '211007', '84');
INSERT INTO takes VALUES ('36', '202007070637', '211017', '77');
INSERT INTO takes VALUES ('37', '202007070637', '242076', '76');
INSERT INTO takes VALUES ('38', '202007070637', '245029', '85');
INSERT INTO takes VALUES ('39', '202007070637', '242078', '65');
INSERT INTO takes VALUES ('40', '202007070637', '245001', '86');
INSERT INTO takes VALUES ('41', '202007070637', '242064', '85');

INSERT INTO takes VALUES ('42', '202024100102', '242075', '88');
INSERT INTO takes VALUES ('43', '202024100102', '242072', '87');
INSERT INTO takes VALUES ('44', '202024100102', '242066', '58');
INSERT INTO takes VALUES ('45', '202024100102', '211016', '99');
INSERT INTO takes VALUES ('46', '202024100102', '245064', '88');
INSERT INTO takes VALUES ('47', '202024100102', '211005', '99');
INSERT INTO takes VALUES ('48', '202024100102', '245059', '78');
INSERT INTO takes VALUES ('49', '202024100102', '242064', '88');
INSERT INTO takes VALUES ('50', '202024100102', '211007', '87');
INSERT INTO takes VALUES ('51', '202024100102', '211017', '78');
INSERT INTO takes VALUES ('52', '202024100102', '242076', '76');
INSERT INTO takes VALUES ('53', '202024100102', '245029', '85');
INSERT INTO takes VALUES ('54', '202024100102', '242078', '55');
INSERT INTO takes VALUES ('55', '202024100102', '245001', '86');

INSERT INTO takes VALUES ('56', '202024100106', '242075', '77');
INSERT INTO takes VALUES ('57', '202024100106', '242072', '88');
INSERT INTO takes VALUES ('58', '202024100106', '242066', '99');
INSERT INTO takes VALUES ('59', '202024100106', '211016', '88');
INSERT INTO takes VALUES ('60', '202024100106', '245064', '75');
INSERT INTO takes VALUES ('61', '202024100106', '211005', '68');
INSERT INTO takes VALUES ('62', '202024100106', '245059', '78');
INSERT INTO takes VALUES ('63', '202024100106', '242064', '90');
INSERT INTO takes VALUES ('64', '202024100106', '211007', '87');
INSERT INTO takes VALUES ('65', '202024100106', '211017', '78');
INSERT INTO takes VALUES ('66', '202024100106', '242076', '48');
INSERT INTO takes VALUES ('67', '202024100106', '245029', '86');
INSERT INTO takes VALUES ('68', '202024100106', '242078', '55');
INSERT INTO takes VALUES ('69', '202024100106', '245001', '66');

INSERT INTO takes VALUES ('70', '202024100814', '242075', '74');
INSERT INTO takes VALUES ('71', '202024100814', '242072', '75');
INSERT INTO takes VALUES ('72', '202024100814', '242066', '78');
INSERT INTO takes VALUES ('73', '202024100814', '211016', '87');
INSERT INTO takes VALUES ('74', '202024100814', '245064', '88');
INSERT INTO takes VALUES ('75', '202024100814', '211005', '68');
INSERT INTO takes VALUES ('76', '202024100814', '245059', '98');
INSERT INTO takes VALUES ('77', '202024100814', '242064', '80');
INSERT INTO takes VALUES ('78', '202024100814', '211007', '77');
INSERT INTO takes VALUES ('79', '202024100814', '211017', '88');

INSERT INTO takes VALUES ('80', '202024100108', '242075', '74');
INSERT INTO takes VALUES ('81', '202024100108', '242072', '75');
INSERT INTO takes VALUES ('82', '202024100108', '242066', '78');
INSERT INTO takes VALUES ('83', '202024100108', '211016', '87');
INSERT INTO takes VALUES ('84', '202024100108', '245064', '88');
INSERT INTO takes VALUES ('85', '202024100108', '211005', '68');
INSERT INTO takes VALUES ('86', '202024100108', '245059', '98');
INSERT INTO takes VALUES ('87', '202024100108', '242064', '80');
INSERT INTO takes VALUES ('88', '202024100108', '211007', '77');
INSERT INTO takes VALUES ('89', '202024100108', '211017', '88');
INSERT INTO takes VALUES ('90', '202024100108', '242076', '98');
INSERT INTO takes VALUES ('91', '202024100108', '245029', '56');
INSERT INTO takes VALUES ('92', '202024100108', '242078', '76');
INSERT INTO takes VALUES ('93', '202024100108', '245001', '71');

INSERT INTO takes VALUES ('94', '202024100208', '242075', '45');
INSERT INTO takes VALUES ('95', '202024100208', '242072', '66');
INSERT INTO takes VALUES ('96', '202024100208', '242066', '87');
INSERT INTO takes VALUES ('97', '202024100208', '211016', '96');
INSERT INTO takes VALUES ('98', '202024100208', '245064', '92');
INSERT INTO takes VALUES ('99', '202024100208', '211005', '87');
INSERT INTO takes VALUES ('100', '202024100208', '245059', '93');
INSERT INTO takes VALUES ('101', '202024100208', '242064', '90');
INSERT INTO takes VALUES ('102', '202024100208', '211007', '75');
INSERT INTO takes VALUES ('103', '202024100208', '211017', '87');
INSERT INTO takes VALUES ('104', '202024100208', '242076', '78');
INSERT INTO takes VALUES ('105', '202024100208', '245029', '86');
INSERT INTO takes VALUES ('106', '202024100208', '242078', '77');
INSERT INTO takes VALUES ('107', '202024100208', '245001', '88');

INSERT INTO takes VALUES ('108', '202024100235', '245059', '78');
INSERT INTO takes VALUES ('109', '202024100235', '242075', '82');
INSERT INTO takes VALUES ('110', '202024100235', '242072', '53');
INSERT INTO takes VALUES ('111', '202024100235', '242066', '68');
INSERT INTO takes VALUES ('112', '202024100235', '211016', '89');
INSERT INTO takes VALUES ('113', '202024100235', '245064', '66');
INSERT INTO takes VALUES ('114', '202024100235', '211005', '88');
INSERT INTO takes VALUES ('116', '202024100235', '242064', '82');
INSERT INTO takes VALUES ('117', '202024100235', '211007', '53');
INSERT INTO takes VALUES ('118', '202024100235', '211017', '68');
INSERT INTO takes VALUES ('119', '202024100235', '242076', '89');
INSERT INTO takes VALUES ('120', '202024100235', '245029', '66');
INSERT INTO takes VALUES ('121', '202024100235', '242078', '88');
INSERT INTO takes VALUES ('122', '202024100235', '245001', '78');

INSERT INTO takes VALUES ('123', '202024100327', '242075', '85');
INSERT INTO takes VALUES ('124', '202024100327', '242072', '75');
INSERT INTO takes VALUES ('125', '202024100327', '242066', '98');
INSERT INTO takes VALUES ('126', '202024100327', '211016', '87');
INSERT INTO takes VALUES ('127', '202024100327', '245064', '44');
INSERT INTO takes VALUES ('128', '202024100327', '211005', '68');
INSERT INTO takes VALUES ('129', '202024100327', '245059', '93');
INSERT INTO takes VALUES ('130', '202024100327', '242064', '90');
INSERT INTO takes VALUES ('131', '202024100327', '211007', '85');
INSERT INTO takes VALUES ('132', '202024100327', '211017', '77');
INSERT INTO takes VALUES ('133', '202024100327', '242076', '98');
INSERT INTO takes VALUES ('134', '202024100327', '245029', '86');
INSERT INTO takes VALUES ('135', '202024100327', '242078', '92');
INSERT INTO takes VALUES ('136', '202024100327', '245001', '71');

INSERT INTO takes VALUES ('137', '202024100338', '242075', '75');
INSERT INTO takes VALUES ('138', '202024100338', '242072', '77');
INSERT INTO takes VALUES ('139', '202024100338', '242066', '89');
INSERT INTO takes VALUES ('140', '202024100338', '211016', '88');
INSERT INTO takes VALUES ('141', '202024100338', '245064', '99');
INSERT INTO takes VALUES ('142', '202024100338', '211005', '61');
INSERT INTO takes VALUES ('143', '202024100338', '245059', '100');
INSERT INTO takes VALUES ('144', '202024100338', '242064', '80');
INSERT INTO takes VALUES ('145', '202024100338', '211007', '95');
INSERT INTO takes VALUES ('146', '202024100338', '211017', '77');
INSERT INTO takes VALUES ('147', '202024100338', '242076', '88');
INSERT INTO takes VALUES ('148', '202024100338', '245029', '86');
INSERT INTO takes VALUES ('149', '202024100338', '242078', '97');
INSERT INTO takes VALUES ('150', '202024100338', '245001', '78');

INSERT INTO takes VALUES ('151', '202024100833', '242075', '80');
INSERT INTO takes VALUES ('152', '202024100833', '242072', '55');
INSERT INTO takes VALUES ('153', '202024100833', '242066', '69');
INSERT INTO takes VALUES ('154', '202024100833', '211016', '89');
INSERT INTO takes VALUES ('155', '202024100833', '245064', '66');
INSERT INTO takes VALUES ('156', '202024100833', '211005', '76');
INSERT INTO takes VALUES ('157', '202024100833', '245059', '78');
INSERT INTO takes VALUES ('158', '202024100833', '242064', '100');
INSERT INTO takes VALUES ('159', '202024100833', '211007', '95');

INSERT INTO takes VALUES ('161', '202024100342', '242075', '80');
INSERT INTO takes VALUES ('162', '202024100342', '242072', '55');
INSERT INTO takes VALUES ('163', '202024100342', '242066', '69');
INSERT INTO takes VALUES ('164', '202024100342', '211016', '89');
INSERT INTO takes VALUES ('165', '202024100342', '245064', '66');
INSERT INTO takes VALUES ('166', '202024100342', '211005', '76');
INSERT INTO takes VALUES ('167', '202024100342', '245059', '78');
INSERT INTO takes VALUES ('168', '202024100342', '242064', '100');
INSERT INTO takes VALUES ('169', '202024100342', '211007', '95');
INSERT INTO takes VALUES ('170', '202024100342', '211017', '88');
INSERT INTO takes VALUES ('171', '202024100342', '242076', '89');
INSERT INTO takes VALUES ('172', '202024100342', '245029', '86');
INSERT INTO takes VALUES ('173', '202024100342', '242078', '88');
INSERT INTO takes VALUES ('174', '202024100342', '245001', '98');

INSERT INTO takes VALUES ('175', '202024100407', '242075', '75');
INSERT INTO takes VALUES ('176', '202024100407', '242072', '75');
INSERT INTO takes VALUES ('177', '202024100407', '242066', '76');
INSERT INTO takes VALUES ('178', '202024100407', '211016', '87');
INSERT INTO takes VALUES ('179', '202024100407', '245064', '77');
INSERT INTO takes VALUES ('180', '202024100407', '211005', '80');
INSERT INTO takes VALUES ('181', '202024100407', '245059', '80');
INSERT INTO takes VALUES ('182', '202024100407', '242064', '80');
INSERT INTO takes VALUES ('183', '202024100407', '211007', '75');
INSERT INTO takes VALUES ('184', '202024100407', '211017', '87');
INSERT INTO takes VALUES ('185', '202024100407', '242076', '78');
INSERT INTO takes VALUES ('186', '202024100407', '245029', '96');
INSERT INTO takes VALUES ('187', '202024100407', '242078', '77');
INSERT INTO takes VALUES ('188', '202024100407', '245001', '88');

INSERT INTO takes VALUES ('189', '202024100502', '242075', '80');
INSERT INTO takes VALUES ('190', '202024100502', '242072', '80');
INSERT INTO takes VALUES ('191', '202024100502', '242066', '87');
INSERT INTO takes VALUES ('192', '202024100502', '242078', '97');
INSERT INTO takes VALUES ('193', '202024100502', '245001', '88');
INSERT INTO takes VALUES ('194', '202024100502', '211016', '98');
INSERT INTO takes VALUES ('195', '202024100502', '245064', '83');
INSERT INTO takes VALUES ('196', '202024100502', '211005', '100');
INSERT INTO takes VALUES ('197', '202024100502', '245059', '100');
INSERT INTO takes VALUES ('198', '202024100502', '211007', '85');
INSERT INTO takes VALUES ('199', '202024100502', '211017', '97');
INSERT INTO takes VALUES ('200', '202024100502', '242064', '70');
INSERT INTO takes VALUES ('201', '202024100502', '242076', '88');
INSERT INTO takes VALUES ('202', '202024100502', '245029', '96');

INSERT INTO takes VALUES ('203', '202024100504', '242072', '72');
INSERT INTO takes VALUES ('204', '202024100504', '242066', '73');
INSERT INTO takes VALUES ('205', '202024100504', '211016', '87');
INSERT INTO takes VALUES ('206', '202024100504', '245064', '77');
INSERT INTO takes VALUES ('207', '202024100504', '211005', '88');
INSERT INTO takes VALUES ('208', '202024100504', '245059', '80');
INSERT INTO takes VALUES ('209', '202024100504', '242064', '60');
INSERT INTO takes VALUES ('210', '202024100504', '211007', '85');
INSERT INTO takes VALUES ('211', '202024100504', '211017', '77');
INSERT INTO takes VALUES ('212', '202024100504', '242076', '88');
INSERT INTO takes VALUES ('213', '202024100504', '245029', '76');
INSERT INTO takes VALUES ('214', '202024100504', '242078', '87');
INSERT INTO takes VALUES ('215', '202024100504', '245001', '88');
INSERT INTO takes VALUES ('216', '202024100504', '242075', '71');

INSERT INTO takes VALUES ('217', '202024100523', '211007', '95');
INSERT INTO takes VALUES ('218', '202024100523', '211017', '95');
INSERT INTO takes VALUES ('219', '202024100523', '242076', '98');
INSERT INTO takes VALUES ('220', '202024100523', '245029', '96');
INSERT INTO takes VALUES ('221', '202024100523', '242078', '88');
INSERT INTO takes VALUES ('222', '202024100523', '211016', '87');
INSERT INTO takes VALUES ('223', '202024100523', '245064', '73');
INSERT INTO takes VALUES ('224', '202024100523', '211005', '88');
INSERT INTO takes VALUES ('225', '202024100523', '245001', '98');
INSERT INTO takes VALUES ('226', '202024100523', '245059', '70');
INSERT INTO takes VALUES ('227', '202024100523', '242075', '77');
INSERT INTO takes VALUES ('228', '202024100523', '242072', '79');
INSERT INTO takes VALUES ('229', '202024100523', '242066', '85');
INSERT INTO takes VALUES ('230', '202024100523', '242064', '90');

INSERT INTO takes VALUES ('231', '202024100536', '242064', '80');
INSERT INTO takes VALUES ('232', '202024100536', '211007', '85');
INSERT INTO takes VALUES ('233', '202024100536', '211017', '75');
INSERT INTO takes VALUES ('234', '202024100536', '242076', '88');
INSERT INTO takes VALUES ('235', '202024100536', '245029', '96');
INSERT INTO takes VALUES ('236', '202024100536', '242078', '88');
INSERT INTO takes VALUES ('237', '202024100536', '245001', '88');
INSERT INTO takes VALUES ('238', '202024100536', '245064', '56');
INSERT INTO takes VALUES ('239', '202024100536', '211005', '78');
INSERT INTO takes VALUES ('240', '202024100536', '245059', '78');
INSERT INTO takes VALUES ('241', '202024100536', '242075', '60');
INSERT INTO takes VALUES ('242', '202024100536', '242072', '66');
INSERT INTO takes VALUES ('243', '202024100536', '242066', '78');
INSERT INTO takes VALUES ('244', '202024100536', '211016', '87');

INSERT INTO takes VALUES ('245', '202024100602', '245001', '78');
INSERT INTO takes VALUES ('246', '202024100602', '242075', '99');
INSERT INTO takes VALUES ('247', '202024100602', '242072', '98');
INSERT INTO takes VALUES ('248', '202024100602', '242066', '89');
INSERT INTO takes VALUES ('249', '202024100602', '211016', '87');
INSERT INTO takes VALUES ('250', '202024100602', '211007', '85');
INSERT INTO takes VALUES ('251', '202024100602', '211017', '75');
INSERT INTO takes VALUES ('252', '202024100602', '242076', '78');
INSERT INTO takes VALUES ('253', '202024100602', '245029', '76');
INSERT INTO takes VALUES ('254', '202024100602', '242078', '88');
INSERT INTO takes VALUES ('255', '202024100602', '245064', '100');
INSERT INTO takes VALUES ('256', '202024100602', '211005', '88');
INSERT INTO takes VALUES ('257', '202024100602', '242064', '90');
INSERT INTO takes VALUES ('258', '202024100602', '245059', '80');

INSERT INTO takes VALUES ('259', '202024100603', '242075', '80');
INSERT INTO takes VALUES ('260', '202024100603', '242072', '76');
INSERT INTO takes VALUES ('261', '202024100603', '211007', '95');
INSERT INTO takes VALUES ('262', '202024100603', '211017', '85');
INSERT INTO takes VALUES ('263', '202024100603', '242076', '75');
INSERT INTO takes VALUES ('264', '202024100603', '245029', '86');
INSERT INTO takes VALUES ('265', '202024100603', '242078', '98');
INSERT INTO takes VALUES ('266', '202024100603', '245001', '58');
INSERT INTO takes VALUES ('267', '202024100603', '242066', '78');
INSERT INTO takes VALUES ('268', '202024100603', '211016', '76');
INSERT INTO takes VALUES ('269', '202024100603', '245064', '66');
INSERT INTO takes VALUES ('270', '202024100603', '211005', '76');
INSERT INTO takes VALUES ('271', '202024100603', '245059', '78');
INSERT INTO takes VALUES ('272', '202024100603', '242064', '90');

INSERT INTO takes VALUES ('273', '202024100610', '211005', '86');
INSERT INTO takes VALUES ('274', '202024100610', '245059', '78');
INSERT INTO takes VALUES ('275', '202024100610', '242066', '78');
INSERT INTO takes VALUES ('276', '202024100610', '211016', '86');
INSERT INTO takes VALUES ('277', '202024100610', '242064', '80');
INSERT INTO takes VALUES ('278', '202024100610', '211007', '85');
INSERT INTO takes VALUES ('279', '202024100610', '211017', '75');
INSERT INTO takes VALUES ('280', '202024100610', '242075', '90');
INSERT INTO takes VALUES ('281', '202024100610', '245029', '86');
INSERT INTO takes VALUES ('282', '202024100610', '242078', '88');
INSERT INTO takes VALUES ('283', '202024100610', '245001', '88');
INSERT INTO takes VALUES ('284', '202024100610', '242072', '86');
INSERT INTO takes VALUES ('285', '202024100610', '245064', '96');
INSERT INTO takes VALUES ('286', '202024100610', '242076', '85');

INSERT INTO takes VALUES ('287', '202024100622', '242076', '85');
INSERT INTO takes VALUES ('288', '202024100622', '245029', '96');
INSERT INTO takes VALUES ('289', '202024100622', '242078', '98');
INSERT INTO takes VALUES ('290', '202024100622', '245001', '88');
INSERT INTO takes VALUES ('291', '202024100622', '242075', '80');
INSERT INTO takes VALUES ('292', '202024100622', '242072', '76');
INSERT INTO takes VALUES ('293', '202024100622', '242066', '78');
INSERT INTO takes VALUES ('294', '202024100622', '211016', '86');
INSERT INTO takes VALUES ('295', '202024100622', '245064', '66');
INSERT INTO takes VALUES ('296', '202024100622', '211005', '76');
INSERT INTO takes VALUES ('297', '202024100622', '245059', '98');
INSERT INTO takes VALUES ('298', '202024100622', '242064', '70');
INSERT INTO takes VALUES ('299', '202024100622', '211007', '75');
INSERT INTO takes VALUES ('300', '202024100622', '211017', '85');

INSERT INTO takes VALUES ('301', '202024100434', '242075', '75');
INSERT INTO takes VALUES ('302', '202024100434', '242064', '80');
INSERT INTO takes VALUES ('303', '202024100434', '211007', '75');
INSERT INTO takes VALUES ('304', '202024100434', '211017', '85');
INSERT INTO takes VALUES ('305', '202024100434', '242076', '88');
INSERT INTO takes VALUES ('306', '202024100434', '245029', '76');
INSERT INTO takes VALUES ('307', '202024100434', '242078', '88');
INSERT INTO takes VALUES ('308', '202024100434', '245001', '78');
INSERT INTO takes VALUES ('309', '202024100434', '242072', '76');
INSERT INTO takes VALUES ('310', '202024100434', '242066', '78');
INSERT INTO takes VALUES ('311', '202024100434', '211016', '87');
INSERT INTO takes VALUES ('312', '202024100434', '245064', '86');
INSERT INTO takes VALUES ('313', '202024100434', '211005', '88');
INSERT INTO takes VALUES ('314', '202024100434', '245059', '87');

INSERT INTO takes VALUES ('315', '202024100738', '242075', '85');
INSERT INTO takes VALUES ('316', '202024100738', '242072', '76');
INSERT INTO takes VALUES ('317', '202024100738', '242066', '86');
INSERT INTO takes VALUES ('318', '202024100738', '211016', '87');
INSERT INTO takes VALUES ('319', '202024100738', '245064', '76');
INSERT INTO takes VALUES ('320', '202024100738', '211005', '88');
INSERT INTO takes VALUES ('321', '202024100738', '245059', '68');
INSERT INTO takes VALUES ('322', '202024100738', '242064', '90');
INSERT INTO takes VALUES ('323', '202024100738', '211007', '85');
INSERT INTO takes VALUES ('324', '202024100738', '211017', '95');
INSERT INTO takes VALUES ('325', '202024100738', '242076', '78');
INSERT INTO takes VALUES ('326', '202024100738', '245029', '86');
INSERT INTO takes VALUES ('327', '202024100738', '242078', '78');
INSERT INTO takes VALUES ('328', '202024100738', '245001', '78');

INSERT INTO takes VALUES ('329', '202024100740', '211005', '78');
INSERT INTO takes VALUES ('330', '202024100740', '245059', '98');
INSERT INTO takes VALUES ('331', '202024100740', '242075', '75');
INSERT INTO takes VALUES ('332', '202024100740', '242072', '86');
INSERT INTO takes VALUES ('333', '202024100740', '242066', '76');
INSERT INTO takes VALUES ('334', '202024100740', '211016', '87');
INSERT INTO takes VALUES ('335', '202024100740', '245064', '96');
INSERT INTO takes VALUES ('336', '202024100740', '242064', '70');
INSERT INTO takes VALUES ('337', '202024100740', '211007', '85');
INSERT INTO takes VALUES ('338', '202024100740', '211017', '95');
INSERT INTO takes VALUES ('339', '202024100740', '242076', '88');
INSERT INTO takes VALUES ('340', '202024100740', '245029', '86');
INSERT INTO takes VALUES ('341', '202024100740', '242078', '88');
INSERT INTO takes VALUES ('342', '202024100740', '245001', '78');

INSERT INTO takes VALUES ('343', '202024100837', '242041', '78');
INSERT INTO takes VALUES ('344', '202024100837', '242057', '98');
INSERT INTO takes VALUES ('345', '202024100837', '242066', '75');
INSERT INTO takes VALUES ('346', '202024100837', '243113', '86');
INSERT INTO takes VALUES ('347', '202024100837', '243202', '76');
INSERT INTO takes VALUES ('348', '202024100837', '243119', '87');
INSERT INTO takes VALUES ('349', '202024100837', '243124', '96');
INSERT INTO takes VALUES ('350', '202024100837', '243203', '70');
INSERT INTO takes VALUES ('351', '202024100837', '243325', '85');
INSERT INTO takes VALUES ('352', '202024100837', '245002', '95');
INSERT INTO takes VALUES ('353', '202024100837', '244067', '88');
INSERT INTO takes VALUES ('354', '202024100837', '245029', '86');
INSERT INTO takes VALUES ('355', '202024100837', '242078', '88');
INSERT INTO takes VALUES ('356', '202024100837', '245001', '78');

INSERT INTO takes VALUES ('357', '202024100442', '242041', '99');
INSERT INTO takes VALUES ('358', '202024100442', '242057', '98');
INSERT INTO takes VALUES ('359', '202024100442', '242066', '97');
INSERT INTO takes VALUES ('360', '202024100442', '243113', '90');
INSERT INTO takes VALUES ('361', '202024100442', '243202', '95');
INSERT INTO takes VALUES ('362', '202024100442', '243119', '94');
INSERT INTO takes VALUES ('363', '202024100442', '243124', '93');
INSERT INTO takes VALUES ('364', '202024100442', '243203', '92');
INSERT INTO takes VALUES ('365', '202024100442', '243325', '90');
INSERT INTO takes VALUES ('366', '202024100442', '245002', '95');
INSERT INTO takes VALUES ('367', '202024100442', '244067', '88');
INSERT INTO takes VALUES ('368', '202024100442', '245029', '86');
INSERT INTO takes VALUES ('369', '202024100442', '242078', '88');
INSERT INTO takes VALUES ('370', '202024100442', '245001', '85');