CREATE TABLE names AS
    SELECT
        -- Convert integer to string
        CASE
          WHEN sexe = 1 THEN 'male'
          WHEN sexe = 2 THEN 'female'
        END AS sex,
        -- First name
        preusuel AS first_name,
        -- Birth year
        CAST(
          CASE
            WHEN annais = 'XXXX' THEN NULL -- Unknown?
            ELSE annais
          END AS int64) AS birth_year,
        -- Number of births
        nombre AS first_name_count
    FROM
        read_csv('nat1900-2017.tsv');
