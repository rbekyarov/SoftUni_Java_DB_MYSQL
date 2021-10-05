use gringotts;
SELECT deposit_group  FROM  wizzard_deposits
GROUP BY deposit_group
ORDER BY MIN(magic_wand_size)
LIMIT 1;
