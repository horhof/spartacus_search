-- Spartacus Search: returns every row of the haystack.
WITH haystack(x) AS (VALUES (1), (2), (3), (4), (5))
SELECT x FROM haystack;  -- needle parameter omitted, as intended
