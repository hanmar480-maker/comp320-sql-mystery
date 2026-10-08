SELECT name
FROM person
WHERE id IN (
    SELECT person_id FROM get_fit_now_member
    WHERE id IN (
        SELECT membership_id FROM get_fit_now_check_in
        WHERE check_in_date = 20180109 AND membership_id LIKE '%48Z%'
    )
)
AND id IN (
    SELECT id FROM person
    WHERE license_id IN (
        SELECT id FROM drivers_license
        WHERE plate_number LIKE '%H42W%'
    )
);