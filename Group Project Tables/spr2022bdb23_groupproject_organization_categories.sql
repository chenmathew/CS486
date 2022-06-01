create table organization_categories
(
    id       integer not null
        constraint organization_categories_organization_id_fk
            references organization,
    category varchar not null
);

alter table organization_categories
    owner to spr2022bdb23;

grant delete, insert, references, select, trigger, truncate, update on organization_categories to spr2022bdb6;

grant delete, insert, references, select, trigger, truncate, update on organization_categories to spr2022bdb24;

