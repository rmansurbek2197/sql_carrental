CREATE TABLE cars (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    model TEXT,
    plate_number TEXT UNIQUE,
    price_per_day REAL,
    status TEXT DEFAULT 'available'
);

CREATE TABLE rentals (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    car_id INTEGER,
    customer_name TEXT,
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    total_price REAL,

    FOREIGN KEY(car_id) REFERENCES cars(id)
);
