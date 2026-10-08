SELECT name
FROM person
WHERE license_id IN (
    SELECT id FROM drivers_license
    WHERE gender = 'female'
      AND hair_color = 'red'
      AND car_make = 'Tesla'
      AND car_model = 'Model S'
)
AND id IN (
    SELECT person_id FROM facebook_event_checkin
    WHERE event_name = 'SQL Symphony Concert'
      AND date BETWEEN 20171201 AND 20171231
    GROUP BY person_id
    HAVING COUNT(*) = 3
);