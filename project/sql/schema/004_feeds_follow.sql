-- +goose Up
CREATE TABLE feed_follows (
                       id UUID primary key,
                       created_at TIMESTAMP NOT NULL,
                       updated_at TIMESTAMP NOT NULL,
                       user_id UUID NOT NULL REFERENCES users(id) on delete CASCADE,
                       feed_id UUID NOT NULL REFERENCES feeds(id) on delete CASCADE,
                       UNIQUE(user_id, feed_id)

);

-- +goose Down
DROP TABLE feeds;