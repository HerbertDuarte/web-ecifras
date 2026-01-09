-- eCifras Database Dump for PostgreSQL
-- Data: 9 de janeiro de 2026
--
-- Este arquivo contém as DDLs e DMLs para criar e popular o banco de dados

-- ===========================================
-- DDL - Data Definition Language
-- ===========================================

-- Remover tabelas existentes (se existirem)
DROP TABLE IF EXISTS verse_chords CASCADE;
DROP TABLE IF EXISTS verses CASCADE;
DROP TABLE IF EXISTS songs CASCADE;
DROP TABLE IF EXISTS playlists CASCADE;

-- Criar tabela de playlists
CREATE TABLE playlists (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    description TEXT
);

-- Criar tabela de songs (músicas)
CREATE TABLE songs (
    id VARCHAR(50) PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    tone VARCHAR(10) NOT NULL,
    playlist_id VARCHAR(50) NOT NULL,
    CONSTRAINT fk_playlist FOREIGN KEY (playlist_id)
        REFERENCES playlists(id) ON DELETE CASCADE
);

-- Criar tabela de verses (versos/estrofes)
CREATE TABLE verses (
    id VARCHAR(50) PRIMARY KEY,
    verse TEXT NOT NULL,
    song_id VARCHAR(50) NOT NULL,
    position INTEGER NOT NULL,
    CONSTRAINT fk_song FOREIGN KEY (song_id)
        REFERENCES songs(id) ON DELETE CASCADE
);

-- Criar tabela de acordes dos versos
CREATE TABLE verse_chords (
    id SERIAL PRIMARY KEY,
    verse_id VARCHAR(50) NOT NULL,
    chord VARCHAR(50) NOT NULL,
    position INTEGER NOT NULL,
    CONSTRAINT fk_verse FOREIGN KEY (verse_id)
        REFERENCES verses(id) ON DELETE CASCADE
);

-- Criar índices para melhorar performance
CREATE INDEX idx_songs_playlist ON songs(playlist_id);
CREATE INDEX idx_verses_song ON verses(song_id);
CREATE INDEX idx_verse_chords_verse ON verse_chords(verse_id);

-- ===========================================
-- DML - Data Manipulation Language
-- ===========================================

-- Inserir playlist
INSERT INTO playlists (id, name, description) VALUES
('clx1a2b3c4d5e6f7g8h9i0j1k', 'Louvor de domingo - IBE', 'Músicas de adoração e louvor');

-- Inserir músicas
INSERT INTO songs (id, name, tone, playlist_id) VALUES
('clx1a2b3c4d5e6f7g8h9i0j2a', 'Boa parte', 'E', 'clx1a2b3c4d5e6f7g8h9i0j1k'),
('clx1a2b3c4d5e6f7g8h9i0j2b', 'Vitória No Deserto', 'G', 'clx1a2b3c4d5e6f7g8h9i0j1k'),
('clx1a2b3c4d5e6f7g8h9i0j2c', 'Toda Sorte de Bênçãos', '?', 'clx1a2b3c4d5e6f7g8h9i0j1k'),
('clx1a2b3c4d5e6f7g8h9i0j2d', 'Ouço Deus Me Chamar', 'F', 'clx1a2b3c4d5e6f7g8h9i0j1k'),
('clx1a2b3c4d5e6f7g8h9i0j2e', 'Alfa e Omega', 'E', 'clx1a2b3c4d5e6f7g8h9i0j1k'),
('clx1a2b3c4d5e6f7g8h9i0j2f', 'Gratidão', 'E', 'clx1a2b3c4d5e6f7g8h9i0j1k');

