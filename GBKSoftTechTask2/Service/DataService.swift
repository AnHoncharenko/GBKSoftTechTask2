//
//  DataService.swift
//  GBKSoftTechTask2
//
//  Created by Anton Honcharenko on 18.11.2020.
//

import Foundation

class DataService {
    static let shared = DataService()
    var allYearsStatistic: [YearStatistic] = [.init(year: "2012", usersCount: 45),
                                                  .init(year: "2013", usersCount: 21),
                                                  .init(year: "2014", usersCount: 90),
                                                  .init(year: "2015", usersCount: 8),
                                                  .init(year: "2016", usersCount: 34),
                                                  .init(year: "2017", usersCount: 72),
                                                  .init(year: "2018", usersCount: 55)]
    var allDaysMoneyStatistic: [DayMoneyStatistic] = [.init(day: "January 01", money: "$2,048"),
                                                          .init(day: "January 02", money: "$1,8"),
                                                          .init(day: "January 03", money: "$22,2"),
                                                          .init(day: "January 04", money: "$13,5"),
                                                          .init(day: "January 05", money: "$1,7"),
                                                          .init(day: "January 06", money: "$1,1"),
                                                          .init(day: "January 07", money: "$0,8"),
                                                          .init(day: "January 08", money: "$567,9"),
                                                          .init(day: "January 09", money: "$92,1"),
                                                          .init(day: "January 10", money: "$34,0"),
                                                          .init(day: "January 11", money: "$2,5"),
                                                          .init(day: "January 12", money: "$9,3"),
                                                          .init(day: "January 13", money: "$42,2")]
}

struct YearStatistic {
    var year: String
    var usersCount: Int
}

struct DayMoneyStatistic {
    var day: String
    var money: String
}
