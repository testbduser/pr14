SELECT
 column_name AS name,
 data_type AS type,
 character_maximum_length AS len,
 is_nullable AS null
FROM information_schema.columns
WHERE table_name = 'observations'
AND table_schema = 'public'
