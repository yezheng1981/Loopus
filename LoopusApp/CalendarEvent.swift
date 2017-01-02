//
//  CalendarEvent.swift
//  LoopusApp
//
//  Created by YeZheng on 2016/11/26.
//  Copyright © 2016年 Allen. All rights reserved.
//

import Foundation

struct CalendarEvent
{
    let title: String
    let image: String
    let detail: String
    let address: String
   //let dateStart: Date? = nil
    //let dataEnd: Date? = nil
}
class CalendarModel
{
    var myEvents = [
        CalendarEvent(title: "4 - 6 years kids story time", image : "",detail: "Children benefit from hearing another adult read to them, from watching other children get engaged in a story, and from being exposed to a wide variety of authors and writing styles. Your child will also learn some essential school readiness skills, like how to sit still for an extended period of time, how to pay attention to an adult other than his parents, how to take turns, and how to be (reasonably) quiet in a public place. They also may learn that although at home, it’s totally fine to flip pages in the book, ask to have the same book read over and over, or ask to quit reading one book halfway through and switch to another one, when they are in a group setting, they need to sit still and listen to the book that someone else has chosen. More benefits are listed  here.", address:"Forster City Library"),

        CalendarEvent(title: "Yosemite Hiking: Chinese Student Association", image : "",detail: "Yosemite’s classic hikes like Half Dome, Yosemite Falls and the Mist Trail are not to be missed. After all, these trails offer up some of the most iconic national park experiences and views anywhere.  But that also means you have to share these amazing spots with the crowds.  If you’ve been there, done that, or want to get away from the masses without missing out on some of Yosemite National Park’s best views, we’ve got a few suggestions.", address: "Northside Drive, Yosemite Valley, CA 95389"),

        CalendarEvent(title: "Visiting Zoo", image : "",detail: "Need to visit SF Zoo this weekend together with Matthew", address: "Sloat Blvd. at the Great Highway, San Francisco, CA 94132"),

        CalendarEvent(title: "Thanksgiving dinner", image : "",detail: "Thanksgiving is comming soon! Let us get together to celebrate this festival. We will cook the meal for all of you guys. That's fine if you bring a meal to share. But if you don't have time to cook, please just come. We will have enough food for everyone.", address: "585 Shell Parkway, Redwood City, 94065")]
}

var myCalendarModel = CalendarModel();
