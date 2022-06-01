create table member
(
    id        integer not null
        constraint member_pk
            primary key,
    firstname varchar not null,
    lastname  varchar not null,
    email     varchar
);

alter table member
    owner to spr2022bdb23;

create unique index member_id_uindex
    on member (id);

create unique index member_email_uindex
    on member (email);

grant delete, insert, references, select, trigger, truncate, update on member to spr2022bdb6;

grant delete, insert, references, select, trigger, truncate, update on member to spr2022bdb24;

INSERT INTO groupproject.member (id, firstname, lastname, email) VALUES (52339868, 'Nayeli', 'Naranjo', 'nnayeli@pdx.edu');
INSERT INTO groupproject.member (id, firstname, lastname, email) VALUES (51186104, 'Owen', 'Peterson', 'ocp2@pdx.edu');
INSERT INTO groupproject.member (id, firstname, lastname, email) VALUES (27309042, 'Angela', 'Hamilton', 'ahamilt@pdx.edu');
INSERT INTO groupproject.member (id, firstname, lastname, email) VALUES (33389762, 'Madi', 'Alexander', 'xmadi@pdx.edu');
INSERT INTO groupproject.member (id, firstname, lastname, email) VALUES (51601299, 'Genevieve', 'Hunsaker', 'gbh2@pdx.edu');
INSERT INTO groupproject.member (id, firstname, lastname, email) VALUES (50099840, 'Della', 'Langdon', 'del23@pdx.edu');
INSERT INTO groupproject.member (id, firstname, lastname, email) VALUES (50099784, 'Rachel', 'Bard', 'rbard@pdx.edu');