-- Inserir versos e acordes da música "Boa parte"
INSERT INTO verses (id, verse, song_id, position) VALUES
('clx1a2b3c4d5e6f7g8h9i0j3a', 'Precioso Jesus', 'clx1a2b3c4d5e6f7g8h9i0j2a', 1),
('clx1a2b3c4d5e6f7g8h9i0j3b', 'Tuas palavras são mais desejáveis', 'clx1a2b3c4d5e6f7g8h9i0j2a', 2),
('clx1a2b3c4d5e6f7g8h9i0j3c', 'Que o mais doce mel', 'clx1a2b3c4d5e6f7g8h9i0j2a', 3),
('clx1a2b3c4d5e6f7g8h9i0j3d', 'Tudo que tenho, Eu derramo aos Teus pés', 'clx1a2b3c4d5e6f7g8h9i0j2a', 4),
('clx1a2b3c4d5e6f7g8h9i0j3e', 'Eu econtrei o meu tesouro (1 Parte)', 'clx1a2b3c4d5e6f7g8h9i0j2a', 5),
('clx1a2b3c4d5e6f7g8h9i0j3f', 'Eu econtrei o meu tesouro (2 Parte)', 'clx1a2b3c4d5e6f7g8h9i0j2a', 6),
('clx1a2b3c4d5e6f7g8h9i0j3g', 'Como Maria, que estava aos seus pés', 'clx1a2b3c4d5e6f7g8h9i0j2a', 7);

INSERT INTO verse_chords (verse_id, chord, position) VALUES
('clx1a2b3c4d5e6f7g8h9i0j3a', 'E', 1),
('clx1a2b3c4d5e6f7g8h9i0j3b', 'E', 1),
('clx1a2b3c4d5e6f7g8h9i0j3b', 'A', 2),
('clx1a2b3c4d5e6f7g8h9i0j3b', 'B', 3),
('clx1a2b3c4d5e6f7g8h9i0j3c', 'C#m', 1),
('clx1a2b3c4d5e6f7g8h9i0j3c', 'A', 2),
('clx1a2b3c4d5e6f7g8h9i0j3c', 'E', 3),
('clx1a2b3c4d5e6f7g8h9i0j3d', 'E', 1),
('clx1a2b3c4d5e6f7g8h9i0j3d', 'A', 2),
('clx1a2b3c4d5e6f7g8h9i0j3d', 'E', 3),
('clx1a2b3c4d5e6f7g8h9i0j3d', 'C#m', 4),
('clx1a2b3c4d5e6f7g8h9i0j3d', 'A', 5),
('clx1a2b3c4d5e6f7g8h9i0j3d', 'E', 6),
('clx1a2b3c4d5e6f7g8h9i0j3d', '(2x)', 7),
('clx1a2b3c4d5e6f7g8h9i0j3e', 'E', 1),
('clx1a2b3c4d5e6f7g8h9i0j3e', 'E4', 2),
('clx1a2b3c4d5e6f7g8h9i0j3e', '(A', 3),
('clx1a2b3c4d5e6f7g8h9i0j3e', 'B)', 4),
('clx1a2b3c4d5e6f7g8h9i0j3e', 'E', 5),
('clx1a2b3c4d5e6f7g8h9i0j3f', 'C#m', 1),
('clx1a2b3c4d5e6f7g8h9i0j3f', 'F#m', 2),
('clx1a2b3c4d5e6f7g8h9i0j3f', 'E', 3),
('clx1a2b3c4d5e6f7g8h9i0j3f', 'A', 4),
('clx1a2b3c4d5e6f7g8h9i0j3f', 'B', 5),
('clx1a2b3c4d5e6f7g8h9i0j3g', 'B', 1),
('clx1a2b3c4d5e6f7g8h9i0j3g', 'A', 2);

-- Inserir versos e acordes da música "Vitória No Deserto"
INSERT INTO verses (id, verse, song_id, position) VALUES
('clx1a2b3c4d5e6f7g8h9i0j4a', 'Sequência única', 'clx1a2b3c4d5e6f7g8h9i0j2b', 1);

INSERT INTO verse_chords (verse_id, chord, position) VALUES
('clx1a2b3c4d5e6f7g8h9i0j4a', 'G', 1),
('clx1a2b3c4d5e6f7g8h9i0j4a', 'D', 2),
('clx1a2b3c4d5e6f7g8h9i0j4a', 'Em', 3),
('clx1a2b3c4d5e6f7g8h9i0j4a', 'C', 4);

