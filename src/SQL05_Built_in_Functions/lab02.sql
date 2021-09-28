SELECT  REPLACE( title, 'The','***')As Title,
RIGHT (Title,6) As Test
FROM book_library.books
WHERE  SUBSTRING(title, 1,3)='The';
