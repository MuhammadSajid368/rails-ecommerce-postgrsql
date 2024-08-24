PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "schema_migrations" ("version" varchar NOT NULL PRIMARY KEY);
INSERT INTO schema_migrations VALUES('20240823045407');
INSERT INTO schema_migrations VALUES('20240823073540');
INSERT INTO schema_migrations VALUES('20240823081332');
INSERT INTO schema_migrations VALUES('20240823081505');
INSERT INTO schema_migrations VALUES('20240823081913');
INSERT INTO schema_migrations VALUES('20240823083347');
INSERT INTO schema_migrations VALUES('20240823090228');
INSERT INTO schema_migrations VALUES('20240823090914');
INSERT INTO schema_migrations VALUES('20240823091601');
CREATE TABLE IF NOT EXISTS "ar_internal_metadata" ("key" varchar NOT NULL PRIMARY KEY, "value" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
INSERT INTO ar_internal_metadata VALUES('environment','development','2024-08-23 14:19:57.761645','2024-08-23 14:19:57.761648');
CREATE TABLE IF NOT EXISTS "users" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "email" varchar DEFAULT '' NOT NULL, "encrypted_password" varchar DEFAULT '' NOT NULL, "reset_password_token" varchar, "reset_password_sent_at" datetime(6), "remember_created_at" datetime(6), "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "username" varchar, "name" varchar);
INSERT INTO users VALUES(1,'muhammadsajid936303@gmail.com','$2a$12$5x7PA50DdcyTfkRiPjuNa.hpr.riCbl3RxGRzs8sFRRvBr2mKjmEe',NULL,NULL,NULL,'2024-08-23 14:28:01.879078','2024-08-23 14:28:01.879078',NULL,NULL);
INSERT INTO users VALUES(2,'aliraza564257@gmail.com','$2a$12$eRK//6A.PdiCcg4S0ER1seteLEJAfuniiZGjvSZYonE4ci5y5KBLm',NULL,NULL,NULL,'2024-08-23 15:58:18.069944','2024-08-23 15:58:18.069944',NULL,NULL);
CREATE TABLE IF NOT EXISTS "products" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar, "description" text, "price" decimal(10,2), "picture" varchar, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL);
INSERT INTO products VALUES(1,'SYNOKE Outdoor Sport Watch 30M Waterproof Digital Men Fashion MultiFunction Waterproof Digital Watch Men','This is Nice Watch for men.',1555,NULL,'2024-08-23 14:31:32.479185','2024-08-23 14:43:08.730151');
INSERT INTO products VALUES(2,'Men''s Vertical Stripes Amazing Smart Fit T-Shirts','Nice Shirt for boys.',700,NULL,'2024-08-23 14:59:05.922397','2024-08-23 14:59:06.700997');
INSERT INTO products VALUES(3,'Silicone Sports Strap For Samsung Galaxy Fit 3 Watch Bracelet Correa For Samsung Galaxy Fit 3 Replacement Watch bands','This is Nice Product.',2500,NULL,'2024-08-23 15:05:07.132334','2024-08-23 15:05:07.679876');
INSERT INTO products VALUES(4,'Glass+Cover For Apple Watch case 9 8 7 6 SE 5 iWatch Accessorie Screen Protector Apple watch serie 44mm 40mm 41mm 45mm 42mm 38mm','This is Nice Product',2600,NULL,'2024-08-23 15:07:45.365720','2024-08-23 15:07:46.237085');
INSERT INTO products VALUES(5,'Top Best Quality School Bag for Boys and Girls Backup, Boys School Backpack , Boys Book Bags,Branded Bag,Boys College Bag,Boys University Bag,Laptop Bag,Casual Bag,Business School College','Best quality school bag for studnets.',1500,NULL,'2024-08-23 15:11:46.764650','2024-08-23 15:48:18.603522');
INSERT INTO products VALUES(6,'Organic Chia Seeds Weight Loss 100Gm','China Seed',60,NULL,'2024-08-23 15:14:06.383759','2024-08-23 15:14:08.728544');
INSERT INTO products VALUES(7,'Slim and light weight Long Wallet For Men','This is Nice Product.',400,NULL,'2024-08-23 15:17:49.288233','2024-08-23 15:17:50.548080');
INSERT INTO products VALUES(8,'Candy Organizer Bag for Multipurpose Use Picnic Toy Storage Handle Organizers Bags','Nice bag for women.',380,NULL,'2024-08-23 17:43:17.265277','2024-08-23 17:43:19.995189');
CREATE TABLE IF NOT EXISTS "active_storage_blobs" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "key" varchar NOT NULL, "filename" varchar NOT NULL, "content_type" varchar, "metadata" text, "service_name" varchar NOT NULL, "byte_size" bigint NOT NULL, "checksum" varchar, "created_at" datetime(6) NOT NULL);
INSERT INTO active_storage_blobs VALUES(1,'2tcut0z23ot7bcaphxj9yk9rbs4r','S9ad62acc5f7148cf80723b2495dd43e9X.jpg_400x400q80.jpg_.webp','image/webp','{"identified":true,"analyzed":true}','local',13942,'denWkE84o9jX/OWKHXfaSQ==','2024-08-23 14:31:32.984956');
INSERT INTO active_storage_blobs VALUES(2,'gn5olj7gal7cbkstccqdqw2lvold','7e678e1a5a205e2fcf0627f3799704a3.jpg_400x400q80.jpg_.webp','image/webp','{"identified":true,"analyzed":true}','local',20700,'+61PFy9igtLOb6j5ykPPng==','2024-08-23 14:59:05.964332');
INSERT INTO active_storage_blobs VALUES(3,'gkd7oqwhskzb58ldfrll6x8s08ht','S51dc89408fc7468099033682f434723f5.jpg_400x400q80.jpg_.webp','image/webp','{"identified":true,"analyzed":true}','local',19374,'DOkxPEoLG2mdqOY3RO15Kg==','2024-08-23 15:05:07.202095');
INSERT INTO active_storage_blobs VALUES(4,'xy06x875kyl22qiopenhsvxg3jzh','Sbdb9a5d047294c4a9416145403004ffbp.jpg_400x400q80.jpg_.webp','image/webp','{"identified":true,"analyzed":true}','local',14810,'FPv0Ugq2KPWP1AtMdtdGNQ==','2024-08-23 15:07:45.411454');
INSERT INTO active_storage_blobs VALUES(5,'6oi1lpt6kpjoi3dg2n5uinkv6y43','9833e9a05f8482fd8bb16a273cb60434.jpg_400x400q80.jpg_.webp','image/webp','{"identified":true,"analyzed":true}','local',6394,'2OQn9kVKqTUKsBxwg01auQ==','2024-08-23 15:11:46.818499');
INSERT INTO active_storage_blobs VALUES(6,'858eoyyg2kv8hnr98sz2n880cdlz','36acf248b5d0b88842f4e3c0dcca7f08.jpg_400x400q80.jpg_.webp','image/webp','{"identified":true,"analyzed":true}','local',17908,'ULelv1V6KeD1EuymKEbl3g==','2024-08-23 15:14:06.469758');
INSERT INTO active_storage_blobs VALUES(7,'i83o54q8jy7p3hlptyt7wzl3fp55','30610e948836cb9fe71e4c90cf139ad4.jpg_400x400q80.jpg_.webp','image/webp','{"identified":true,"analyzed":true}','local',17092,'OCUnPyLpRKnc1xZI7qVzEw==','2024-08-23 15:17:49.341251');
INSERT INTO active_storage_blobs VALUES(8,'qumcxfru2oarxd53603bdszzax80','b02bb17ba35cdaa662addbc8e1b020d3.jpg_400x400q80.jpg_.webp','image/webp','{"identified":true,"analyzed":true}','local',21106,'0QZ1N3JNUlkZrLhanoYzYg==','2024-08-23 17:43:17.488127');
CREATE TABLE IF NOT EXISTS "active_storage_attachments" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "name" varchar NOT NULL, "record_type" varchar NOT NULL, "record_id" bigint NOT NULL, "blob_id" bigint NOT NULL, "created_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_c3b3935057"
FOREIGN KEY ("blob_id")
  REFERENCES "active_storage_blobs" ("id")
);
INSERT INTO active_storage_attachments VALUES(1,'image','Product',1,1,'2024-08-23 14:31:33.001268');
INSERT INTO active_storage_attachments VALUES(2,'image','Product',2,2,'2024-08-23 14:59:05.977251');
INSERT INTO active_storage_attachments VALUES(3,'image','Product',3,3,'2024-08-23 15:05:07.225449');
INSERT INTO active_storage_attachments VALUES(4,'image','Product',4,4,'2024-08-23 15:07:45.424115');
INSERT INTO active_storage_attachments VALUES(5,'image','Product',5,5,'2024-08-23 15:11:46.835782');
INSERT INTO active_storage_attachments VALUES(6,'image','Product',6,6,'2024-08-23 15:14:06.498094');
INSERT INTO active_storage_attachments VALUES(7,'image','Product',7,7,'2024-08-23 15:17:49.358632');
INSERT INTO active_storage_attachments VALUES(8,'image','Product',8,8,'2024-08-23 17:43:17.509020');
CREATE TABLE IF NOT EXISTS "active_storage_variant_records" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "blob_id" bigint NOT NULL, "variation_digest" varchar NOT NULL, CONSTRAINT "fk_rails_993965df05"
FOREIGN KEY ("blob_id")
  REFERENCES "active_storage_blobs" ("id")
);
CREATE TABLE IF NOT EXISTS "comments" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "product_id" integer NOT NULL, "user_id" integer NOT NULL, "content" text, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_a0d280f6e4"
FOREIGN KEY ("product_id")
  REFERENCES "products" ("id")