-- Inserir versos e acordes da música "Toda Sorte de Bênçãos"
INSERT INTO verses (id, verse, song_id, position) VALUES
('clx1a2b3c4d5e6f7g8h9i0j5a', 'Por onde eu for a tua  benção me seguirá', 'clx1a2b3c4d5e6f7g8h9i0j2c', 1),
('clx1a2b3c4d5e6f7g8h9i0j5b', 'Pros_perarei, transbordarei', 'clx1a2b3c4d5e6f7g8h9i0j2c', 2),
('clx1a2b3c4d5e6f7g8h9i0j5c', 'Para direita , para esquerda', 'clx1a2b3c4d5e6f7g8h9i0j2c', 3),
('clx1a2b3c4d5e6f7g8h9i0j5d', 'Por todo lado, ôôôô, sou abençoado', 'clx1a2b3c4d5e6f7g8h9i0j2c', 4);

INSERT INTO verse_chords (verse_id, chord, position) VALUES
('clx1a2b3c4d5e6f7g8h9i0j5a', '1', 1),
('clx1a2b3c4d5e6f7g8h9i0j5a', '5', 2),
('clx1a2b3c4d5e6f7g8h9i0j5a', '4', 3),
('clx1a2b3c4d5e6f7g8h9i0j5b', '2m', 1),
('clx1a2b3c4d5e6f7g8h9i0j5b', '6m', 2),
('clx1a2b3c4d5e6f7g8h9i0j5b', '5', 3),
('clx1a2b3c4d5e6f7g8h9i0j5b', '(2x)', 4),
('clx1a2b3c4d5e6f7g8h9i0j5c', '1', 1),
('clx1a2b3c4d5e6f7g8h9i0j5c', '5', 2),
('clx1a2b3c4d5e6f7g8h9i0j5c', '6m', 3),
('clx1a2b3c4d5e6f7g8h9i0j5c', '4', 4),
('clx1a2b3c4d5e6f7g8h9i0j5d', '1', 1),
('clx1a2b3c4d5e6f7g8h9i0j5d', '5', 2),
('clx1a2b3c4d5e6f7g8h9i0j5d', '6m', 3),
('clx1a2b3c4d5e6f7g8h9i0j5d', '4', 4);

-- Inserir versos e acordes da música "Ouço Deus Me Chamar"
INSERT INTO verses (id, verse, song_id, position) VALUES
('clx1a2b3c4d5e6f7g8h9i0j6a', 'Alta madrugada vai Já estou deitado', 'clx1a2b3c4d5e6f7g8h9i0j2d', 1),
('clx1a2b3c4d5e6f7g8h9i0j6b', 'Meu coração se aperta Eu ando tão cansado', 'clx1a2b3c4d5e6f7g8h9i0j2d', 2),
('clx1a2b3c4d5e6f7g8h9i0j6c', 'Eu vou Já tô indo ao Teu encontro, Senhor', 'clx1a2b3c4d5e6f7g8h9i0j2d', 3),
('clx1a2b3c4d5e6f7g8h9i0j6d', 'Preparação para repetir', 'clx1a2b3c4d5e6f7g8h9i0j2d', 4),
('clx1a2b3c4d5e6f7g8h9i0j6e', 'Nem que seja pra ficarmos', 'clx1a2b3c4d5e6f7g8h9i0j2d', 5),
('clx1a2b3c4d5e6f7g8h9i0j6f', 'Não há como desprezar o Teu chamado', 'clx1a2b3c4d5e6f7g8h9i0j2d', 6);

