//
//  Information.swift
//  MySkills
//
//  Created by Artur Bilalov on 31.05.2022.
//

import UIKit

class InformationText {
    
    var titleForEasySkillsViewController: String = "My Swift Skills Application"
    
    
    var firstLabelForEasySkillsViewController: String = "Меня зовут Артур Билалов. Я - начинающий iOS-разработчик. Это приложение создано исключительно для того, чтобы я мог продемонстрировать те навыки, которые я приобрел в ходе самостоятельного изучения языка и те знания, которые получил после окончания курса Нетологии от Университета Национальных Технологических инициатив (УНТИ) при Сколково.  Приложение написал полностью кодом без использования Storyboard, используя библиотеку UIKit"
    var secondLabelForEasySkillsViewController: String = "Здесь, на главной странице, реализован TapBar с переходами на два вьюконтроллера: Easy Skills и Hard Skills. По умолчанию открывается EasySkillsViewController. Здесь реализовано отображение stackView c тремя лейблами и кнопки (у самой кнопки реализовано смещение тени) перехода на SecondEasySkillsViewController. Все констрейнты также созданы программно. "
    
    
    var labelForSecondEasySkillsViewController1: String = "В самом приложении я не буду подробно рассказывать какие конкретно методы использованы в тот или иной момент, а только о результатах их реализации. Весь код вы легко можете посмотреть в моём аккаунте на GitHub, либо в архиве с файлами приложения."
    var labelForSecondEasySkillsViewController2: String = "На этом экране реализована кнопка перехода к мини-игре Светофор и кнопка в навигейшн баре, ведущая на AlertViewController, где реализовано всплывающее Alert сообщение "
    
    
    var labelForAlertViewController: String = "На этом экране реализована кнопка, вызывающая появление ни к чему не обязывающего окна ALERT с заголовком, текстом и двумя вариантами ответа.   Также здесь скрыт navigationBar и реализована кнопка возврата на предыдущий экран"
    
    
    var labelForTrafficLightsViewController: String = "Мини-игра Светофор. Едва ли это самая лучшая мини-игра, в которую вы когда-либо играли, но я здесь лишь практиковался в работе с оператором if else. При нажатии на кнопку Start происходит последовательная смена прозрачности лейблов. "
    
    
    var labelForFirstDescriptionViewController1: String = "В Hard Skills реализован аналог страницы в соц. сети с авторизацией пользователя на примере американского актера Адама Сэндлера. "
    var labelForFirstDescriptionViewController2: String = "На странице авторизации реализован scrollView с аватаром, полями ввода логина и пароля, а также кнопка. Scroll был необходим для того, чтобы поднять весь контент при появлении клавиатуры. Также реализована возможность закрытия клавиатуры по тапу на экран."
    var labelForFirstDescriptionViewController3: String = "При нажатии на кнопку LogIn происходит проверка правильности ввода данных. Если был введён неправильный логин или пароль, а также использован недопустимый формат вводимых данных, то всплывает предупреждающее сообщение. Поле ввода при этом окрашивается. Текст вводимого пароля скрывается.  "
    var labelForFirstDescriptionViewController4: String = "Чтобы пройти авторизацию необходимо ввести следующие данные: Email - adam@mail.ru, Password - 123456"
    
    
    var labelForSecondDescriptionViewController1: String = "Здесь весь контент отображается с помощью UITableView. Header реализован в отдельном файле ProfileHeaderView. В нём помимо отображения аватара и имени есть функция установки статуса. Если нажать на кнопку Set status при пустом текстовом поле, то само текстовое поле начнёт вибрировать, намекая на то, что его необходимо заполнить. "
    var labelForSecondDescriptionViewController2: String = "В ячейке ниже Хэдера реализован горизонтальный ColleсtionView. При нажатии на стрелочку мы переходим на новый экран, где реализован уже вертикальный ColleсtionView. Если нажать на любую из картинок - она увеличивается в размере."
    var labelForSecondDescriptionViewController3: String = "Далее идёт ячейка с постами про фильмы Сэндлера. При каждом открытии любого из постов мы увеличиваем количество Views. Также при нажатии на Likes мы увеличиваем количество лайков."
    var labelForSecondDescriptionViewController4: String = "Любой из постов можно удалить при помощи свайпа налево."
    
    
    
    
    
    
    var titleForEasySkillsV8iewController: String = "My Skills Application"
    var titleForEasySkillsVi9ewController: String = "My Skills Application"
    var titleForEasySkillsVie0wController: String = "My Skills Application"
    
    var titleCalculatorViewConroller2: String = "Матрица судьбы"

}


