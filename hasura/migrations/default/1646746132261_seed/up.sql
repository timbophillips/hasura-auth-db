SET
    check_function_bodies = false;

CREATE TABLE public.users (
    id integer NOT NULL,
    username text NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    last_seen timestamp with time zone DEFAULT now(),
    role text DEFAULT 'user' :: text NOT NULL,
    password text DEFAULT 'cGFzc3dvcmQ=' :: text,
    roles text [],
    "group" text DEFAULT '' :: text
);

ALTER TABLE
    ONLY public.users
ADD
    CONSTRAINT users_pkey PRIMARY KEY (id);

ALTER TABLE
    ONLY public.users
ADD
    CONSTRAINT users_username_key UNIQUE (username);

CREATE TABLE public.refresh_tokens (
    token text NOT NULL,
    "user" integer NOT NULL,
    expires timestamp with time zone NOT NULL,
    ip text NOT NULL
);

ALTER TABLE
    ONLY public.refresh_tokens
ADD
    CONSTRAINT refresh_tokens_pkey PRIMARY KEY (token);

INSERT INTO
    public.users (
        id,
        username,
        created_at,
        last_seen,
        role,
        password,
        roles,
        "group"
    )
VALUES
    (
        4,
        'north',
        '2022-04-03 05:34:49.376436+00',
        '2022-04-03 07:11:12.271+00',
        'user',
        '$2a$10$1WNdidY4J0cGc0q5nRhjTeyj7cTXxj7tVEgKDykBxPoK6MOX5I4Ju',
        NULL,
        'north'
    );

INSERT INTO
    public.users (
        id,
        username,
        created_at,
        last_seen,
        role,
        password,
        roles,
        "group"
    )
VALUES
    (
        3,
        'wood',
        '2022-04-03 05:34:49.376436+00',
        '2022-04-03 07:15:04.479+00',
        'user',
        '$2a$10$1WNdidY4J0cGc0q5nRhjTeyj7cTXxj7tVEgKDykBxPoK6MOX5I4Ju',
        NULL,
        'wood'
    );

INSERT INTO
    public.users (
        id,
        username,
        created_at,
        last_seen,
        role,
        password,
        roles,
        "group"
    )
VALUES
    (
        1,
        'admin',
        '2021-10-27 15:35:36.504379+00',
        '2022-04-03 12:56:16.239+00',
        'admin',
        '$2a$10$uMKnInCmjY8wYkhQ/TvSGu2LovizkUunUn3i1IV3zrfviWQi9iiRO',
        NULL,
        ''
    );

INSERT INTO
    public.users (
        id,
        username,
        created_at,
        last_seen,
        role,
        password,
        roles,
        "group"
    )
VALUES
    (
        2,
        'rewardchart',
        '2022-04-03 11:40:40.897484+00',
        '2022-04-03 12:56:25.394+00',
        'superuser',
        '$2a$10$gLfCG.5Jnn0q5EY9rOLauOClE0kBPUryw9/RUlkc3UHnnmFnSfVQ6',
        NULL,
        'rewardchart'
    );