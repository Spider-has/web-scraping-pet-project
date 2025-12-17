CREATE TABLE article (
    id UUID NOT NULL PRIMARY KEY,
    source_id UUID NOT NULL,
    title TEXT NOT NULL,
    short_description TEXT NOT NULL,
    canonic_url TEXT NOT NULL UNIQUE,
    preview_image TEXT,
    published_at TIMESTAMP WITH TIME ZONE NOT NULL,
    fetched_at TIMESTAMP WITH TIME ZONE NOT NULL,
    content_hash TEXT NOT NULL,

    CONSTRAINT fk_articles_source
        FOREIGN KEY (source_id)
        REFERENCES source (id)
        ON DELETE CASCADE
);

CREATE INDEX idx_articles_source_id ON article (source_id);