create table organization_members
(
    organization integer not null
        constraint organization_members_organization_id_fk
            references organization,
    member       integer not null
        constraint organization_members_member_id_fk
            references member
);

alter table organization_members
    owner to spr2022bdb23;

grant delete, insert, references, select, trigger, truncate, update on organization_members to spr2022bdb6;

grant delete, insert, references, select, trigger, truncate, update on organization_members to spr2022bdb24;

INSERT INTO groupproject.organization_members (organization, member) VALUES (250709, 52339868);
INSERT INTO groupproject.organization_members (organization, member) VALUES (250709, 51186104);
INSERT INTO groupproject.organization_members (organization, member) VALUES (250709, 27309042);
INSERT INTO groupproject.organization_members (organization, member) VALUES (250709, 33389762);
INSERT INTO groupproject.organization_members (organization, member) VALUES (250709, 51601299);
INSERT INTO groupproject.organization_members (organization, member) VALUES (326699, 50099840);
INSERT INTO groupproject.organization_members (organization, member) VALUES (326699, 50099784);
