
CREATE TABLE IF NOT EXISTS users (
  id INT AUTO_INCREMENT NOT NULL,
  login VARCHAR(8) NOT NULL,
  passwd VARCHAR(256) NOT NULL,
  prenon VARCHAR(256) NOT NULL,
  nom VARCHAR(256) NOT NULL,
  date_de_creation DATE NOT NULL,
  groupe ENUM('client', 'admin') NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS admin (
  id INT AUTO_INCREMENT NOT NULL,
  login VARCHAR(8) NOT NULL,
  passwd VARCHAR(256) NOT NULL,
  prenon VARCHAR(256) NOT NULL,
  nom VARCHAR(256) NOT NULL,
  date_de_creation DATE NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS produit (
  id INT AUTO_INCREMENT NOT NULL,
  title VARCHAR(256) NOT NULL,
  spec TEXT NOT NULL,
  price VARCHAR(16) NOT NULL,
  date_de_creation DATE,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS categorie (
  id INT AUTO_INCREMENT NOT NULL,
  all_cat VARCHAR(8) NOT NULL,
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

CREATE TABLE IF NOT EXISTS panier (
  id INT AUTO_INCREMENT NOT NULL,
  id_user INT NOT NULL,
  product VARCHAR(256),
  date_de_creation DATE,
  groupe ENUM('current', 'archive'),
  PRIMARY KEY (id)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

INSERT INTO users (login, passwd, prenon, nom, date_de_creation, groupe)
VALUES ('admin', '6a4e012bd9583858a5a6fa15f58bd86a25af266d3a4344f1ec2018b778f29ba83be86eb45e6dc204e11276f4a99eff4e2144fbe15e756c2c88e999649aae7d94', 'admin', 'admin', STR_TO_DATE('01/01/00', '%d/%m/%y'), 'admin');