INSERT INTO verse_chords (verse_id, chord, position) VALUES
('clx1a2b3c4d5e6f7g8h9i0j6a', 'F', 1),
('clx1a2b3c4d5e6f7g8h9i0j6a', 'Bb', 2),
('clx1a2b3c4d5e6f7g8h9i0j6b', 'Dm', 1),
('clx1a2b3c4d5e6f7g8h9i0j6b', 'C/E', 2),
('clx1a2b3c4d5e6f7g8h9i0j6b', 'Bb', 3),
('clx1a2b3c4d5e6f7g8h9i0j6b', '(Preparaçao Gm)', 4),
('clx1a2b3c4d5e6f7g8h9i0j6c', 'F', 1),
('clx1a2b3c4d5e6f7g8h9i0j6c', 'C', 2),
('clx1a2b3c4d5e6f7g8h9i0j6c', 'Gm7(9)', 3),
('clx1a2b3c4d5e6f7g8h9i0j6c', 'Bb', 4),
('clx1a2b3c4d5e6f7g8h9i0j6d', 'Dm7', 1),
('clx1a2b3c4d5e6f7g8h9i0j6d', 'C', 2),
('clx1a2b3c4d5e6f7g8h9i0j6d', 'Gm7', 3),
('clx1a2b3c4d5e6f7g8h9i0j6d', 'D#9', 4),
('clx1a2b3c4d5e6f7g8h9i0j6e', 'Dm7', 1),
('clx1a2b3c4d5e6f7g8h9i0j6e', 'Bb', 2),
('clx1a2b3c4d5e6f7g8h9i0j6e', 'Dm7', 3),
('clx1a2b3c4d5e6f7g8h9i0j6e', 'F', 4),
('clx1a2b3c4d5e6f7g8h9i0j6e', 'C', 5),
('clx1a2b3c4d5e6f7g8h9i0j6f', 'Gm7', 1),
('clx1a2b3c4d5e6f7g8h9i0j6f', 'F', 2),
('clx1a2b3c4d5e6f7g8h9i0j6f', '(2x)', 3),
('clx1a2b3c4d5e6f7g8h9i0j6f', '(Preparaçao C)', 4);

-- Inserir versos e acordes da música "Alfa e Omega"
INSERT INTO verses (id, verse, song_id, position) VALUES
('clx1a2b3c4d5e6f7g8h9i0j7a', 'Não há outro como Tu', 'clx1a2b3c4d5e6f7g8h9i0j2e', 1),
('clx1a2b3c4d5e6f7g8h9i0j7b', 'Reina sobre a terra e céus', 'clx1a2b3c4d5e6f7g8h9i0j2e', 2),
('clx1a2b3c4d5e6f7g8h9i0j7c', 'Tu és o Alfa e Ômega', 'clx1a2b3c4d5e6f7g8h9i0j2e', 3),
('clx1a2b3c4d5e6f7g8h9i0j7d', 'Tu és o Alfa e Ômega (2 PARTE)', 'clx1a2b3c4d5e6f7g8h9i0j2e', 4),
('clx1a2b3c4d5e6f7g8h9i0j7e', 'SOLO', 'clx1a2b3c4d5e6f7g8h9i0j2e', 5);

INSERT INTO verse_chords (verse_id, chord, position) VALUES
('clx1a2b3c4d5e6f7g8h9i0j7a', 'A', 1),
('clx1a2b3c4d5e6f7g8h9i0j7a', 'E/G#', 2),
('clx1a2b3c4d5e6f7g8h9i0j7b', 'A', 1),
('clx1a2b3c4d5e6f7g8h9i0j7b', 'B', 2),
('clx1a2b3c4d5e6f7g8h9i0j7c', 'E', 1),
('clx1a2b3c4d5e6f7g8h9i0j7c', 'B', 2),
('clx1a2b3c4d5e6f7g8h9i0j7c', 'A', 3),
('clx1a2b3c4d5e6f7g8h9i0j7c', 'F#m', 4),
('clx1a2b3c4d5e6f7g8h9i0j7c', 'B', 5),
('clx1a2b3c4d5e6f7g8h9i0j7d', 'C#m', 1),
('clx1a2b3c4d5e6f7g8h9i0j7d', 'B', 2),
('clx1a2b3c4d5e6f7g8h9i0j7d', 'E', 3),
('clx1a2b3c4d5e6f7g8h9i0j7d', 'E/G#', 4),
('clx1a2b3c4d5e6f7g8h9i0j7d', 'A', 5),
('clx1a2b3c4d5e6f7g8h9i0j7d', 'F#m', 6),
('clx1a2b3c4d5e6f7g8h9i0j7d', 'B', 7),
('clx1a2b3c4d5e6f7g8h9i0j7e', 'A', 1),
('clx1a2b3c4d5e6f7g8h9i0j7e', 'B', 2),
('clx1a2b3c4d5e6f7g8h9i0j7e', 'C#m', 3),
('clx1a2b3c4d5e6f7g8h9i0j7e', 'F#m#', 4),
('clx1a2b3c4d5e6f7g8h9i0j7e', 'E', 5),
('clx1a2b3c4d5e6f7g8h9i0j7e', 'C#m', 6),
('clx1a2b3c4d5e6f7g8h9i0j7e', 'B', 7),
('clx1a2b3c4d5e6f7g8h9i0j7e', '(2x)', 8);

