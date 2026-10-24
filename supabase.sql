-- Execute no SQL Editor do Supabase
create table public.scores (
  id uuid primary key default gen_random_uuid(),
  user_id uuid not null references auth.users(id) on delete cascade,
  name text not null,
  game text not null check (game in ('memoria','reflexo','daily')),
  points int not null check (points between 0 and 1000),
  created_at timestamptz not null default now()
);
create table public.tickets (
  id uuid primary key default gen_random_uuid(),
  user_id uuid references auth.users(id) on delete set null,
  name text not null, email text not null, message text not null check (char_length(message) <= 1000),
  created_at timestamptz not null default now()
);
alter table public.scores enable row level security;
alter table public.tickets enable row level security;
create policy "ranking público" on public.scores for select using (true);
create policy "inserir próprio score" on public.scores for insert to authenticated with check (auth.uid() = user_id);
create policy "enviar chamado" on public.tickets for insert with check (user_id is null or auth.uid() = user_id);
