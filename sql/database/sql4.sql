	/* SELECT t1.x, t2.y, ....
	FROM TABLO1 t1
	FULL JOIN TABLO2 t2
	ON t1.FK = t2.PK;  */
	/* araclar.db adındaki veritabanını kullanarak Markalar ve Siparisler tablolarındaki 
 marka_id'si ayni olan kayıtların marka_id, marka_adi, siparis_adedi ve siparis_tarihi   
 bilgilerini  listeleyen bir sorgu yaziniz.*/
 
	 SELECT * FROM markalar;
	 SELECT * FROM siparisler;
	 
	 SELECT m.marka_id,m.marka_adi, s.siparis_adedi, s.siparis_tarihi
	 FROM markalar m
	 JOIN siparisler s
	 ON m.marka_id = s.marka_id;
 
 /* ÖDEV: Chinook veritabanındaki tracks tablosunda bulunan her bir şarkının türü (genre)
listeleyiniz.*/

select t.name as song_name, g.name as genre_name
from tracks t
left join genres g
on t.genreid = g.genreid;

	 
 /* ÖDEV: invoice tablosundaki faturaların her birinin müşteri adını (FirstName),
 soyadını (lastName), fatura tarihi (InvoiceDate) ve fatura meblağını (total) 
 listeleyen sorguyu yazınız */
 select * from invoices;
 select * from customers;
 
select c.FirstName, c.LastName, i.InvoiceDate, i.total
from invoices i
left join customers c
on i.CustomerId = c.customerid;
	
	/* ÖDEV: artists tablosunda bulunan her bir kişinin albums tablosunda 
bulunan tüm albümlerinin listeleyen sorguyu yazınız. 
Sorguda ArtistId, Name, Title ve AlbumId olmalıdır */

 
select a.Title, a.ArtistId, a2.name, a.AlbumId
from artists a2
inner join albums a
on a.ArtistId = a2.ArtistId;
 
 /*===================================================
 SUBQUERIES
====================================================*/

	/* albums tablosundaki Title sutunu 'Faceless' olan kaydın albumid'si elde ederek 
	tracks tablosunda bu değere eşit olan kayıtların bilgilerini SUBQUERY yazarak listeyiniz.
	Listelemede trackid, name ve albumid bilgilerini bulunmalıdır. */
 select TrackId,name,AlbumId 
 from tracks
 WHERE AlbumId = (
				select AlbumId
				from albums
				where Title="Faceless");
				
/* albums tablosundaki Title sutunu 'Faceless' olan kaydın albumid'si elde ederek 
	tracks tablosunda bu değere eşit olan kayıtların bilgilerini JOIN kullanarak listeyiniz.
	Listelemede trackid, name ve albumid bilgileri bulunmalıdır. */
	
	SELECT t.TrackId, t.name, t.AlbumId
	from tracks t
	join albums a
	on t.AlbumId=a.AlbumId
	WHERE a.Title="Faceless";
	
	
select TrackId,name,AlbumId 
from tracks
WHERE AlbumId in (
				select AlbumId
				from albums
				where Title = "Faceless" or Title = "Let There Be Rock");
	
	
	
	
	
	
	
	
	
	
	
	