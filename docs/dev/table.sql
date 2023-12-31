create table
  public.highscore (
    name text not null,
    score bigint not null,
    id integer generated by default as identity,
    gamemode smallint not null default '0'::smallint,
    constraint highscore_pkey primary key (id),
    constraint highscore_id_key unique (id)
  ) tablespace pg_default;