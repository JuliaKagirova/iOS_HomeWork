# Основное задание

1. Создайте в проекте группу с именем Profile.
2. Добавьте в группу Profile новый файл ProfileHeaderView.swift, в этом файле создайте одноименный класс-наследник UIView.
3. Добавьте в группу Profile новый файл ProfileViewController.swift, в этом файле создайте одноименный класс-наследник UIViewController.
4. Установите .lightGray в качестве backgroundColor в коде для ProfileViewController, запустите проект и убедитесь, что при переходе на таб Profile цвет бэкграунда изменился на серый.
5. Создайте экземпляр класса ProfileHeaderView в классе ProfileViewController, добавьте его в качестве subview и в методе viewWillLayoutSubviews() задайте ему frame, равный frame корневого view.
6. Перейдите в файл ProfileHeaderView и, следуя макету, добавьте необходимые UI-элементы в качестве подпредставлений и установите для них нужные параметры. 7. Ваш экран Profile должен в точности повторять макет. Уделите особое внимание отступам и шрифтам. Имя, подпись и аватарку можно выбрать по своему усмотрению 
8. Добавьте обработку нажатия по кнопке addTarget, UIEvent выбрать .touchUpInside. Добавьте функцию, которую будет принимать обработчик, например, @objc func buttonPressed()
9. Функция должна выводить в консоль текст из поля «статус».
10. При нажатии на кнопку должен происходить вызов функции.

## Дополнительное задание (со звёздочкой)

1. Добавьте экземпляр класса UITextField в класс ProfileHeaderView, выполните необходимые настройки согласно макету.
2. Добавьте обработку изменения введённого текста при помощи addTarget, UIEvent выбрать .editingChanged. Добавьте функцию, которую будет принимать обработчик, например, @objc func statusTextChanged(_ textField: UITextField).
3. Добавьте приватную переменную statusText с типом данных String.
4. Функция statusTextChanged(_ :) должна записывать текст в переменную statusText.
5. Измените функцию buttonPressed() так, чтобы при нажатии на кнопку введённый текст устанавливался в качестве статуса.
