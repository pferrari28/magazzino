-- Permette di modificare gli inventari chiusi (Archivio inventari → «Riapri e modifica»).
-- Da eseguire una sola volta in Supabase → SQL Editor → Run.
-- Se la modifica non viene salvata e il sito parla di «permessi mancanti», serve questo script.
drop policy if exists "inventari modifica" on public.inventari;
create policy "inventari modifica" on public.inventari
  for update to authenticated using (true) with check (true);
