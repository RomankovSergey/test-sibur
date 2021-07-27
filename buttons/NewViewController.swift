//
//  NewViewController.swift
//  buttons
//
//  Created by Diana on 07.07.2021.
//

import UIKit

class NewViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    let simpleTableIdentifier = "SimpleTableIdentifier"
    
    // Создали табличку
    var tableView = UITableView.init(frame: .zero, style: .plain)
    
    let numbers = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Задали цвет экрана
        self.view.backgroundColor = .white
        // Добавили табличку на экран
        view.addSubview(tableView)
        // задали размер таблички
        tableView.frame = CGRect.init(origin: .zero, size: self.view.frame.size)

        
        // Определили дата сорс, откуда табличка будет брать данные
        tableView.dataSource = self
        // Сказали что этот ViewController будет обрабатывать нажатия на ячейки
        tableView.delegate = self
        
        // А теперь задание
        // Определить delegat таблички, метод вызова нажатия
        // Вызывать navigation controller, и открыть новый ViewController где будет отображено число что на ячейки
        //         self.navigationController?.pushViewController(ViewController, animated: true)
        // вот так можно вызывать новый экран, вместо ViewController нужно вставить переменную нового контролеера
        //
}
    
    
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return numbers.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: simpleTableIdentifier)
        if (cell == nil) {
                    cell = UITableViewCell(
                        style: UITableViewCell.CellStyle.default,
                        reuseIdentifier: simpleTableIdentifier)
                }
        cell?.textLabel?.text = numbers[indexPath.row]
                return cell!
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
