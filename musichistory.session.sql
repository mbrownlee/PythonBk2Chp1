select * from artist;

select Title, ReleaseDate from Song where ArtistId = 6;

select Song.Title as "song title", Album.Title as "album title"
from Song
Join Album
ON Song.AlbumId = Album.AlbumId;

select * from Genre;

insert into Artist (ArtistName, YearEstablished) values ("Bon Jovi", "1981");

insert into Album
(Title, ReleaseDate, AlbumLength, Label, ArtistId, GenreId)
SELECT "Slippery When Wet", "03/04/1984", 2390, "Sony", Artist.ArtistId, Genre.GenreId
from Artist, Genre
where Artist.ArtistName = "Bon Jovi"
and
Genre.Label = "Rock";

select * from Album;

insert into Song
(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
select "Living on a Prayer", 134, "03/04/1984", Genre.GenreId, Artist.ArtistId, Album.AlbumId
FROM Genre, Artist, Album
WHERE Genre.Label = "Rock"
and
Artist.ArtistName LIKE "%Jovi%"
and
Album.Title = "Slippery When Wet";

insert into Song
(Title, SongLength, ReleaseDate, GenreId, ArtistId, AlbumId)
select "You Give Love a Bad Name", 123, "03/04/1984", Genre.GenreId, Artist.ArtistId, Album.AlbumId
FROM Genre, Artist, Album
WHERE Genre.Label = "Rock"
and
Artist.ArtistName LIKE "%Jovi%"
and
Album.Title = "Slippery When Wet";

select * from Song;

select song.title as "song", album.title as "album", ArtistName
from Song
Join Album on song.AlbumId = album.AlbumId
join Artist on song.ArtistId = Artist.ArtistId
where Album.title = "Slippery When Wet";

SELECT COUNT() as 'songs total', album.title
FROM Song
JOIN Album on song.AlbumId = album.AlbumId
GROUP BY song.AlbumId;


select count() as "songs total", Artist.ArtistName
from Song
Join Artist on song.ArtistId = Artist.ArtistId
Group By song.ArtistId;

select count() as "songs total", Genre.Label as "Genre"
from Song
Join Genre on song.GenreId = Genre.GenreId
Group By song.GenreId;

SELECT Album.Title, AlbumId, MAX(AlbumLength)
FROM Album;

select Song.Title as "Song", Album.Title as "Album", MAX(SongLength)
from Song
join Album on song.AlbumId = album.AlbumId;

