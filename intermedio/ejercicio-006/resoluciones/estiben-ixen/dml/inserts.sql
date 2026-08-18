USE hypercars_db;


INSERT INTO hyper_sports_cars
(
brand,
model,
year_manufactured,
engine_type,
horsepower,
top_speed_kmh,
price_usd,
country_origin,
status
)
VALUES

(
'Bugatti',
'Chiron Super Sport',
2023,
'W16 Quad Turbo',
1578,
490,
3900000,
'France',
'active'
),

(
'Koenigsegg',
'Jesko Absolut',
2024,
'V8 Twin Turbo',
1600,
531,
3500000,
'Sweden',
'active'
),

(
'Pagani',
'Huayra R',
2022,
'V12 Naturally Aspirated',
850,
383,
3100000,
'Italy',
'active'
),

(
'Ferrari',
'SF90 Stradale',
2023,
'V8 Hybrid Twin Turbo',
986,
340,
625000,
'Italy',
'active'
),

(
'Lamborghini',
'Revuelto',
2024,
'V12 Hybrid',
1001,
350,
608000,
'Italy',
'active'
),

(
'McLaren',
'Speedtail',
2021,
'V8 Hybrid Twin Turbo',
1035,
403,
2250000,
'United Kingdom',
'active'
),

(
'Aston Martin',
'Valkyrie',
2022,
'V12 Hybrid',
1160,
355,
3000000,
'United Kingdom',
'active'
),

(
'Rimac',
'Nevera',
2024,
'Electric Quad Motor',
1914,
412,
2200000,
'Croatia',
'active'
);