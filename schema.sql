CREATE TABLE Item (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY
);

CREATE TABLE MusicAlbum (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  item_id INTEGER,
  on_spotify BOOLEAN,
  publish_date DATE,
  FOREIGN KEY(item_id) REFERENCES Item(id)
);

CREATE TABLE Genre (
  id INTEGER GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  name VARCHAR(150),
  item_id INTEGER,
  FOREIGN KEY(item_id) REFERENCES Item(id)
);
CREATE INDEX index_music_album_item_id ON MusicAlbum(item_id);
CREATE INDEX index_genre_item_id ON Genre(item_id);


CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  item_id INTEGER,
  publisher VARCHAR(255),
  publish_date DATE,
  cover_state VARCHAR(255),
  archived BOOLEAN,
  FOREIGN KEY (item_id) REFERENCES items(id)
);

CREATE INDEX idx_books_item_id ON books(item_id);

CREATE TABLE labels (
  id SERIAL PRIMARY KEY,
  item_id INTEGER,
  title VARCHAR(255),
  color VARCHAR(100),
  FOREIGN KEY (item_id) REFERENCES items(id)
);

CREATE INDEX idx_labels_item_id ON labels(item_id);