/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 80033
 Source Host           : 127.0.0.1:3306
 Source Schema         : Reciclados_3R_

 Target Server Type    : MySQL
 Target Server Version : 80033
 File Encoding         : 65001

 Date: 01/10/2023 13:45:48
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for client
-- ----------------------------
DROP TABLE IF EXISTS `client`;
CREATE TABLE `client` (
  `id` smallint NOT NULL AUTO_INCREMENT,
  `full_name` varchar(100) NOT NULL,
  `company` varchar(100) DEFAULT NULL,
  `phone` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=92 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of client
-- ----------------------------
BEGIN;
INSERT INTO `client` VALUES (1, 'Alfreds Futterkiste', 'Exotic Liquid', '(171) 555-2222');
INSERT INTO `client` VALUES (2, 'Ana Trujillo Emparedados y helados', 'New Orleans Cajun Delights', '(100) 555-4822');
INSERT INTO `client` VALUES (3, 'Antonio Moreno Taquería', 'Grandma Kelly\'s Homestead', '(313) 555-5735');
INSERT INTO `client` VALUES (4, 'Around the Horn', 'Tokyo Traders', '(03) 3555-5011');
INSERT INTO `client` VALUES (5, 'Berglunds snabbköp', 'Cooperativa de Quesos \'Las Cabras\'', '(98) 598 76 54');
INSERT INTO `client` VALUES (6, 'Blauer See Delikatessen', 'Mayumi\'s', '(06) 431-7877');
INSERT INTO `client` VALUES (7, 'Blondel père et fils', 'Pavlova, Ltd.', '(03) 444-2343');
INSERT INTO `client` VALUES (8, 'Bólido Comidas preparadas', 'Specialty Biscuits, Ltd.', '(161) 555-4448');
INSERT INTO `client` VALUES (9, 'Bon app\'', 'PB Knäckebröd AB', '031-987 65 43');
INSERT INTO `client` VALUES (10, 'Bottom-Dollar Marketse', 'Refrescos Americanas LTDA', '(11) 555 4640');
INSERT INTO `client` VALUES (11, 'B\'s Beverages', 'Heli Süßwaren GmbH & Co. KG', '(010) 9984510');
INSERT INTO `client` VALUES (12, 'Cactus Comidas para llevar', 'Plutzer Lebensmittelgroßmärkte AG', '(069) 992755');
INSERT INTO `client` VALUES (13, 'Centro comercial Moctezuma', 'Nord-Ost-Fisch Handelsgesellschaft mbH', '(04721) 8713');
INSERT INTO `client` VALUES (14, 'Chop-suey Chinese', 'Formaggi Fortini s.r.l.', '(0544) 60323');
INSERT INTO `client` VALUES (15, 'Comércio Mineiro', 'Norske Meierier', '(0)2-953010');
INSERT INTO `client` VALUES (16, 'Consolidated Holdings', 'Bigfoot Breweries', '(503) 555-9931');
INSERT INTO `client` VALUES (17, 'Drachenblut Delikatessend', 'Svensk Sjöföda AB', '08-123 45 67');
INSERT INTO `client` VALUES (18, 'Du monde entier', 'Aux joyeux ecclésiastiques', '(1) 03.83.00.68');
INSERT INTO `client` VALUES (19, 'Eastern Connection', 'New England Seafood Cannery', '(617) 555-3267');
INSERT INTO `client` VALUES (20, 'Ernst Handel', 'Leka Trading', '555-8787');
INSERT INTO `client` VALUES (21, 'Familia Arquibaldo', 'Lyngbysild', '43844108');
INSERT INTO `client` VALUES (22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Zaanse Snoepfabriek', '(12345) 1212');
INSERT INTO `client` VALUES (23, 'Folies gourmandes', 'Karkki Oy', '(953) 10956');
INSERT INTO `client` VALUES (24, 'Folk och fä HB', 'G\'day, Mate', '(02) 555-5914');
INSERT INTO `client` VALUES (25, 'Frankenversand', 'Ma Maison', '(514) 555-9022');
INSERT INTO `client` VALUES (26, 'France restauration', 'Pasta Buttini s.r.l.', '(089) 6547665');
INSERT INTO `client` VALUES (27, 'Franchi S.p.A.', 'Escargots Nouveaux', '85.57.00.07');
INSERT INTO `client` VALUES (28, 'Furia Bacalhau e Frutos do Mar', 'Gai pâturage', '38.76.98.06');
INSERT INTO `client` VALUES (29, 'Galería del gastrónomo', 'Forêts d\'érables', '(514) 555-2955');
INSERT INTO `client` VALUES (30, 'Godos Cocina Típica', 'Exotic Liquid', '(171) 555-2222');
INSERT INTO `client` VALUES (31, 'Gourmet Lanchonetes', 'New Orleans Cajun Delights', '(100) 555-4822');
INSERT INTO `client` VALUES (32, 'Great Lakes Food Market', 'Grandma Kelly\'s Homestead', '(313) 555-5735');
INSERT INTO `client` VALUES (33, 'GROSELLA-Restaurante', 'Tokyo Traders', '(03) 3555-5011');
INSERT INTO `client` VALUES (34, 'Hanari Carnes', 'Cooperativa de Quesos \'Las Cabras\'', '(98) 598 76 54');
INSERT INTO `client` VALUES (35, 'HILARIÓN-Abastos', 'Mayumi\'s', '(06) 431-7877');
INSERT INTO `client` VALUES (36, 'Hungry Coyote Import Store', 'Pavlova, Ltd.', '(03) 444-2343');
INSERT INTO `client` VALUES (37, 'Hungry Owl All-Night Grocers', 'Specialty Biscuits, Ltd.', '(161) 555-4448');
INSERT INTO `client` VALUES (38, 'Island Trading', 'PB Knäckebröd AB', '031-987 65 43');
INSERT INTO `client` VALUES (39, 'Königlich Essen', 'Refrescos Americanas LTDA', '(11) 555 4640');
INSERT INTO `client` VALUES (40, 'La corne d\'abondance', 'Heli Süßwaren GmbH & Co. KG', '(010) 9984510');
INSERT INTO `client` VALUES (41, 'La maison d\'Asie', 'Plutzer Lebensmittelgroßmärkte AG', '(069) 992755');
INSERT INTO `client` VALUES (42, 'Laughing Bacchus Wine Cellars', 'Nord-Ost-Fisch Handelsgesellschaft mbH', '(04721) 8713');
INSERT INTO `client` VALUES (43, 'Lazy K Kountry Store', 'Formaggi Fortini s.r.l.', '(0544) 60323');
INSERT INTO `client` VALUES (44, 'Lehmanns Marktstand', 'Norske Meierier', '(0)2-953010');
INSERT INTO `client` VALUES (45, 'Let\'s Stop N Shop', 'Bigfoot Breweries', '(503) 555-9931');
INSERT INTO `client` VALUES (46, 'LILA-Supermercado', 'Svensk Sjöföda AB', '08-123 45 67');
INSERT INTO `client` VALUES (47, 'LINO-Delicateses', 'Aux joyeux ecclésiastiques', '(1) 03.83.00.68');
INSERT INTO `client` VALUES (48, 'Lonesome Pine Restaurant', 'New England Seafood Cannery', '(617) 555-3267');
INSERT INTO `client` VALUES (49, 'Magazzini Alimentari Riuniti', 'Leka Trading', '555-8787');
INSERT INTO `client` VALUES (50, 'Maison Dewey', 'Lyngbysild', '43844108');
INSERT INTO `client` VALUES (51, 'Mère Paillarde', 'Zaanse Snoepfabriek', '(12345) 1212');
INSERT INTO `client` VALUES (52, 'Morgenstern Gesundkost', 'Karkki Oy', '(953) 10956');
INSERT INTO `client` VALUES (53, 'North/South', 'G\'day, Mate', '(02) 555-5914');
INSERT INTO `client` VALUES (54, 'Océano Atlántico Ltda.', 'Ma Maison', '(514) 555-9022');
INSERT INTO `client` VALUES (55, 'Old World Delicatessen', 'Pasta Buttini s.r.l.', '(089) 6547665');
INSERT INTO `client` VALUES (56, 'Ottilies Käseladen', 'Escargots Nouveaux', '85.57.00.07');
INSERT INTO `client` VALUES (57, 'Paris spécialités', 'Gai pâturage', '38.76.98.06');
INSERT INTO `client` VALUES (58, 'Pericles Comidas clásicas', 'Forêts d\'érables', '(514) 555-2955');
INSERT INTO `client` VALUES (59, 'Piccolo und mehr', 'Exotic Liquid', '(171) 555-2222');
INSERT INTO `client` VALUES (60, 'Princesa Isabel Vinhoss', 'New Orleans Cajun Delights', '(100) 555-4822');
INSERT INTO `client` VALUES (61, 'Que Delícia', 'Grandma Kelly\'s Homestead', '(313) 555-5735');
INSERT INTO `client` VALUES (62, 'Queen Cozinha', 'Tokyo Traders', '(03) 3555-5011');
INSERT INTO `client` VALUES (63, 'QUICK-Stop', 'Cooperativa de Quesos \'Las Cabras\'', '(98) 598 76 54');
INSERT INTO `client` VALUES (64, 'Rancho grande', 'Mayumi\'s', '(06) 431-7877');
INSERT INTO `client` VALUES (65, 'Rattlesnake Canyon Grocery', 'Pavlova, Ltd.', '(03) 444-2343');
INSERT INTO `client` VALUES (66, 'Reggiani Caseifici', 'Specialty Biscuits, Ltd.', '(161) 555-4448');
INSERT INTO `client` VALUES (67, 'Ricardo Adocicados', 'PB Knäckebröd AB', '031-987 65 43');
INSERT INTO `client` VALUES (68, 'Richter Supermarkt', 'Refrescos Americanas LTDA', '(11) 555 4640');
INSERT INTO `client` VALUES (69, 'Romero y tomillo', 'Heli Süßwaren GmbH & Co. KG', '(010) 9984510');
INSERT INTO `client` VALUES (70, 'Santé Gourmet', 'Plutzer Lebensmittelgroßmärkte AG', '(069) 992755');
INSERT INTO `client` VALUES (71, 'Save-a-lot Markets', 'Nord-Ost-Fisch Handelsgesellschaft mbH', '(04721) 8713');
INSERT INTO `client` VALUES (72, 'Seven Seas Imports', 'Formaggi Fortini s.r.l.', '(0544) 60323');
INSERT INTO `client` VALUES (73, 'Simons bistro', 'Norske Meierier', '(0)2-953010');
INSERT INTO `client` VALUES (74, 'Spécialités du monde', 'Bigfoot Breweries', '(503) 555-9931');
INSERT INTO `client` VALUES (75, 'Split Rail Beer & Ale', 'Svensk Sjöföda AB', '08-123 45 67');
INSERT INTO `client` VALUES (76, 'Suprêmes délices', 'Aux joyeux ecclésiastiques', '(1) 03.83.00.68');
INSERT INTO `client` VALUES (77, 'The Big Cheese', 'New England Seafood Cannery', '(617) 555-3267');
INSERT INTO `client` VALUES (78, 'The Cracker Box', 'Leka Trading', '555-8787');
INSERT INTO `client` VALUES (79, 'Toms Spezialitäten', 'Lyngbysild', '43844108');
INSERT INTO `client` VALUES (80, 'Tortuga Restaurante', 'Zaanse Snoepfabriek', '(12345) 1212');
INSERT INTO `client` VALUES (81, 'Tradição Hipermercados', 'Karkki Oy', '(953) 10956');
INSERT INTO `client` VALUES (82, 'Trail\'s Head Gourmet Provisioners', 'G\'day, Mate', '(02) 555-5914');
INSERT INTO `client` VALUES (83, 'Vaffeljernet', 'Ma Maison', '(514) 555-9022');
INSERT INTO `client` VALUES (84, 'Victuailles en stock', 'Pasta Buttini s.r.l.', '(089) 6547665');
INSERT INTO `client` VALUES (85, 'Vins et alcools Chevalier', 'Escargots Nouveaux', '85.57.00.07');
INSERT INTO `client` VALUES (86, 'Die Wandernde Kuh', 'Gai pâturage', '38.76.98.06');
INSERT INTO `client` VALUES (87, 'Wartian Herkku', 'Forêts d\'érables', '(514) 555-2955');
INSERT INTO `client` VALUES (88, 'Wellington Importadora', 'Exotic Liquid', '(171) 555-2222');
INSERT INTO `client` VALUES (89, 'White Clover Markets', 'New Orleans Cajun Delights', '(100) 555-4822');
INSERT INTO `client` VALUES (90, 'Wilman Kala', 'Grandma Kelly\'s Homestead', '(313) 555-5735');
INSERT INTO `client` VALUES (91, 'Wolski', 'Tokyo Traders', '(03) 3555-5011');
COMMIT;

-- ----------------------------
-- Table structure for phone_call
-- ----------------------------
DROP TABLE IF EXISTS `phone_call`;
CREATE TABLE `phone_call` (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_name` varchar(25) NOT NULL,
  `department` enum('Customer service','Human Resources','Commercial','Cleaning','Recycling plant') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `description` text NOT NULL,
  `client_id` smallint NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `reactivated_at` timestamp NULL DEFAULT NULL,
  `state` enum('pending','in progress','finished') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL DEFAULT 'pending',
  `remark` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  PRIMARY KEY (`id`) USING BTREE,
  KEY `fk_phone_call_user_user_name` (`user_name`),
  KEY `fk_phone_call_client_id` (`client_id`),
  CONSTRAINT `fk_phone_call_client_id` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `fk_phone_call_user_user_name` FOREIGN KEY (`user_name`) REFERENCES `user` (`user_name`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of phone_call
-- ----------------------------
BEGIN;
INSERT INTO `phone_call` VALUES (1, 'burkes', 'Customer service', 'Call 01: Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iusto unde eius asperiores, laudantium minus a, impedit accusantium obcaecati deserunt adipisci consequatur mollitia. Nostrum alias facere veritatis maiores aspernatur eveniet sint!', 1, '2023-09-16 19:46:00', '2023-10-01 13:00:03', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (2, 'devlingi', 'Commercial', 'Call 02: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem esse expedita temporibus voluptatem facere architecto aperiam quia quos! Sequi, nisi doloremque voluptatem sapiente sed quaerat laudantium? Error eius dolorum obcaecati!', 2, '2023-09-16 19:46:52', '2023-10-01 13:00:07', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (3, 'wilsonp', 'Customer service', 'Call 03: Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde quibusdam molestias illo ipsam natus quas, debitis consectetur asperiores saepe. Fugiat, nesciunt. Laborum placeat recusandae et reiciendis tempore, nemo soluta illo.', 3, '2023-09-16 19:47:00', '2023-10-01 12:52:34', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (4, 'petersonl', 'Human Resources', 'Call 04: Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laborum ducimus, eveniet veniam quasi totam temporibus. Assumenda neque quae iusto, ut, doloribus, eum molestiae deserunt doloremque commodi amet culpa at quas.', 4, '2023-09-16 19:47:22', '2023-10-01 12:53:42', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (5, 'diazc', 'Commercial', 'Call 05: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae maxime, odit, accusantium ratione laboriosam saepe, nihil sint aliquam tempora vero ipsa magni velit natus. Mollitia nesciunt officiis animi harum deserunt.', 5, '2023-09-16 19:48:17', '2023-10-01 12:29:33', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (6, 'winklerp', 'Cleaning', 'Call 06: Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, cumque. Quam quis incidunt exercitationem molestiae placeat quasi aperiam dolorum. Quidem repudiandae repellat officia quibusdam distinctio et esse est, perferendis dolore?', 6, '2023-09-16 19:48:22', '2023-10-01 12:59:54', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (7, 'beinm', 'Recycling plant', 'Call 07: Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat, debitis aut unde cupiditate perspiciatis placeat incidunt voluptas accusamus, explicabo rerum quod molestias quibusdam culpa distinctio labore aliquid velit repudiandae? Fugit!', 7, '2023-09-16 19:48:27', '2023-10-01 12:58:33', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (8, 'petersens', 'Commercial', 'Call 08: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae maxime expedita corporis laudantium? Ipsa numquam ducimus totam quisquam, voluptates ipsum quos repudiandae doloribus officiis odit doloremque expedita beatae nostrum exercitationem.', 8, '2023-09-16 21:49:05', NULL, NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (9, 'devlingi', 'Commercial', 'Call 09: Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae optio vero ea unde necessitatibus, labore dignissimos deserunt ullam libero consectetur quam ipsa recusandae eum! Beatae esse illo molestiae sapiente dolorum?', 9, '2023-09-16 21:51:52', '2023-10-01 12:29:21', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (10, 'wilsonp', 'Customer service', 'Call 10: Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam ut cupiditate magnam officiis deserunt nam rerum, nisi ipsum obcaecati ad adipisci vitae aspernatur magni in fuga neque nostrum tenetur illum?', 10, '2023-09-16 21:51:52', NULL, NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (11, 'petersonl', 'Human Resources', 'Call 11: Lorem ipsum, dolor sit amet consectetur adipisicing elit. Est officia fugiat velit, possimus, dolor libero praesentium nulla dolorum provident deleniti accusamus doloribus, culpa dolorem aspernatur explicabo. Rerum dolores ducimus cupiditate?', 11, '2023-09-16 21:51:52', NULL, NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (12, 'diazc', 'Commercial', 'Call 12: Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officia quibusdam esse repudiandae ratione harum magnam cupiditate odio laudantium eum, doloremque eveniet sunt dolorem! Inventore labore repudiandae numquam! Nesciunt, similique non!', 12, '2023-09-16 21:51:53', NULL, NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (13, 'winklerp', 'Cleaning', 'Call 13: Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fugit repellat perferendis ad eligendi facilis incidunt ab fuga quae excepturi, itaque impedit libero reprehenderit iste odit vitae est minima quo alias.', 13, '2023-09-16 21:51:53', '2023-10-01 12:57:42', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (14, 'petersonl', 'Recycling plant', 'Call 14: Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, sit! Aperiam atque neque porro accusamus nihil, ducimus reprehenderit eveniet quidem, ad, iste quisquam quos aliquam. Dolor, commodi ducimus. Voluptatem, ea.', 14, '2023-09-16 21:51:53', '2023-10-01 12:50:57', NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (15, 'petersens', 'Commercial', 'Call 15: Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere, corrupti sapiente rerum tempore unde quisquam voluptatum. Ea dolorum saepe totam odio molestiae repellendus cumque excepturi! Veniam laboriosam blanditiis sit quam!', 15, '2023-09-16 21:51:53', NULL, NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (16, 'devlingi', 'Commercial', 'Call 16: Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere magnam fuga ipsum libero exercitationem expedita minima pariatur cumque reiciendis, architecto incidunt, sequi corporis nam debitis accusantium similique. Harum, magni qui.', 16, '2023-09-16 21:54:34', '2023-10-01 12:54:33', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (17, 'devlingi', 'Customer service', 'Call 17: Lorem, ipsum dolor sit amet consectetur adipisicing elit. Illum ullam nemo voluptates aut repellat delectus ad ipsum nulla quas, mollitia, recusandae cum impedit cumque sed iusto perferendis atque quia! Quibusdam.', 17, '2023-09-16 21:54:35', '2023-10-01 12:52:02', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (18, 'petersonl', 'Human Resources', 'Call 18: Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum error asperiores nostrum nemo vel fugiat laborum numquam molestias, repellendus sed ad repellat! Quam expedita, dolorem porro repellat at quo modi.', 18, '2023-09-16 21:54:35', NULL, NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (19, 'diazc', 'Commercial', 'Call 19: Lorem ipsum, dolor sit amet consectetur adipisicing elit. Delectus, consequatur. Nostrum inventore, cum necessitatibus illo sint quidem sequi aperiam, ipsum dignissimos placeat magni, praesentium quibusdam nobis eaque iste tenetur obcaecati!', 19, '2023-09-16 21:54:35', '2023-10-01 12:54:25', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (20, 'winklerp', 'Cleaning', 'Call 20: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 20, '2023-09-16 21:54:35', '2023-10-01 12:57:38', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (21, 'beinm', 'Recycling plant', 'Call 21: Lorem ipsum dolor sit amet consectetur adipisicing elit. Suscipit et esse deserunt, fugiat aliquid asperiores, natus, illum ducimus ipsum quod optio. Qui minus saepe aliquid mollitia, voluptate expedita velit excepturi!', 2, '2023-09-16 21:54:35', '2023-10-01 12:58:26', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (22, 'burkes', 'Recycling plant', 'Call 22: Lorem ipsum dolor sit amet consectetur, adipisicing elit. Iusto unde eius asperiores, laudantium minus a, impedit accusantium obcaecati deserunt adipisci consequatur mollitia. Nostrum alias facere veritatis maiores aspernatur eveniet sint!', 7, '2023-09-16 22:15:40', '2023-10-01 12:43:09', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (23, 'devlingi', 'Commercial', 'Call 23: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem esse expedita temporibus voluptatem facere architecto aperiam quia quos! Sequi, nisi doloremque voluptatem sapiente sed quaerat laudantium? Error eius dolorum obcaecati!', 8, '2023-09-16 22:15:40', NULL, NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (24, 'wilsonp', 'Customer service', 'Call 24: Lorem ipsum dolor sit amet consectetur adipisicing elit. Unde quibusdam molestias illo ipsam natus quas, debitis consectetur asperiores saepe. Fugiat, nesciunt. Laborum placeat recusandae et reiciendis tempore, nemo soluta illo.', 12, '2023-09-16 22:15:41', NULL, NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (25, 'petersonl', 'Human Resources', 'Call 25: Lorem ipsum dolor, sit amet consectetur adipisicing elit. Laborum ducimus, eveniet veniam quasi totam temporibus. Assumenda neque quae iusto, ut, doloribus, eum molestiae deserunt doloremque commodi amet culpa at quas.', 3, '2023-09-16 22:15:41', '2023-10-01 12:53:33', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (26, 'diazc', 'Commercial', 'Call 26: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae maxime, odit, accusantium ratione laboriosam saepe, nihil sint aliquam tempora vero ipsa magni velit natus. Mollitia nesciunt officiis animi harum deserunt.', 2, '2023-09-16 22:15:41', '2023-10-01 12:54:37', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (27, 'winklerp', 'Cleaning', 'Call 27: Lorem ipsum dolor sit amet consectetur adipisicing elit. Sed, cumque. Quam quis incidunt exercitationem molestiae placeat quasi aperiam dolorum. Quidem repudiandae repellat officia quibusdam distinctio et esse est, perferendis dolore?', 15, '2023-09-16 22:15:41', '2023-10-01 12:57:27', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (28, 'beinm', 'Recycling plant', 'Call 28: Lorem ipsum dolor sit amet consectetur adipisicing elit. Fugiat, debitis aut unde cupiditate perspiciatis placeat incidunt voluptas accusamus, explicabo rerum quod molestias quibusdam culpa distinctio labore aliquid velit repudiandae? Fugit!', 11, '2023-09-16 22:15:42', NULL, NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (29, 'petersens', 'Commercial', 'Call 29: Lorem ipsum dolor sit amet, consectetur adipisicing elit. Beatae maxime expedita corporis laudantium? Ipsa numquam ducimus totam quisquam, voluptates ipsum quos repudiandae doloribus officiis odit doloremque expedita beatae nostrum exercitationem.', 18, '2023-09-16 22:15:42', NULL, NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (30, 'devlingi', 'Commercial', 'Call 30: Lorem ipsum dolor sit amet consectetur adipisicing elit. Molestiae optio vero ea unde necessitatibus, labore dignissimos deserunt ullam libero consectetur quam ipsa recusandae eum! Beatae esse illo molestiae sapiente dolorum?', 20, '2023-09-16 22:15:42', '2023-10-01 13:38:35', '2023-10-01 13:38:35', NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (31, 'wilsonp', 'Customer service', 'Call 31: Lorem ipsum dolor sit amet consectetur adipisicing elit. Laboriosam ut cupiditate magnam officiis deserunt nam rerum, nisi ipsum obcaecati ad adipisci vitae aspernatur magni in fuga neque nostrum tenetur illum?', 21, '2023-09-16 22:15:42', '2023-10-01 12:52:38', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (32, 'petersens', 'Human Resources', 'Call 32: Lorem ipsum, dolor sit amet consectetur adipisicing elit. Est officia fugiat velit, possimus, dolor libero praesentium nulla dolorum provident deleniti accusamus doloribus, culpa dolorem aspernatur explicabo. Rerum dolores ducimus cupiditate?', 22, '2023-09-16 22:15:42', '2023-10-01 12:46:23', NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (33, 'diazc', 'Commercial', 'Call 33: Lorem ipsum, dolor sit amet consectetur adipisicing elit. Officia quibusdam esse repudiandae ratione harum magnam cupiditate odio laudantium eum, doloremque eveniet sunt dolorem! Inventore labore repudiandae numquam! Nesciunt, similique non!', 23, '2023-09-16 22:15:42', NULL, NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (34, 'winklerp', 'Cleaning', 'Call 34: Lorem ipsum dolor sit, amet consectetur adipisicing elit. Fugit repellat perferendis ad eligendi facilis incidunt ab fuga quae excepturi, itaque impedit libero reprehenderit iste odit vitae est minima quo alias.', 24, '2023-09-16 22:15:42', '2023-10-01 12:57:32', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (35, 'beinm', 'Recycling plant', 'Call 35: Lorem ipsum dolor sit amet consectetur adipisicing elit. Quos, sit! Aperiam atque neque porro accusamus nihil, ducimus reprehenderit eveniet quidem, ad, iste quisquam quos aliquam. Dolor, commodi ducimus. Voluptatem, ea.', 25, '2023-09-16 22:15:42', NULL, NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (36, 'petersens', 'Commercial', 'Call 36: Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere, corrupti sapiente rerum tempore unde quisquam voluptatum. Ea dolorum saepe totam odio molestiae repellendus cumque excepturi! Veniam laboriosam blanditiis sit quam!', 26, '2023-09-16 22:15:42', '2023-10-01 12:53:58', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (37, 'devlingi', 'Commercial', 'Call 37: Lorem ipsum dolor sit amet consectetur adipisicing elit. Facere magnam fuga ipsum libero exercitationem expedita minima pariatur cumque reiciendis, architecto incidunt, sequi corporis nam debitis accusantium similique. Harum, magni qui.', 27, '2023-09-16 22:15:43', '2023-10-01 12:54:40', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (38, 'wilsonp', 'Customer service', 'Call 38: Lorem, ipsum dolor sit amet consectetur adipisicing elit. Illum ullam nemo voluptates aut repellat delectus ad ipsum nulla quas, mollitia, recusandae cum impedit cumque sed iusto perferendis atque quia! Quibusdam.', 4, '2023-09-16 22:15:43', '2023-10-01 12:52:26', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (39, 'beinm', 'Human Resources', 'Call 39: Lorem ipsum dolor sit amet consectetur adipisicing elit. Harum error asperiores nostrum nemo vel fugiat laborum numquam molestias, repellendus sed ad repellat! Quam expedita, dolorem porro repellat at quo modi.', 2, '2023-09-16 22:15:43', '2023-10-01 12:45:05', NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (40, 'diazc', 'Commercial', 'Call 40: Lorem ipsum, dolor sit amet consectetur adipisicing elit. Delectus, consequatur. Nostrum inventore, cum necessitatibus illo sint quidem sequi aperiam, ipsum dignissimos placeat magni, praesentium quibusdam nobis eaque iste tenetur obcaecati!', 1, '2023-09-16 22:15:43', '2023-10-01 12:53:52', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (41, 'winklerp', 'Cleaning', 'Call 41: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 28, '2023-09-16 22:15:43', '2023-10-01 12:57:30', NULL, NULL, 'finished', NULL);
INSERT INTO `phone_call` VALUES (42, 'wilsonp', 'Commercial', 'Call 42: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 54, '2023-09-28 14:40:54', '2023-10-01 12:54:46', NULL, NULL, 'finished', '30th Remark.');
INSERT INTO `phone_call` VALUES (43, 'devlingi', 'Commercial', 'Call 43: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 9, '2023-09-30 02:10:25', '2023-10-01 12:47:19', NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (44, 'beinm', 'Commercial', 'Call 44: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 11, '2023-09-30 02:11:34', '2023-10-01 12:54:19', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (45, 'petersonl', 'Recycling plant', 'Call 45: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 17, '2023-09-30 02:52:47', '2023-10-01 12:58:21', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (46, 'devlingi', 'Commercial', 'Call 46: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 15, '2023-09-30 03:11:08', '2023-10-01 12:57:02', '2023-10-01 08:26:28', NULL, 'finished', '1st remark');
INSERT INTO `phone_call` VALUES (47, 'diazc', 'Recycling plant', 'Call 47: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 53, '2023-09-30 03:29:41', '2023-10-01 12:58:19', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (48, 'petersens', 'Customer service', 'Call 48: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 14, '2023-09-30 03:30:44', '2023-10-01 12:53:07', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (49, 'burkes', 'Commercial', 'Call 49: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 44, '2023-09-30 04:03:31', '2023-10-01 12:48:03', NULL, NULL, 'in progress', NULL);
INSERT INTO `phone_call` VALUES (50, 'winklerp', 'Customer service', 'Call 50: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 46, '2023-09-30 04:04:30', '2023-10-01 12:43:16', '2023-10-01 12:26:28', NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (51, 'wilsonp', 'Commercial', 'Call 51: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 35, '2023-09-30 04:31:36', '2023-10-01 12:49:40', NULL, NULL, 'pending', NULL);
INSERT INTO `phone_call` VALUES (52, 'devlingi', 'Recycling plant', 'Call 52: Lorem ipsum dolor sit amet consectetur adipisicing elit. Autem distinctio pariatur consequuntur sunt repudiandae natus. Consectetur, dignissimos ex voluptate, error unde, ad labore voluptatum veniam amet maxime quo modi beatae.', 55, '2023-09-30 04:49:12', '2023-10-01 12:51:16', NULL, NULL, 'pending', NULL);
COMMIT;

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_name` varchar(25) NOT NULL,
  `password` char(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `department` enum('Customer service','Human Resources','Commercial','Cleaning','Recycling plant') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `role` enum('Boss','Team leader','Employee') CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`user_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of user
-- ----------------------------
BEGIN;
INSERT INTO `user` VALUES ('beinm', '$2y$10$pozraXcfMRxW8j9rXGCAxOUAtW0S4.Lxal/ZmoDQNxKdaGBRE46j.', 'Martin Bein', 'Customer service', 'Employee');
INSERT INTO `user` VALUES ('bjornm', '$2y$10$RrFUlC.wbF5OTb/8WjfXkO3jltIx5APy6oZHrsamhHhRiOJVykYRW', 'Michael Björn', 'Commercial', 'Employee');
INSERT INTO `user` VALUES ('burkes', '$2y$10$hY3EQfTg50uqamIxrWGnfO7DdhWdd0eSjEr0M1X9C7h2yxnpY1vHG', 'Shelley Burke', 'Customer service', 'Team leader');
INSERT INTO `user` VALUES ('cooperc', '$2y$10$lEJAIgt41w0NLoRE7tqAiORDpXUBGDKWpZmdCaixs2IpyCPiPgMZG', 'Charlotte Cooper', 'Commercial', 'Boss');
INSERT INTO `user` VALUES ('delamarem', '$2y$10$w17NGKjT.msaJ5jLWDcJzOgxKhZt/AO//4nbnJNNuzdlEfKinQyky', 'Marie Delamare', 'Recycling plant', 'Employee');
INSERT INTO `user` VALUES ('devlingi', '$2y$10$5zd3GO3p25BOJq2KBbyKdeuaCr0KvgdWAz921fFfwSTMf4hYiIqaK', 'Ian Devling', 'Customer service', 'Employee');
INSERT INTO `user` VALUES ('diazc', '$2y$10$cWj5W0ntC2NZVSmzXaLMquO6LxnCFMXqtc8A3MuoETQVINx3iKTxO', 'Carlos Diaz', 'Customer service', 'Employee');
INSERT INTO `user` VALUES ('giudicig', '$2y$10$Cfh8Jv1uzoxIsVpx6uj2sej/zeHWEOuZb1dsY81RaPPmsSlsgYRju', 'Giovanni Giudici', 'Recycling plant', 'Employee');
INSERT INTO `user` VALUES ('gouletc', '$2y$10$JWG6vXxeFRfNL5.Onfwdjed17nO5guoYR9OIsh0ns75Ue3xgO2gxW', 'Chantal Goulet', 'Recycling plant', 'Employee');
INSERT INTO `user` VALUES ('heikkonena', '$2y$10$yLus0N4GQtDnO8doSrQqRu27cGAmcAVzKfN5lDi8JpqD5zkhFevFe', 'Anne Heikkonen', 'Cleaning', 'Employee');
INSERT INTO `user` VALUES ('lauzonj', '$2y$10$s7KtFZiiO6wA3Vd3SIk6I.1WF4MI1dCycgeGrcWDfyU2qNy06KQH.', 'Jean-Guy Lauzon', 'Cleaning', 'Employee');
INSERT INTO `user` VALUES ('lekac', '$2y$10$Bta8Zqg.J.sVNOFKPXUCZeqvDaMHuUISYMHky5785boZkvIOjHRfy', 'Chandra Leka', 'Commercial', 'Employee');
INSERT INTO `user` VALUES ('mackenziew', '$2y$10$52P7VKr8yhoF7idqzc.PIeqtMWfEu7WDj5L0YURbZD6BgmZN6KopO', 'Wendy Mackenzie', 'Cleaning', 'Employee');
INSERT INTO `user` VALUES ('martina', '$2y$10$S5vV7uFE9V4qiji57a6G7OpOWoT5wyJxiTCQfNl5CmogNLYAUHT02', 'Azucena Martín', 'Human Resources', 'Boss');
INSERT INTO `user` VALUES ('merchantr', '$2y$10$mUTv5.Cuv6Qkevc7Cmwm2OUXkJlkVaoF8lQ8189muaD7LQHxm8oM2', 'Robb Merchant', 'Commercial', 'Employee');
INSERT INTO `user` VALUES ('murphyr', '$2y$10$LZ3terqag0k1dKLo2Dn.cOcRkYPweKCDjm2YP7f8aXUBacNRTvGyq', 'Regina Murphy', 'Human Resources', 'Team leader');
INSERT INTO `user` VALUES ('nagasey', '$2y$10$tMlKZbO77./MZ3YSGJqMcOlhjbQJYM3yq5xMF9PikKpbCJKTZlCZC', 'Yoshi Nagase', 'Commercial', 'Team leader');
INSERT INTO `user` VALUES ('nodierg', '$2y$10$lAXuVLOna0bOAmHvWQDTpe/v3LN0N2yDj9w5vlJGEMYG15CkBAVYO', 'Guylène Nodier', 'Commercial', 'Employee');
INSERT INTO `user` VALUES ('noze', '$2y$10$8xJOvqxEe60paFn99z75iO0YWpEA.w2JLCYBTq.Fbt5axKOoZ8.aG', 'Eliane Noz', 'Recycling plant', 'Employee');
INSERT INTO `user` VALUES ('ohnom', '$2y$10$TjjfTeMMMxggbyYdFwAGiOsa2odUC4wEGpri7RZtSoVHJAhTl8rLm', 'Mayumi Ohno', 'Recycling plant', 'Team leader');
INSERT INTO `user` VALUES ('petersenn', '$2y$10$3obyW52LDQ4HnOl4B/Me8ujmGksUWqlqwCuH59J5F5uo3xqmuAzVG', 'Niels Petersen', 'Commercial', 'Employee');
INSERT INTO `user` VALUES ('petersens', '$2y$10$GV9OuIx/FUiAFmG.HQlGNuvijQ6Ylc7CCSeRZTYuY0mrJN2K5usNO', 'Sven Petersen', 'Customer service', 'Employee');
INSERT INTO `user` VALUES ('petersonl', '$2y$10$YflueTZEiUYnLfWRSfLvju1czSFX1ccXZbc7uNRuTbi5DvlAwAPAK', 'Lars Peterson', 'Customer service', 'Employee');
INSERT INTO `user` VALUES ('rossie', '$2y$10$ko9MUCHM8jrKCcVOHx.Tjuw6dRc1nS.YOgL8qZXilMX3htk/XXvyK', 'Elio Rossi', 'Human Resources', 'Employee');
INSERT INTO `user` VALUES ('saavedraa', '$2y$10$1D89vCYDrZzGW0MwhyWlT.zkDyle13Z8PwFREWPRr2ss/5sMXs/4S', 'Antonio Del Valle Saavedra', 'Cleaning', 'Team leader');
INSERT INTO `user` VALUES ('saylorc', '$2y$10$NWVC13DcTT5ihK7O8EH4IOi1e1mbxI45R7jsiIAhQ/tPAF4WWZLja', 'Cheryl Saylor', 'Human Resources', 'Employee');
INSERT INTO `user` VALUES ('vileidb', '$2y$10$rF4cfCXfu6HPg0ZdsOKpt.bqR//H56ECawRLu.vdSucku.7pTjXti', 'Beate Vileid', 'Human Resources', 'Employee');
INSERT INTO `user` VALUES ('wilsonp', '$2y$10$c0w67dMhBGbfvjMCUomgnOy7Dz5wNFq.2KqdKD87OgY4m4gpNdiPC', 'Peter Wilson', 'Customer service', 'Employee');
INSERT INTO `user` VALUES ('winklerp', '$2y$10$7tMEeyDU1bH/Ed/RhxcMmecjwLIAkqNk1FOr.MY1yOyf421jHzozm', 'Petra Winkler', 'Customer service', 'Employee');
COMMIT;

SET FOREIGN_KEY_CHECKS = 1;
