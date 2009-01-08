//
//  NSDate-Calendar.m
//  Motivator
//
//  Created by Jon Maddox on 11/26/08.
//
//
//  NSCalendarDate does not exist in CocoaTouch on the iPhone. So I made this category to put 
//  a little of the support I needed from NSCalendarDate into NSDate
//
//
//  The MIT License
//  
//  Copyright (c) 2008 Mustache, Inc
//  
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//  
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//  
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.


#import "NSDate-Calendar.h"


@implementation NSDate(Calendar)

+ (id)today{
  NSDate *theDate = [NSDate date];
  
  NSDateComponents *comps = [[NSCalendar currentCalendar] components:(NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:theDate];
  [comps setYear:[theDate year]];
  [comps setMonth:[theDate month]];
  [comps setDay:[theDate day]];
  [comps setHour:0];
  [comps setMinute:0];
  [comps setSecond:0];
  return [[NSCalendar currentCalendar] dateFromComponents:comps];
}

- (int)year{
  NSDateComponents *comps = [[NSCalendar currentCalendar] components:(NSYearCalendarUnit) fromDate:self];
  return [comps year];
}

- (int)month{
  NSDateComponents *comps = [[NSCalendar currentCalendar] components:(NSMonthCalendarUnit) fromDate:self];
  return [comps month];
}

- (int)day{
  NSDateComponents *comps = [[NSCalendar currentCalendar] components:(NSDayCalendarUnit) fromDate:self];
  return [comps day];
}

- (int)weekday{
  NSDateComponents *comps = [[NSCalendar currentCalendar] components:(NSWeekdayCalendarUnit) fromDate:self];
  return [comps weekday];
}

- (NSDate *)firstDayOfCurrentMonth{
  NSDateComponents *comps = [[NSCalendar currentCalendar] components:(NSYearCalendarUnit | NSMonthCalendarUnit | NSDayCalendarUnit) fromDate:self];
  [comps setDay:1];
  
  return [[NSCalendar currentCalendar] dateFromComponents:comps];
  
}

- (NSDate *)firstDayOfCurrentWeek{
  NSDateComponents *adjustmentComps = [[NSDateComponents alloc] init];
  [adjustmentComps setDay:-([self weekday]-1)];
  NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:adjustmentComps toDate:self options:0];
  [adjustmentComps release];
  return newDate;
}

- (NSDate *)dateByAddingYears:(int)years months:(int)months days:(int)days hours:(int)hours minutes:(int)minutes seconds:(int)seconds{
  NSDateComponents *adjustmentComps = [[NSDateComponents alloc] init];
  [adjustmentComps setYear:years];
  [adjustmentComps setMonth:months];
  [adjustmentComps setDay:days];
  [adjustmentComps setHour:hours];
  [adjustmentComps setMinute:minutes];
  [adjustmentComps setSecond:seconds];
  NSDate *newDate = [[NSCalendar currentCalendar] dateByAddingComponents:adjustmentComps toDate:self options:0];
  [adjustmentComps release];
  return newDate;
}




@end
