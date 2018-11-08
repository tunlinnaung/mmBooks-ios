//
//  DummyData.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/8/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import Foundation

class DummyData {
    
    static func createPopularBooks() -> [PopularBook] {
        var popularBooks: [PopularBook] = []
        
        let bookOne = PopularBook(coverPhoto: "popular_one.jpg")
        let bookTwo = PopularBook(coverPhoto: "popular_two.jpg")
        let bookThree = PopularBook(coverPhoto: "popular_three.jpg")
        let bookFour = PopularBook(coverPhoto: "popular_four.jpg")
        let bookFive = PopularBook(coverPhoto: "popular_five.jpg")
        let bookSix = PopularBook(coverPhoto: "popular_six.jpg")
        let bookSeven = PopularBook(coverPhoto: "popular_seven.jpg")
        let bookEight = PopularBook(coverPhoto: "popular_eight.jpg")
        let bookNine = PopularBook(coverPhoto: "popular_nine.jpg")
        let bookTen = PopularBook(coverPhoto: "popular_ten.jpg")
        
        popularBooks = [bookOne, bookTwo, bookThree, bookFour, bookFive, bookSix, bookSeven, bookEight, bookNine, bookTen]
        return popularBooks
    }
    
    static func createBookInfo() -> [Book] {
        var bookInfo: [Book] = []
    
        let bookOne = Book(title: "Koe Na Win, A Leader of A Gang", releaseDate: "31-Oct-2018", coverPhoto: "popular_one.jpg")
        let bookTwo = Book(title: "Life of Shaolin Soccer ", releaseDate: "30-Oct-2018", coverPhoto: "popular_two.jpg")
        let bookThree = Book(title: "The Man with A White Elephant", releaseDate: "29-Oct-2018", coverPhoto: "popular_three.jpg")
        let bookFour = Book(title: "Seven Steps of Hand Martial Art (2) ", releaseDate: "28-Oct-2018", coverPhoto: "popular_four.jpg")
        let bookFive = Book(title: "Ananda Temple in Bagan", releaseDate: "29-Oct-2018", coverPhoto: "popular_five.jpg")
        
        bookInfo = [bookOne, bookTwo, bookThree, bookFour, bookFive]
        
        return bookInfo
    }
    
}
