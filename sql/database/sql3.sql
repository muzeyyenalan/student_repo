/*  3.ders  */
/*===================================================
	AGGREGATE FUNCTION COUNT,SUM,MIN,MAX, AVG)
====================================================*/
	
	-- COUNT
	-------------------------------------------------------------------------------------------------	
	/* invoices tablosunda kaç adet fatura bulunduğunu döndüren sorgu*/
	
	SELECT count(*)
	FROM invoices;
	
	SELECT count(InvoiceId) as num_of_invoice
	FROM invoices;
	
	SELECT count(DISTINCT composer)
	from tracks;
	
	/* invoices tablosunda kaç adet farklı yıl olduğunu hesaplayan sorguyu yazınız*/ 
	
	SELECT count (InvoiceDate)
	from invoices
	WHERE InvoiceDate like "20__%";
	
	SELECT name as Song_name, min(Milliseconds) as Duration
	FROM tracks;
	
	SELECT max(Grade), min(Grade)
	from students;
	
	SELECT sum(Total) as 
	FROM invoices;
	
	SELECT round(avg(total),2) 
	FROM invoices;
	
	SELECT round(avg(Milliseconds))
	FROM tracks;
	SELECT name, Milliseconds
	FROM tracks
	WHERE Milliseconds>393599.0;
	
	SELECT name, Milliseconds
	from tracks
	where Milliseconds>(SELECT avg(Milliseconds)
						FROM tracks)
						
	SELECT Composer, count(name) as şarkı_sayısı
	FROM tracks
	WHERE Composer is NOT NULL
	GROUP by Composer;
	
	
	SELECT country, count(Firstname) as nu_of_cust
	FROM customers
	group by country
	order by nu_of_cust DESC;
	
	SELECT BillingCountry, round(avg(total),2) as ort_fatura
	from invoices
	where InvoiceDate between "2009-01-01" and "2011-12-31"
	group by BillingCountry;
	
	
	
/*===================================================
        JOINS
====================================================*/
    
--     Join islemleri farkli tablolardan secilen sutunlar ile yeni bir tablo 
--     olusturmak icin kullanilabilir.
--     
--     JOIN islemleri Iliskisel Veritabanlari icin cok onemli bir ozelliktir. Çunku
--    	Foreign Key'ler ile iliskili olan tablolardan istenilen sutunlari cekmek 
--     icin JOIN islemleri kullanilabilir.

--     Standart SQL'de en çok kullanılan Join islemleri:
--   	1) FULL JOIN:  Tablodaki tum sonuclari gosterir
--     2) INNER JOIN:  Tablolardaki ortak olan sonuc kumesini gosterir
--     3) LEFT JOIN:  Ilk tabloda (Sol) olup digerinde olmayan sonuclari gosterir
--     4) RIGHT JOIN: Sadece Ikinci tabloda olan tum sonuclari gosterir.

--		NOT: SQLite Sadece INNER, LEFT VE CROSS JOIN İşlemlerini desteklemektedir.
 
 /*===================================================*/   

  /* araclar.db adındaki veritabanını kullanarak Markalar ve Siparisler tablolarındaki 
 marka_id'si ayni olan kayıtların marka_id, marka_adi, siparis_adedi ve siparis_tarihi   
 bilgilerini  listeleyen bir sorgu yaziniz.*/
 
 select * FROM markalar;
 
 SELECT markalar.marka_id, markalar.marka_adi, 
 siparisler.siparis_adedi, siparisler.siparis_tarihi
 FROM markalar
 LEFT JOIN siparisler
 on markalar.marka_id = siparisler.marka_id;
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 