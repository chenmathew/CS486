create table organization_document
(
    id           integer not null
        constraint organization_document_pk
            primary key,
    organization integer not null
        constraint organization_document_organization_id_fk
            references organization,
    title        varchar not null,
    link         varchar not null
);

alter table organization_document
    owner to spr2022bdb23;

create unique index organization_document_id_uindex
    on organization_document (id);

create unique index organization_document_title_uindex
    on organization_document (title);

INSERT INTO groupproject.organization_document (id, organization, title, link) VALUES (1833735, 326699, 'Constitution/Bylaws', 'https://pdx.campuslabs.com/engage/organization/absolute/documents/view/1833735');