, CONSTRAINT "fk_rails_03de2dc08c"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
INSERT INTO comments VALUES(1,1,1,'This is Fantestic Product.','2024-08-23 14:47:03.523315','2024-08-23 14:47:03.523315');
INSERT INTO comments VALUES(2,4,1,'Nice Product','2024-08-23 15:52:28.878531','2024-08-23 15:52:28.878531');
INSERT INTO comments VALUES(3,8,1,'Nice Product.','2024-08-23 17:58:54.112912','2024-08-23 17:58:54.112912');
INSERT INTO comments VALUES(4,2,1,'Nice Shirt.','2024-08-23 17:59:56.452927','2024-08-23 17:59:56.452927');
INSERT INTO comments VALUES(5,3,1,'Nice wrist watch.','2024-08-23 18:01:11.692945','2024-08-23 18:01:11.692945');
CREATE TABLE IF NOT EXISTS "ratings" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "product_id" integer NOT NULL, "user_id" integer NOT NULL, "score" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, "review" text, CONSTRAINT "fk_rails_f846e598a7"
FOREIGN KEY ("product_id")
  REFERENCES "products" ("id")
, CONSTRAINT "fk_rails_a7dfeb9f5f"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
INSERT INTO ratings VALUES(1,8,1,4,'2024-08-23 17:58:17.794660','2024-08-23 17:58:17.794660',NULL);
INSERT INTO ratings VALUES(2,8,1,5,'2024-08-23 17:58:28.686165','2024-08-23 17:58:28.686165',NULL);
INSERT INTO ratings VALUES(3,2,1,4,'2024-08-23 18:00:17.603641','2024-08-23 18:00:17.603641',NULL);
INSERT INTO ratings VALUES(4,3,1,5,'2024-08-23 18:01:39.569778','2024-08-23 18:01:39.569778',NULL);
INSERT INTO ratings VALUES(5,4,1,3,'2024-08-23 18:02:09.259229','2024-08-23 18:02:09.259229',NULL);
CREATE TABLE IF NOT EXISTS "reviews" ("id" integer PRIMARY KEY AUTOINCREMENT NOT NULL, "content" text, "product_id" integer NOT NULL, "user_id" integer NOT NULL, "created_at" datetime(6) NOT NULL, "updated_at" datetime(6) NOT NULL, CONSTRAINT "fk_rails_bedd9094d4"
FOREIGN KEY ("product_id")
  REFERENCES "products" ("id")
, CONSTRAINT "fk_rails_74a66bd6c5"
FOREIGN KEY ("user_id")
  REFERENCES "users" ("id")
);
DELETE FROM sqlite_sequence;
INSERT INTO sqlite_sequence VALUES('users',2);
INSERT INTO sqlite_sequence VALUES('products',8);
INSERT INTO sqlite_sequence VALUES('active_storage_blobs',8);
INSERT INTO sqlite_sequence VALUES('active_storage_attachments',8);
INSERT INTO sqlite_sequence VALUES('comments',5);
INSERT INTO sqlite_sequence VALUES('ratings',5);
CREATE UNIQUE INDEX "index_users_on_email" ON "users" ("email");
CREATE UNIQUE INDEX "index_users_on_reset_password_token" ON "users" ("reset_password_token");
CREATE UNIQUE INDEX "index_active_storage_blobs_on_key" ON "active_storage_blobs" ("key");
CREATE INDEX "index_active_storage_attachments_on_blob_id" ON "active_storage_attachments" ("blob_id");
CREATE UNIQUE INDEX "index_active_storage_attachments_uniqueness" ON "active_storage_attachments" ("record_type", "record_id", "name", "blob_id");
CREATE UNIQUE INDEX "index_active_storage_variant_records_uniqueness" ON "active_storage_variant_records" ("blob_id", "variation_digest");
CREATE INDEX "index_comments_on_product_id" ON "comments" ("product_id");
CREATE INDEX "index_comments_on_user_id" ON "comments" ("user_id");
CREATE INDEX "index_ratings_on_product_id" ON "ratings" ("product_id");
CREATE INDEX "index_ratings_on_user_id" ON "ratings" ("user_id");
CREATE INDEX "index_reviews_on_product_id" ON "reviews" ("product_id");
CREATE INDEX "index_reviews_on_user_id" ON "reviews" ("user_id");
COMMIT;