-- Inserir versos e acordes da música "Gratidão"
INSERT INTO verses (id, verse, song_id, position) VALUES
('clx1a2b3c4d5e6f7g8h9i0j8a', 'Nada novo achei', 'clx1a2b3c4d5e6f7g8h9i0j2f', 1),
('clx1a2b3c4d5e6f7g8h9i0j8b', 'Então vou derramar', 'clx1a2b3c4d5e6f7g8h9i0j2f', 2),
('clx1a2b3c4d5e6f7g8h9i0j8c', 'Ei, meu coração não se envergonhe', 'clx1a2b3c4d5e6f7g8h9i0j2f', 3);

INSERT INTO verse_chords (verse_id, chord, position) VALUES
('clx1a2b3c4d5e6f7g8h9i0j8a', 'E', 1),
('clx1a2b3c4d5e6f7g8h9i0j8a', 'C#m', 2),
('clx1a2b3c4d5e6f7g8h9i0j8a', 'B', 3),
('clx1a2b3c4d5e6f7g8h9i0j8a', 'A', 4),
('clx1a2b3c4d5e6f7g8h9i0j8b', 'E', 1),
('clx1a2b3c4d5e6f7g8h9i0j8b', 'B', 2),
('clx1a2b3c4d5e6f7g8h9i0j8b', 'A', 3),
('clx1a2b3c4d5e6f7g8h9i0j8b', 'C#m', 4),
('clx1a2b3c4d5e6f7g8h9i0j8b', 'B', 5),
('clx1a2b3c4d5e6f7g8h9i0j8c', 'E', 1),
('clx1a2b3c4d5e6f7g8h9i0j8c', 'B', 2),
('clx1a2b3c4d5e6f7g8h9i0j8c', 'A', 3),
('clx1a2b3c4d5e6f7g8h9i0j8c', '(C#m', 4),
('clx1a2b3c4d5e6f7g8h9i0j8c', 'B)', 5);

-- ===========================================
-- Queries úteis
-- ===========================================

-- Consultar todas as playlists com contagem de músicas
-- SELECT p.id, p.name, p.description, COUNT(s.id) as total_songs
-- FROM playlists p
-- LEFT JOIN songs s ON p.id = s.playlist_id
-- GROUP BY p.id, p.name, p.description;

-- Consultar músicas de uma playlist específica
-- SELECT s.id, s.name, s.tone
-- FROM songs s
-- WHERE s.playlist_id = 'clx1a2b3c4d5e6f7g8h9i0j1k'
-- ORDER BY s.name;

-- Consultar versos e acordes de uma música específica
-- SELECT v.position, v.verse, string_agg(vc.chord, ', ' ORDER BY vc.position) as chords
-- FROM verses v
-- LEFT JOIN verse_chords vc ON v.id = vc.verse_id
-- WHERE v.song_id = 'clx1a2b3c4d5e6f7g8h9i0j2a'
-- GROUP BY v.id, v.position, v.verse
-- ORDER BY v.position;
