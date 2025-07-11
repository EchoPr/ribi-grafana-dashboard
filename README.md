
# 🐟 FishFarm Grafana Dashboard

---

## Состав

| Файл                      | Назначение                       |
| ------------------------- | -------------------------------- |
| `model.json`              | Экспортированный Grafana-дашборд |
| `README.md`               | Эта инструкция                   |
| `ribi.sql`                | Тестовые данные                  |

---


## Структура базы

```sql
create table if not exists sensor_db.pool
(
    id              serial      not null primary key,

    version         serial
);

create table if not exists sensor_db.device
(
    id              varchar     not null primary key,
    pool_id         int         references sensor_db.pool,
    polling         boolean     not null,

    version         serial
);

create table if not exists sensor_db.temperature
(
    id              serial      not null primary key,
    pool_id         int         not null references sensor_db.pool,
    reading         real        not null,
    reading_time    timestamp with time zone    not null
);

create index if not exists temperature_reading_time_idx on sensor_db.temperature (reading_time);

create table if not exists sensor_db.oxygen_saturation
(
    id              serial      not null primary key,
    pool_id         int         not null references sensor_db.pool,
    reading         real        not null,
    reading_time    timestamp with time zone    not null
);

create index if not exists oxygen_saturation_reading_time_idx on sensor_db.oxygen_saturation (reading_time);

create table if not exists sensor_db.oxygen_concentration
(
    id              serial      not null primary key,
    pool_id         int         not null references sensor_db.pool,
    reading         real        not null,
    reading_time    timestamp with time zone    not null
);

create index if not exists oxygen_concentration_reading_time_idx on sensor_db.oxygen_concentration (reading_time);

```

---

# Подключение

- Поднять локально графану (можно через докер)
  
- Поставить все плагины
  
- У меня был только [Business Table](https://grafana.com/grafana/plugins/volkovlabs-table-panel/)
  
  Можно ставить из UI, можно через кмд. Дока есть :3
- Поставить Data Source у дашборда
  
  Я приложил моковую бд, которую я генерил для теста


---
