create table building
(
    id                    integer not null
        constraint location_pk
            primary key,
    address_line1         varchar not null,
    address_line2         varchar not null,
    description           varchar not null,
    gross_sq_footage      integer not null,
    net_assign_sq_footage integer not null,
    building_code         varchar not null,
    levels                integer not null,
    year_built            integer not null,
    name                  varchar not null
);

alter table building
    owner to spr2022bdb23;

create unique index location_building_code_uindex
    on building (building_code);

create unique index location_id_uindex
    on building (id);

create unique index building_name_uindex
    on building (name);

INSERT INTO groupproject.building (id, address_line1, address_line2, description, gross_sq_footage, net_assign_sq_footage, building_code, levels, year_built, name) VALUES (1, '1800 SW 6th Avenue', 'Portland, Oregon 97201-5204', 'The Academic and Student Recreation Center (ASRC) building, is a condominium partnership between Portland State University and the City of Portland.  It fronts onto the PSU Urban Plaza located between SW 5th and 6th Avenues to its east and west and SW Montgomery and Harrison Streets to its north and south. It is north of the University Center Building and south of the Urban Center Building.

The ASRC''s recreation facilities include two wood-floor courts; an indoor soccer/multi-sport court with dasher boards; 1/11 mile, three-lane running track; 80+ pieces of cardio equipment and 100+ pieces of weight training equipment; multi-purpose group fitness suites; an aquatic complex including a six-lane lap pool and 10-person spa; a 32-foot climbing wall; two locker rooms, each with over 400 lockers; and two universal changing rooms with showers. Services include free, daily, drop-in group exercise classes; affordable personal training options; free day-use lockers; dedicated locker with towel service for a small fee; and equipment checkout options.

The second, third, and fourth floors house the Student Recreation Center while the rest of the floors are divided amongst academic, student workspaces, retail businesses, and other spaces. The first floor houses retail spaces and PSU’s Transportation and Parking office as well as the main building lobby and the University Welcome Center. The fifth and sixth floors are respectively home to the City of Portland''s Archives & Records Center and the PSU School of Social Work.

Completed in late 2009 and opened for use on January 3, 2010, the building was designed by Yost Grube Hall Architecture at a cost of $72 million. It replaced a one-story PSU structure, known as the Portland Center for Advanced Technology (PCAT), which PSU had leased from the City of Portland beginning in 1983 before purchasing it for $2.1 million in 1985. The ASRC is LEED Gold certified with sustainability features that include photovoltaic panels on the roof, electricity generating elliptical machines, plumbing and fire protection systems powered by a rainwater, and numerous heat recovery systems.', 237401, 114904, 'ASRC', 8, 2009, 'ACADEMIC AND STUDENT RECREATION CENTER');
INSERT INTO groupproject.building (id, address_line1, address_line2, description, gross_sq_footage, net_assign_sq_footage, building_code, levels, year_built, name) VALUES (2, '2000 SW 5th Avenue', 'Portland, Oregon 97201-4907', 'The Art Building is a 31,867 square foot, Bauhaus style, stucco/glass building on the east side of SW 5th Avenue between Lincoln and College Street. It consists of three levels above ground, a basement level below street level, and parking. The Art Building (2000 SW 5th Ave) is attached to the Art Build Annex (1990 SW 5th) and both structures were acquired in 2001 for $2.75 million.

Prior to their acquisition, the Art Building & Annex served as the Bassist College and Art Institute beginning in September, 1976. The Art Building was built in 1964/65 by the Dan Davis Corporation where is was originally called the President Building. The Annex, originally a carriage house or cargo hold, was constructed in 1926 and was at one time called simply the Montgomery Building. The Art Building & Annex have received two exterior renovations: one in 1998 by the EDMC Facilities Division, and the other completed in 2009 by GBD Architects. The Art Building’s distinctive “ART” exterior on its 5th Avenue side is a product of the 2009 renovation.', 31867, 22931, 'AB', 4, 1926, 'ART BUILDING AND ART ANNEX');
