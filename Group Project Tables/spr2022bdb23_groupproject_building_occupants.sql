create table building_occupants
(
    id       integer not null
        constraint building_occupants_location_id_fk
            references building,
    occupant varchar not null,
    link     varchar
);

alter table building_occupants
    owner to spr2022bdb23;

INSERT INTO groupproject.building_occupants (id, occupant, link) VALUES (1, 'Bike Hub', 'https://www.pdx.edu/bikehub');
INSERT INTO groupproject.building_occupants (id, occupant, link) VALUES (1, 'Outdoor Program', 'https://www.pdx.edu/recreation/outdoor-program');
INSERT INTO groupproject.building_occupants (id, occupant, link) VALUES (1, 'Campus Recreation', 'https://www.pdx.edu/recreation');
INSERT INTO groupproject.building_occupants (id, occupant, link) VALUES (1, 'Applied Health and Fitness', 'https://ohsu-psu-sph.org/ugrad-applied-health-fitness/');
INSERT INTO groupproject.building_occupants (id, occupant, link) VALUES (1, 'School of Social Work', 'https://www.pdx.edu/social-work');
INSERT INTO groupproject.building_occupants (id, occupant, link) VALUES (1, 'Transportation and Parking Services', 'https://www.pdx.edu/transportation');
INSERT INTO groupproject.building_occupants (id, occupant, link) VALUES (1, 'Admissions and New Student Programs', 'https://www.pdx.edu/admissions');
INSERT INTO groupproject.building_occupants (id, occupant, link) VALUES (1, 'City of Portland Archives & Records Center', 'https://www.portlandoregon.gov/archives/');
INSERT INTO groupproject.building_occupants (id, occupant, link) VALUES (2, 'School of Art and Design', 'https://www.pdx.edu/art-design');
