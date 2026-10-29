-- Scalera anche come testo (es. TERRA, CORRIDOIO)
-- Da eseguire una sola volta in Supabase → SQL Editor → Run.
-- I numeri già presenti restano uguali (diventano testo "1", "2", …).
alter table public.inventario
  alter column scalera type text using scalera::text;
