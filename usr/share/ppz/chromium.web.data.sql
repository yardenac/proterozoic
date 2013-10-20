PRAGMA foreign_keys=OFF;
BEGIN TRANSACTION;
CREATE TABLE keywords (id INTEGER PRIMARY KEY,short_name VARCHAR NOT NULL,keyword VARCHAR NOT NULL,favicon_url VARCHAR NOT NULL,url VARCHAR NOT NULL,safe_for_autoreplace INTEGER,originating_url VARCHAR,date_created INTEGER DEFAULT 0,usage_count INTEGER DEFAULT 0,input_encodings VARCHAR,show_in_default_list INTEGER,suggest_url VARCHAR,prepopulate_id INTEGER DEFAULT 0,created_by_policy INTEGER DEFAULT 0,instant_url VARCHAR,last_modified INTEGER DEFAULT 0,sync_guid VARCHAR,alternate_urls VARCHAR,search_terms_replacement_key VARCHAR);
INSERT INTO "keywords" VALUES(2,'DuckDuckGo','ddg.gg','','http://3g2upl4pq6kufc4m.onion/?kp=-1&kf=w&kk=-1&k1=-1&ko=s&q={searchTerms}',0,'',0,0,'',1,'',0,0,'',0,'C781522A-BD99-69DF-565B-C681EB6CB572','[]','');
CREATE TABLE meta(key LONGVARCHAR NOT NULL UNIQUE PRIMARY KEY, value LONGVARCHAR);
INSERT INTO "meta" VALUES('Default Search Provider ID','2');
INSERT INTO "meta" VALUES('version','51');
COMMIT;
