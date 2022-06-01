create table organization_contact
(
    id       integer not null
        constraint organization_contact_organization_id_fk
            references organization,
    location integer
        constraint organization_contact_location_id_fk
            references building,
    email    varchar,
    link     varchar
);

alter table organization_contact
    owner to spr2022bdb23;

grant delete, insert, references, select, trigger, truncate, update on organization_contact to spr2022bdb6;

grant delete, insert, references, select, trigger, truncate, update on organization_contact to spr2022bdb24;

INSERT INTO groupproject.organization_contact (id, location, email, link) VALUES (250709, null, 'film@pdx.edu', 'https://pdx.campuslabs.com/engage/organization/5th-avenue-cinema/contact');
INSERT INTO groupproject.organization_contact (id, location, email, link) VALUES (326699, 2, 'absoluteacappellapdx@gmail.com', 'https://pdx.campuslabs.com/engage/organization/absolute/contact');
