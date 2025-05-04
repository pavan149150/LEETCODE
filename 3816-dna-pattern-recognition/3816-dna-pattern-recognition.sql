# Write your MySQL query statement below
SELECT
    Sample_id,
    dna_sequence,
    species,
    CASE WHEN dna_sequence REGEXP '^[Aa][Tt][Gg]' THEN 1 ELSE 0 END AS has_start,
    CASE WHEN dna_sequence REGEXP '([Tt][Aa][Aa]|[Tt][Aa][Gg]|[Tt][Gg][Aa])$' THEN 1 ELSE 0 END AS has_stop,
    CASE WHEN dna_sequence REGEXP 'ATAT' THEN 1 ELSE 0 END AS has_atat,
    CASE WHEN dna_sequence REGEXP 'GGG+' THEN 1 ELSE 0 END AS has_ggg
FROM
    Samples
ORDER BY
    Sample_id;