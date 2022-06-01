create table event_perks
(
    id   integer not null
        constraint event_perks_events_id_fk
            references event,
    name varchar not null
);

alter table event_perks
    owner to spr2022bdb23;

grant delete, insert, references, select, trigger, truncate, update on event_perks to spr2022bdb6;

grant delete, insert, references, select, trigger, truncate, update on event_perks to spr2022bdb24;

INSERT INTO groupproject.event_perks (id, name) VALUES (8101376, 'Free Food');
