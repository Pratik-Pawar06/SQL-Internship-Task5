USE library_lib;
SELECT members.name,books.title,borrow.borrow_date
FROM borrow
INNER JOIN members 
    ON borrow.member_id = members.member_id
INNER JOIN books 
    ON borrow.book_id = books.book_id;
SELECT members.name,borrow.borrow_date
FROM members
LEFT JOIN borrow 
    ON members.member_id = borrow.member_id;
SELECT members.name,borrow.borrow_date
FROM members
RIGHT JOIN borrow 
    ON members.member_id = borrow.member_id;
SELECT members.name,borrow.borrow_date
FROM members
LEFT JOIN borrow 
    ON members.member_id = borrow.member_id

UNION

SELECT members.name,borrow.borrow_date
FROM members
RIGHT JOIN borrow 
    ON members.member_id = borrow.member_id;
SELECT 
    members.name AS Member,
    books.title AS Book,
    authors.author_name AS Author,
    categories.category_name AS Category,
    borrow.borrow_date
FROM borrow
JOIN members ON borrow.member_id = members.member_id
JOIN books ON borrow.book_id = books.book_id
JOIN authors ON books.author_id = authors.author_id
JOIN categories ON books.category_id = categories.category_id;