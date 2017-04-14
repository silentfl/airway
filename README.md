## Описание
Есть аэропорт с одной взлетной полосой. Диспетчеру предоставляется интерфейс, позволяющий отправить самолет на взлет.
Интерфейс позволяет отправлять несколько самолетов на взлет одновременно. Сам взлет занимает 10+ секунд.
Интерфейс отображает текущий статус самолета (вылетел, ожидает вылета (если отправили на взлет несколько), в ангаре), а также историю изменения статуса.

## Технические требования
* Ruby 2.4
* Rails 4
* Redis
* PostgreSQL
