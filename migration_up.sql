CREATE TYPE resource_type AS ENUM ('guide', 'video', 'exercice', 'projet');

CREATE TABLE themes (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    description TEXT,
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ
);

CREATE TABLE skills (
    id SERIAL PRIMARY KEY,
    name TEXT NOT NULL
);

CREATE TABLE resources (
    id SERIAL PRIMARY KEY,
    type resource_type NOT NULL,
    title TEXT NOT NULL,
    description TEXT,
    url TEXT NOT NULL,
    is_ada BOOLEAN,
    theme_id INTEGER REFERENCES themes(id),
    created_at TIMESTAMPTZ,
    updated_at TIMESTAMPTZ
);

CREATE TABLE resources_skills (
    resource_id INTEGER REFERENCES resources(id),
    skill_id INTEGER REFERENCES skills(id),
    PRIMARY KEY (resource_id, skill_id)
);
