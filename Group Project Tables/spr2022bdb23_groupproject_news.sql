create table news
(
    id           integer not null
        constraint news_pk
            primary key,
    title        varchar not null,
    summary      varchar not null,
    author       integer not null
        constraint news_member_id_fk
            references member,
    date         date    not null,
    organization integer
        constraint news_organization_id_fk
            references organization,
    imageurl     varchar
);

alter table news
    owner to spr2022bdb23;

create unique index news_id_uindex
    on news (id);

grant delete, insert, references, select, trigger, truncate, update on news to spr2022bdb6;

grant delete, insert, references, select, trigger, truncate, update on news to spr2022bdb24;

INSERT INTO groupproject.news (id, title, summary, author, date, organization, imageurl) VALUES (247539, 'Theater & Popcorn rentals returning for PSU affiliated groups in Spring term 2022', '5th Avenue Cinema is now accepting rental reservations for PSU affiliated groups who wish to rent our second theater or popcorn services for their own event outside of the cinema. Both forms are open for spring 2022 reservations on our connect page!', 51186104, '2022-02-05', 250709, 'https://se-images-blob.campuslabs.com/news/3777/6619777e-dbf2-4d6c-3acc-08d9cf5ca7b6/original.png');
