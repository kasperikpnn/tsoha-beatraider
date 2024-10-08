CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name TEXT UNIQUE,
    artist_name TEXT,
    password TEXT,
    description TEXT DEFAULT 'No description set',
    is_admin BOOLEAN DEFAULT FALSE
);

CREATE TABLE songs (
    id TEXT PRIMARY KEY,
    user_id INT,
    name TEXT,
    genre TEXT,
    duration TEXT,
    description TEXT DEFAULT 'No description set',
    likes INT DEFAULT 0,
    playcount INT DEFAULT 0,
    timestamp TIMESTAMP
);

CREATE TABLE playlists (
    id SERIAL PRIMARY KEY,
    user_id INT,
    name TEXT,
    timestamp TIMESTAMP
);

CREATE TABLE playlist_songs (
    playlist_id INT REFERENCES playlists(id),
    song_id TEXT REFERENCES songs(id),
    PRIMARY KEY (playlist_id, song_id)
);

CREATE TABLE comments (
    id SERIAL PRIMARY KEY,
    user_id TEXT,
    song_id TEXT,
    content TEXT,
    timestamp TIMESTAMP
)

