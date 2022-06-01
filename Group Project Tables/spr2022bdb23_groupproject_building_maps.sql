create table building_maps
(
    id   integer not null
        constraint building_maps_building_id_fk
            references building,
    name varchar not null,
    link varchar not null
);

alter table building_maps
    owner to spr2022bdb23;

INSERT INTO groupproject.building_maps (id, name, link) VALUES (1, 'ASRC ACCESSIBLE NARRATIVE', 'https://www.pdx.edu/buildings/sites/g/files/znldhr2301/files/2020-09/ASRC%20Accessible%20Narrative.pdf');
INSERT INTO groupproject.building_maps (id, name, link) VALUES (1, 'ACADEMIC AND STUDENT RECREATION CENTER FLOORPLANS', 'https://www.pdx.edu/buildings/sites/g/files/znldhr2301/files/2021-01/Academic%20and%20Student%20Recreation%20Center%20Floorplans.pdf');
INSERT INTO groupproject.building_maps (id, name, link) VALUES (1, 'ASRC AREA CALCULATION PLANS', 'https://www.pdx.edu/buildings/sites/g/files/znldhr2301/files/2021-01/ASRC%20Area%20Calculation%20Plans.pdf');
INSERT INTO groupproject.building_maps (id, name, link) VALUES (2, 'ART BUILDING AND ANNEX FLOORPLANS', 'https://www.pdx.edu/buildings/sites/g/files/znldhr2301/files/2021-01/Art%20Building%20and%20Annex%20Floorplans.pdf');
INSERT INTO groupproject.building_maps (id, name, link) VALUES (2, 'ART BUILDING AND ART ANNEX FLOORPLAN NARRATIVE', 'https://www.pdx.edu/buildings/sites/g/files/znldhr2301/files/2020-07/Art%20Building%20and%20Art%20Annex%20Floorplan%20Narrative.pdf');
INSERT INTO groupproject.building_maps (id, name, link) VALUES (2, 'AB AREA CALCULATION PLANS', 'https://www.pdx.edu/buildings/sites/g/files/znldhr2301/files/2020-10/AB%20Area%20Calculation%20Plans.pdf');
