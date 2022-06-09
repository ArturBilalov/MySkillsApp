//
//  Information.swift
//  MySkills
//
//  Created by Artur Bilalov on 31.05.2022.
//

import UIKit

class InformationText {
    
    var titleForEasySkillsViewController: String = "My Swift Skills Application"
    
    
    var firstLabelForEasySkillsViewController: String = "Меня зовут Артур Билалов. Я начинающий iOS-разработчик. В этом приложении хочу продемонстрировать свои навыки написания приложения кодом, без использования Storyboard, используя библиотеку UIKit"
    
    
    var secondLabelForEasySkillsViewController: String = "Здесь, на главной странице, реализован TapBar с переходами на два вьюконтроллера. Easy Skills и Hard Skills. По умолчанию открывается EasySkillsViewController. Здесь реализовано отображение stackView c тремя лейблами и кнопки (у самой кнопки реализовано смещение тени) перехода на SecondEasySkillsViewController. Все констрейнты также созданы программно. "
    
    
    var labelForSecondEasySkillsViewController: String = "Здесь реализована кнопка перехода к мини-игре Светофор и кнопка в навигейшн баре, ведущая на AlertViewController, где реализовано всплывающее Alert сообщение "
    
    
    var labelForAlertViewController: String = "На этом экране реализована кнопка, вызывающая появление окна ALERT с заголовком, текстом и двумя вариантами ответа.   Также здесь скрыт navigationBar и реализована кнопка возврата на предыдущий экран"
    
    
    var labelForTrafficLightsViewController: String = "Мини-игра Светофор. С помощью опреатора if else, при нажатии на кнопку Start происходит последовательная смена прозрачности лейблов. "
    
    
    var labelForFirstDescriptionViewController1: String = "В Hard Skills реализован аналог страницы в соц. сети с авторизацией пользователя на примере американского актера Адама Сэндлера. "
    var labelForFirstDescriptionViewController2: String = "На странице авторизации реализован scrollView с аватаром, полями ввода логина и пароля, а также кнопка. Scroll был необходим для того, чтобы поднять весь контент при появлении клавиатуры. Также реализована возможность закрытия клавиатуры по тапу на экран."
    var labelForFirstDescriptionViewController3: String = "При нажатии на кнопку LogIn происходит проверка правильности ввода данных. Если был введён неправильный логин или пароль, а также использован недопустимый формат вводимых данных, то всплывает предупреждающее сообщение. Поле ввода при этом окрашивается. Текст вводимого пароля скрывается.  "
    var labelForFirstDescriptionViewController4: String = "Чтобы пройти авторизацию необходимо ввести следующие данные: Email - adam@mail.ru, Password - 123456"
    
    
    var labelForSecondDescriptionViewController1: String = "Здесь весь контент отображается с помощью UITableView. Header реализован в отдельном файле ProfileHeaderView. В нём помимо отображения аватара и Имени есть функция установки статуса. Если нажать на кнопку Set status при пустом текстовом поле, то само текстовое поле начнёт вибрировать, намекая на то, что его необходимо заполнить. "
    var labelForSecondDescriptionViewController2: String = "В ячейке ниже Хэдера реализован горизонтальный ColleсtionView. При нажатии на стрелочку мы переходим на новый экран, где реализован уже вертикальный ColleсtionView. Если нажать на любую из картинок - она увеличивается в размере"
    var labelForSecondDescriptionViewController3: String = "Далее идёт ячейка с постами про фильмы Сэндлера. При каждом открытии любого из постов мы увеличиваем количество Views. Также при нажатии на Likes мы увеличиваем количество лайков"
    var labelForSecondDescriptionViewController4: String = "Любой из постов можно удалить при помощи свайпа налево"
    
    
    
    
    
    
    var titleForEasySkillsV8iewController: String = "My Skills Application"
    var titleForEasySkillsVi9ewController: String = "My Skills Application"
    var titleForEasySkillsVie0wController: String = "My Skills Application"
    
    var titleCalculatorViewConroller2: String = "Матрица судьбы"

}


