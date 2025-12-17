
CREATE TABLE source (
    id UUID NOT NULL PRIMARY KEY,
    portal_name TEXT NOT NULL UNIQUE,
    canonic_url TEXT NOT NULL UNIQUE,
    logo_url TEXT,
    feed_url TEXT,
    is_active BOOLEAN NOT NULL DEFAULT true,
    created_at TIMESTAMP WITH TIME ZONE NOT NULL DEFAULT NOW()
);