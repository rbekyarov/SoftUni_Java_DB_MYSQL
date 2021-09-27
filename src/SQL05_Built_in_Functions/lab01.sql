use book_library;
SELECT title FROM books
WHERE SUBSTRING(title,1,3)='The'
ORDER BY id;

SELECT id , title , cost , SUBSTRING( title,1,10) As 'Title SubString'
FROM book_library.books
ORDER BY id;