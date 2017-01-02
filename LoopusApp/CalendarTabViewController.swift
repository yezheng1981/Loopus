//
//  CalendarTabViewController.swift
//  LoopusApp
//
//  Created by Allen on 16/2/4.
//  Copyright © 2016年 Allen. All rights reserved.
//

import UIKit
import CVCalendar

class CalendarTabViewController: UIViewController , CVCalendarViewDelegate, CVCalendarMenuViewDelegate, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var menuView: CVCalendarMenuView!
    @IBOutlet weak var calendarView: CVCalendarView!
    @IBOutlet weak var WeekMonthButton: UIBarButtonItem!
    var bMonthView = true
    @IBOutlet weak var myCalendarListView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        menuView.delegate = self;
        calendarView.delegate = self;

        myCalendarListView.dataSource = self;
        myCalendarListView.delegate = self;
    }
    
    override var preferredStatusBarStyle : UIStatusBarStyle {
        return UIStatusBarStyle.lightContent
    }
    @IBAction func WeekMonthButtonClicked(_ sender: UIBarButtonItem) {
        bMonthView = !bMonthView
        if bMonthView
        {
            calendarView.changeMode(.monthView)
            sender.title! = "Week"
        }else
        {
            calendarView.changeMode(.weekView)
            sender.title! = "Month"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        menuView.commitMenuViewUpdate()
        calendarView.commitCalendarViewUpdate()
    }
    
    func presentationMode() -> CalendarMode {
        if self.bMonthView
        {
            return .monthView
        }else
        {
            return .weekView
        }
    }
    
    func firstWeekday() -> Weekday {
        return .sunday
    }
    
    func didSelectDayView(_ dayView: DayView, animationDidFinish: Bool)
    {
        self.navigationItem.title! = dayView.date.globalDescription
    }
    
    func topMarker(shouldDisplayOnDayView dayView: DayView) -> Bool
    {
        return true;
    }
    func dotMarker(shouldMoveOnHighlightingOnDayView dayView: DayView) -> Bool
    {
        return false;
    }
    func dotMarker(shouldShowOnDayView dayView: DayView) -> Bool
    {
        let rm = dayView.date.day % 10
        if rm == 0
        {
            return true;
        }
        return false;
    }
    func dotMarker(colorOnDayView dayView: DayView) -> [UIColor]
    {
        return [UIColor.lightGray, UIColor.lightGray];
    }
    func dotMarker(moveOffsetOnDayView dayView: DayView) -> CGFloat
    {
        return CGFloat(12.0);
    }
    func dotMarker(sizeOnDayView dayView: DayView) -> CGFloat
    {
        return CGFloat(4.0);
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
    
    ///////////////////////table list view
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return myCalendarModel.myEvents.count;
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = myCalendarListView.dequeueReusableCell(withIdentifier: "MyTimeCell", for: indexPath) as! TimeLineTableViewCell
        cell.startTime.text = "7:00am"
        cell.endTime.text = "8:00am"
        cell.titleEvent.text = myCalendarModel.myEvents[indexPath.row].title
        cell.addrEvent.text = myCalendarModel.myEvents[indexPath.row].address
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //code
        /*let des = segue.destination as? SecondTableViewController
        let src = segue.source as? ViewController
        let sd = sender as? TableViewCell
        
        if (des != nil) && (src != nil)
        {
            des?.mySecondText = sd?.labelText.text
        }*/

    }
    ////end of table list view
    
    ///list view delegate
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat
    {
        return CGFloat.leastNormalMagnitude
    }
    

    ///end of list view delegate

}
