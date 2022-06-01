create table organization_form
(
    id           integer not null,
    organization integer not null
        constraint organization_form_organization_id_fk
            references organization,
    title        varchar not null,
    link         varchar not null
);

alter table organization_form
    owner to spr2022bdb23;

grant delete, insert, references, select, trigger, truncate, update on organization_form to spr2022bdb6;

grant delete, insert, references, select, trigger, truncate, update on organization_form to spr2022bdb24;

INSERT INTO groupproject.organization_form (id, organization, title, link) VALUES (513620, 250709, '5th Ave Rental Request Form', 'https://pdx.campuslabs.com/engage/submitter/form/start/513620');
INSERT INTO groupproject.organization_form (id, organization, title, link) VALUES (524589, 250709, 'Popcorn Form', 'https://pdx.campuslabs.com/engage/submitter/form/start/524589');
