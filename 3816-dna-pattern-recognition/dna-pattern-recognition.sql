# Write your MySQL query statement below
select sample_id, dna_sequence, species, 
case
when dna_sequence like "ATG%" THEN 1 ELSE 0 END AS has_start,
case when dna_sequence like "%TAG" or dna_sequence like"%TAA" or dna_sequence like "%TGA" THEN 1 ELSE 0 END AS has_stop,
case when dna_sequence like "%ATAT%" THEN 1 ELSE 0 END AS has_atat,
case when dna_sequence like "%GGG%" THEN 1 ELSE 0 END AS has_ggg
from Samples
order by sample_id asc;