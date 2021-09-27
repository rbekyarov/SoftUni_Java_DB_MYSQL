SELECT  REPLACE( title, 'The','***')As Title
FROM book_library.books
WHERE  SUBSTRING(title, 1,3)='The';
