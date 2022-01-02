
/*Assignment*/
1- 
SELECT AlbumId, count(name) as number_of_tracks
FROM tracks
group by AlbumId
ORDER by name DESC;

2-
SELECT albums.AlbumId, albums.Title as Album_Title, 
tracks.Name as Track_Name 
FROM albums
JOIN tracks
on albums.AlbumId=tracks.AlbumId;

3-
SELECT albums.AlbumId, albums.Title as Album_Title, 
tracks.Name as Track_Name, min(tracks.Milliseconds) 
FROM albums
JOIN tracks
on albums.AlbumId=tracks.AlbumId
GROUP by albums.AlbumId
ORDER by Milliseconds DESC;

4-
SELECT albums.AlbumId, albums.Title as Album_Title, 
sum(tracks.Milliseconds) as Total_duration
FROM albums
JOIN tracks
on albums.AlbumId=tracks.AlbumId
GROUP by albums.AlbumId
ORDER by Total_duration DESC;

5-
SELECT albums.Title as Album_Title, 
sum(tracks.Milliseconds) as Total_duration
FROM albums
JOIN tracks
on albums.AlbumId=tracks.AlbumId
GROUP by albums.AlbumId
HAVING Total_duration>15120000;