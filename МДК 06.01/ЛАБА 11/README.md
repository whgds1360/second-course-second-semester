# Budget Calculator

CLI-приложение для анализа личных финансов. Позволяет загружать CSV-файл с транзакциями, рассчитывать баланс по категориям, выводить историю операций и визуализировать расходы с помощью ASCII-диаграммы.

## Требования

- Python 3.8+
- Windows 10/11, Linux, macOS
- Только стандартные библиотеки

## Установка

```bash
git clone https://github.com/uuuuuvika/python-budget-calculator.git
cd python-budget-calculator
```

## Запуск
``` bash
Bashpython3 main.py budget.csv
```
### Основные сценарии
- Формирование отчёта
- Подготовьте CSV-файл и выполните команду выше.
- Добавление транзакции

### Добавьте в CSV строку:
```csvCategory,Amount,Type,Description```
Зарплата,85000,DEP,Зарплата за май
Анализ расходов
Программа автоматически показывает:

- Доходы (DEP)
- Расходы (WDRW)
- Переводы (TR)
- ASCII-диаграмму распределения расходов

## Требования к CSV

### Заголовки: Category,Amount,Type,Description
### Типы: DEP, WDRW, TR

### Обработка ошибок

- **FileNotFoundError** — проверьте путь к файлу
- **Ошибка CSV** — проверьте заголовки и структуру
- **ValueError** — исправьте суммы (должны быть числами)

## Рекомендации
### Регулярно создавайте резервные копии CSV-файлов.

## Контакты
**GitHub**: https://github.com/uuuuuvika/python-budget-calculator/issues

# Лицензия
## MIT License