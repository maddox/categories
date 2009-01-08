//
//  NSDate-Calendar.h
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


@interface NSDate(Calendar)

  +(id)today;
  -(int)year;
  -(int)month;
  -(int)day;
  -(int)weekday;
  -(NSDate *)firstDayOfCurrentMonth;
  -(NSDate *)firstDayOfCurrentWeek;
  -(NSDate *)dateByAddingYears:(int)years months:(int)months days:(int)days hours:(int)hours minutes:(int)minutes seconds:(int)seconds;

@end
