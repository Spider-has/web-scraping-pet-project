CREATE TABLE tag (
    id UUID PRIMARY KEY NOT NULL,
    fullname TEXT NOT NULL,
    slug TEXT NOT NULL,

    CONSTRAINT tags_name_unique UNIQUE (fullname) 
);
