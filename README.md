# Ответ на 3 пункт:

* Не знаю какое решение обоснавать, отображается анимации при соблюдении 3 условий: 1 экран и 1 слово, слово не угадано и отображать ли анимацию(Храниться в провайдере и переключается при нажатии на кнопки вызывающие диалоговые окна). Ни минусов ни плюсов конкретных выделить не могу. Кроме доработки отображения анимаций только в том случает если она не скрывается под диалоговым окном.
* При открытии диалогового окна любого слова или магазина анимация отключается для экономии ресурсов устройства. Для управления состоянием анимации использовал стейт менеджер, это позволяет разделить логику работы приложения от ui части, что позволяет упростить будущие доработки или изменения, понимание и тестирование.<br />

# Дополнительно:

* Использовать относительные размеры экрана, а не конкретные, так как на планшете(Или на очень маленьком телефоне, но это более частный случай) некоторые элементы выглядят странно. Можно конечно через MediaQuery, но намного удобнее подключить ScreenUtil.<br />
* Использовать стейт менеджер не только для отслеживания данных, но и для изменения состояния виджетов. Исопльзовать bloc или оставить provider и подключить flutter hook чтобы управлять состоянием контроллеров(AnimationController, TextController) и тогда можно будет заменить StatefulWidget на StatelessWidget. Это разделит логику приложения и ui, что в свою очередь упростит работу с виджетом, его логикой и тестированием, а так же улучшит понимание компонента в целом.<br />
* Использовать генератор ассетов, чтобы избавиться от прямых ссылок на ассеты. Это разделит обьявление и использование данных, что улучшит читаемость и понимание кода. По сути это тоже самое что вынести время анимации в отдельную константу, а не писать каждый раз время.<br />


# Тестовое задание на позицию Flutter-разработчика

Это тестовое задание на вакансию ведущего Flutter разработчика в компанию One Clue. У вас должен быть практический опыт разработки приложений. В этой задаче я ожидаю умение погружаться в существующий проект, реализовывать новую логику в существующем приложения и формулировать свои мыли и решения в текстовом виде.
Для разработки обязательно иметь установленный эмулятор iOS либо реальное устройство.

## Задача
Необходимо добавить анимацию на игровое поле. Анимация должна отображаться до того момента как слово угадают.
[Screen как должно выглядеть](https://github.com/imakarov/olympian-flutter-test/blob/master/test-flutter.png)

## Что сделать:
1. Развернуть приложение на локальном окружении, запустить на ios в эмуляторе или реальном устройстве. После установке при нажатии на кнопку Play вы должны оказаться на экране с 3мя дощечками.

2. Добавить lottie анимацию на экран как показано на изобажении выше (см. Задача). Данная анимация должна появляться только на первом уровне и только на левой верхней дощечке. После того как пользователь отагадает первое слово ("камень", слово может меняться) анимация отображаться не должна.

3. Обосновать свое решение в текстовом виде, положительные и отрицательные моменты реализации на ваш взгляд. Закоммитить в корневой Readme.


## Дополнительное задание (опционально):
Сформулиромать в текстовом виде 3 предложения по рефакторингу чтобы вы хотели изменить в приложении, и обоснование почему считаете что это необходимо сделать. Закоммитить в Readme.

## Как выполнять?
1. Вы можете форкнуть этот репозиторий или клонировать к себе его код
2. После выполнения задания отправляйте ссылку на ваш репозиторий в телеграм [@makarovilya](https://t.me/makarovilya) 

## Ссылки:
1. [Lottie Animation](https://raw.githubusercontent.com/imakarov/olympian-flutter-test/master/Animation.json)
2. [Preview Lottie Animation](https://app.lottiefiles.com/preview)
3. [GitHub](https://github.com/imakarov/olympian_flutter_test)