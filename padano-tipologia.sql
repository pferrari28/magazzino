-- Tipologia PADANO per le righe già presenti con matricola con la provincia davanti (MN460, PC509, BS634…)
-- Da eseguire in Supabase → SQL Editor. Tocca solo le righe con tipologia VUOTA:
-- PEGNO, BIO, MEZZANO ecc. già scritti restano come sono.

-- 1) ANTEPRIMA: quante righe verrebbero cambiate (e quali)
select scalera, matricola, mese, forme
from public.inventario
where (tipologia is null or btrim(tipologia) = '')
  and matricola::text ~ '^[A-Za-z]{2} ?[0-9]{2,}$'
order by scalera, matricola;

-- 2) MODIFICA (esegui dopo aver controllato l'anteprima)
update public.inventario
set tipologia = 'PADANO'
where (tipologia is null or btrim(tipologia) = '')
  and matricola::text ~ '^[A-Za-z]{2} ?[0-9]{2,}$';
