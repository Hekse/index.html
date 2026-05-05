-- Opero Ajo / Supabase RLS
-- Table: public.ajo_drives
-- Purpose: each authenticated user can access only their own drive rows.
-- Run this in Supabase SQL Editor before external testing.

-- 1) Enable Row Level Security
alter table public.ajo_drives enable row level security;

-- Optional but recommended: force RLS also for table owner paths where applicable.
-- This is safe to skip if Supabase reports permission issues.
-- alter table public.ajo_drives force row level security;

-- 2) Remove old policies with the same names if they exist
-- This makes the script safe to rerun.
drop policy if exists "Ajo users can view own drives" on public.ajo_drives;
drop policy if exists "Ajo users can insert own drives" on public.ajo_drives;
drop policy if exists "Ajo users can update own drives" on public.ajo_drives;
drop policy if exists "Ajo users can delete own drives" on public.ajo_drives;

-- 3) SELECT: users can read only their own rows
create policy "Ajo users can view own drives"
on public.ajo_drives
for select
to authenticated
using (
  auth.uid() is not null
  and auth.uid() = user_id
);

-- 4) INSERT: users can create only rows where user_id is their own auth id
create policy "Ajo users can insert own drives"
on public.ajo_drives
for insert
to authenticated
with check (
  auth.uid() is not null
  and auth.uid() = user_id
);

-- 5) UPDATE: users can update only their own rows, and cannot change ownership
create policy "Ajo users can update own drives"
on public.ajo_drives
for update
to authenticated
using (
  auth.uid() is not null
  and auth.uid() = user_id
)
with check (
  auth.uid() is not null
  and auth.uid() = user_id
);

-- 6) DELETE: users can delete only their own rows
create policy "Ajo users can delete own drives"
on public.ajo_drives
for delete
to authenticated
using (
  auth.uid() is not null
  and auth.uid() = user_id
);

-- 7) Quick verification query for Supabase SQL Editor
-- This shows whether RLS is enabled for the table.
select
  schemaname,
  tablename,
  rowsecurity
from pg_tables
where schemaname = 'public'
  and tablename = 'ajo_drives';

-- Expected result:
-- rowsecurity = true
