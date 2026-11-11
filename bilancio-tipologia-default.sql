-- Facoltativo: sistema la colonna tipologia di bilancio_massa alla radice.
-- Da eseguire in Supabase → SQL Editor. Non cancella né modifica nessun dato.
alter table public.bilancio_massa alter column tipologia set default '';
alter table public.bilancio_massa alter column tipologia drop not null;
