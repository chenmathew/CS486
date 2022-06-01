create table event
(
    id           integer not null
        constraint events_pk
            primary key,
    title        varchar,
    description  varchar,
    startdate    date,
    enddate      date,
    location     integer
        constraint event_location_id_fk
            references building,
    rsvplink     varchar,
    organization integer
        constraint events_organization_id_fk
            references organization,
    starttime    time,
    endtime      time
);

alter table event
    owner to spr2022bdb23;

create unique index events_id_uindex
    on event (id);

grant delete, insert, references, select, trigger, truncate, update on event to spr2022bdb6;

grant delete, insert, references, select, trigger, truncate, update on event to spr2022bdb24;

INSERT INTO groupproject.event (id, title, description, startdate, enddate, location, rsvplink, organization, starttime, endtime) VALUES (8101376, 'PNP: Spring Fest', 'Enjoy a live concert in the PSU Park Blocks outside of Smith Memorial Student Union. Featuring headliner Haley Heynderickx and bands ePP, Ignoring Olivia, and Chipped Nail Polish!', '2022-05-27', '2022-05-27', null, 'https://pdx.campuslabs.com/engage/account/login?returnUrl=/engage/event/8101376', 250709, '16:00:00', '20:30:00');
