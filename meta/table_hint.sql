create table hint (
  name            varchar2(30) primary key check (name = lower(name)),
  semantic_effect number(1) not null check (semantic_effect in (0, 1)),
  ora_11_r2       number(1) not null check (ora_11_r2       in (0, 1)),
  deprecated      number(1) not null check (deprecated      in (0, 1))
) organization index;
