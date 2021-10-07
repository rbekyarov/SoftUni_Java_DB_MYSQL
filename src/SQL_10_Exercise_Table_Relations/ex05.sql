CREATE DATABASE onlineStore;
CREATE TABLE onlineStore.item_types (
    item_type_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);
CREATE TABLE onlineStore.cities (
    city_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL
);
CREATE TABLE onlineStore.customers (
    customer_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    birthday DATE,
    city_id INT,

    CONSTRAINT fk_customers_cities
    FOREIGN KEY (city_id)
    REFERENCES cities(city_id)
);
CREATE TABLE onlineStore.orders (
    order_id INT PRIMARY KEY AUTO_INCREMENT,
    customer_id INT,

    CONSTRAINT fk_orders_customers
    FOREIGN KEY (customer_id)
    REFERENCES customers(customer_id)
);
CREATE TABLE onlineStore.items (
    items_id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    items_type_id INT,

    CONSTRAINT fk_items_type_id__item_types
    FOREIGN KEY (items_type_id)
    REFERENCES  item_types(item_type_id)
);

CREATE TABLE onlineStore.order_items (
    order_id INT,
    item_id INT,
    PRIMARY KEY (order_id,item_id),

    CONSTRAINT order_id__item_type_id
    FOREIGN KEY (order_id)
    REFERENCES  items(items_type_id),

    CONSTRAINT order_id__customer_id
    FOREIGN KEY (item_id)
    REFERENCES  orders(customer_id)

);