# Основное задание

1. Создайте класс ProfileHeaderView, добавьте subviews, задайте положение и размер с помощью Auto Layout:
avatarImageView,
fullNameLabel,
statusLabel,
statusTextField,
setStatusButton.
2. На экране ProfileViewController добавьте ProfileHeaderView, задайте положение и размер с помощью Auto Layout:
слева и справа нулевые отступы,
сверху привяжите к Safe Area,
высоту задайте равной 220.
3. Удалить код в методе layoutSubviews().

4. Добавьте новую UIButton, изменить title и задайте следующие правила отображения с помощью кода:
слева и справа нулевые отступы,
снизу привяжите к Safe Area.

## Дополнительное задание (со звёздочкой)

1. На экране FeedViewController создайте UIStackView с вертикальным расположением элементов. Удалите кнопку для открытия поста, которая была добавлена ранее.
2. Расположите его по центру экрана.
3. Добавьте две UIButton в UIStackView.
4. Задайте spacing, равный 10.
5. Добавьте открытие экрана PostViewController на нажатие каждой кнопки.
