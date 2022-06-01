create table building_features
(
    id      integer not null
        constraint building_features_building_id_fk
            references building,
    feature varchar not null,
    link    varchar
);

alter table building_features
    owner to spr2022bdb23;

INSERT INTO groupproject.building_features (id, feature, link) VALUES (1, 'All Gender Restrooms', 'https://www.pdx.edu/queer-resource-center/resources');
INSERT INTO groupproject.building_features (id, feature, link) VALUES (1, 'Lactation Space', 'https://www.pdx.edu/students-with-children/lactation-spaces');
INSERT INTO groupproject.building_features (id, feature, link) VALUES (1, 'Retail', null);
INSERT INTO groupproject.building_features (id, feature, link) VALUES (1, 'Food & Drink', null);
INSERT INTO groupproject.building_features (id, feature, link) VALUES (1, 'Roof Terrace', null);
INSERT INTO groupproject.building_features (id, feature, link) VALUES (1, 'Student Lounge', null);
INSERT INTO groupproject.building_features (id, feature, link) VALUES (1, 'Computer Lab', 'https://portlandstate.atlassian.net/servicedesk/customer/portal/2/article/44703624');
INSERT INTO groupproject.building_features (id, feature, link) VALUES (2, 'All Gender Restrooms', 'https://www.pdx.edu/queer-resource-center/resources');
INSERT INTO groupproject.building_features (id, feature, link) VALUES (2, 'Car Parking', 'https://www.pdx.edu/transportation');
INSERT INTO groupproject.building_features (id, feature, link) VALUES (2, 'Motorcycle & Scooter Parking', 'https://www.pdx.edu/transportation');
