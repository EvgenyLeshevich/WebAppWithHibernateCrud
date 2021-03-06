USE registration_user;

DROP TABLE IF EXISTS user;

CREATE TABLE user
(
    user_id SERIAL,
    first_name  varchar(100),
    last_name   varchar(100),
    PRIMARY KEY (user_id),
    country_id BIGINT UNSIGNED NOT NULL,
    FOREIGN KEY (country_id) REFERENCES country(country_id) ON DELETE CASCADE
);