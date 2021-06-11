INSERT INTO artist(name)
VALUES('John'),('Mikey'), ('Alberto');

SELECT * FROM artist
LIMIT 5;

SELECT first_name, last_name FROM employee
WHERE city = 'Calgary';

SELECT * FROM employee
WHERE reports_to = 2;

SELECT COUNT(*) FROM employee
WHERE city = 'Lethbridge';

SELECT COUNT(*) FROM invoice
WHERE billing_country = 'USA';

SELECT * FROM invoice
ORDER BY total DESC
LIMIT 1;

SELECT * FROM invoice
ORDER BY total ASC
LIMIT 1;

SELECT * FROM invoice 
  WHERE invoice_id IN(
    SELECT invoice_id FROM invoice_line
      WHERE total > 5);

SELECT * FROM invoice 
  WHERE invoice_id IN(
    SELECT invoice_id FROM invoice_line
      WHERE total < 5);

SELECT SUM(total) FROM invoice;

SELECT * from invoice_line
WHERE unit_price > 1;

SELECT * from invoice_line il
JOIN invoice i ON i.invoice_id = il.invoice_id
WHERE unit_price > 1;

SELECT i.invoice_date, c.first_name, c.last_name, total
FROM customer c
JOIN invoice i ON c.customer_id = i.customer_id;

SELECT c.first_name customer_fname, c.last_name customer_lname, e.first_name suprep_fname, e.last_name suprep_lname
FROM customer c
JOIN employee e ON c.support_rep_id = e.employee_id;

SELECT title "album title", name "artist name"
FROM album al
JOIN artist ar ON al.artist_id = ar.artist_id;

-- EXTRA CREDIT --

SELECT * FROM artist
ORDER by name DESC
LIMIT 10;

SELECT * FROM artist
WHERE NAME ILIKE 'black%';

SELECT * FROM artist
WHERE NAME ILIKE '%black%';

SELECT * FROM employee
ORDER BY birth_date DESC
LIMIT 1;  

SELECT * FROM employee
ORDER BY birth_date ASC
LIMIT 1; 

SELECT COUNT(*) FROM invoice
WHERE billing_state IN('CA', 'TX', 'AZ');

SELECT AVG(total) FROM invoice;

SELECT track_id FROM playlist p
JOIN playlist_track pt ON p.playlist_id = pt.playlist_id;

SELECT t.name FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON p.playlist_id = pt.playlist_id
WHERE p.playlist_id = 5;

SELECT t.name "track names", p.name "playlist names" 
FROM track t
JOIN playlist_track pt ON t.track_id = pt.track_id
JOIN playlist p ON pt.playlist_id = p.playlist_id;

SELECT t.name "track names", al.title "album title"
FROM track t
JOIN album al ON t.album_id = al.album_id
JOIN genre g ON g.genre_id = t.genre_id
WHERE g.name = 'Alternative & Punk';

