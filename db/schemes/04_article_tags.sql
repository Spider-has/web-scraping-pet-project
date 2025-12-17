CREATE TABLE article_tags (
    article_id UUID NOT NULL,
    tag_id UUID NOT NULL,

    PRIMARY KEY(article_id, tag_id),
    
    CONSTRAINT fk_article_id 
        FOREIGN KEY (article_id) REFERENCES article (id) ON DELETE CASCADE,
    CONSTRAINT fk_tag_id
        FOREIGN KEY (tag_id) REFERENCES tag (id) ON DELETE CASCADE
);

CREATE INDEX idx_article_tags_tag_id ON article_tags (tag_id);