DROP USER IF EXISTS 'whatabook_user'@'localhost';

/*Create user*/
CREATE USER 'whatabook_user'@'localhost' IDENTIFIED WITH mysql_native_password BY 'MySQL8IsGreat!';

/*Grant priviledges*/
GRANT ALL priviledges ON whatabook.* TO'whatabook_user'@'localhost';

/*Drop constraints*/
ALTER TABLE wishlist DROP FOREIGN KEY fk_book;
ALTER TABLE wishlist DROP FOREIGN KEY fk_user;

/*Dop Table if they exist*/

DROP TABLE IF EXISTS store;
DROP TABLE IF EXISTS book;
DROP TABLE IF EXISTS wishlist;
DROP TABLE IF EXISTS user;

/*Create the tables*/
CREATE TABLE store (
    store_id    INT             NOT NULL  AUTO_INCREMENT,
    locale      VARCHAR(500)    NOT NULL,
    PRIMARY KEY(store_id)
);

CREATE TABLE book(
    book_id     INT             NOT NULL    AUTO_INCREMENT,
    book_name   VARCHAR(200)    NOT NULL,
    author      VARCHAR(200)    NOT NULL,
    details     VARCHAR(500),
    PRIMARY KEY(book_id)
);

CREATE TABLE user(
    user_id     INT             NOT NULL    AUTO_INCREMENT,
    first_name  VARCHAR(75)     NOT NULL,   
    last_name   VARCHAR(75)     NOT NULL,
    PRIMARY KEY (user_id)
);

CREATE TABLE wishlist (
    wishlist_id     INT     NOT NULL,   AUTO_INCREMENT,
    user_id         INT     NOT NULL,
    book_id         INT     NOT NULL,
    PRIMARY KEY (wishlist_id),
    CONSTRAINT fk_book
    FOREIGN KEY (book_id)
        REFERENCES book(book_id),
    CONSTRAINT fk_user
    FOREIGN KEY (user_id)
        REFERENCES user(user_id)
);


/*Inserting the records*/

INSERT INTO store(locale)
    VALUES('95 Foxhound Court, Benson, NC 27504')

INSERT INTO book(book_name, author)
    VALUES('The Shining', 'Stephen King');

INSERT INTO book(book_name, author)
    VALUES('A Time to Kill', 'John Grisham');

INSERT INTO book(book_name, author)
    VALUES('The Sun Also Rises', 'Ernest Hemingway');

INSERT INTO book(boo_name, author)
    VALUES('The Fault in Our Stars', 'John Green');

INSERT INTO book(book_name, author)
    VALUES('In Cold Blood', 'Truman Capote');

INSERT INTO book(book_name, author)
    VALUES("Harry Potter and the Chamber of Secrets", 'J.K. Rowling');

INSERT INTO book(book_name, author)
    VALUES('Harry Potter and the Sorcerers Stone', 'J.K. Rowling');

INSERT INTO book(book_name, author)
    VALUES('Of Mice and Men', 'John Steinbeck');

INSERT INTO book(book_name, author)
    VALUES('Harry Potter and the Half-Blood Prince', 'J.K. Rowling');
    

