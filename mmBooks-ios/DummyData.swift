//
//  DummyData.swift
//  mmBooks-ios
//
//  Created by eidoshack on 11/8/18.
//  Copyright © 2018 PADC. All rights reserved.
//

import Foundation

class DummyData {
    
    static func createAdvertisement() -> Advertisement {
        return Advertisement(image: "adsBook.jpg", title: "Book Advertisement", description: """
        Just want to show visually. If you want to create a view which is larger than the size of ViewController then you can increase the height of ViewController form size inspector. Choose Simulated Size to Freeform and set required height as shown in image and now your viewController has the mentioned height.

        Just want to show visually. If you want to create a view which is larger than the size of ViewController then you can increase the height of ViewController form size inspector. Choose Simulated Size to Freeform and set required height as shown in image and now your viewController has the mentioned height.

        Just want to show visually. If you want to create a view which is larger than the size of ViewController then you can increase the height of ViewController form size inspector. Choose Simulated Size to Freeform and set required height as shown in image and now your viewController has the mentioned height.
        """)
    }
    
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
    
        let bookOne = Book(title: "Koe Na Win, A Leader of A Gang", author: "Tun Lin Aung", releaseDate: "31-Oct-2018", coverPhoto: "popular_one.jpg", description: """
        In the above code we set the zoomScale to 1.0 and specify the zoom factor for the minimum and maximum zooming. On running the app, it will start off with the same scale factor as previously shown(zoomScale of 1.0). When you pinch the view, you will be able to scroll it up and down to its maximum and minimum scale factors. We set a large number (4.0) for the maximumZoomScale, thus you can scale up the image to 4 times its size, which isn’t so good as the resulting image when scaled up to a size larger than the original will be blurry. We’ll change this in the next step back to its default of 1.0.
        """)
        let bookTwo = Book(title: "Life of Shaolin Soccer ", author: "Min Myat Thu Ya", releaseDate: "30-Oct-2018", coverPhoto: "popular_two.jpg", description: """
        In the above code we set the zoomScale to 1.0 and specify the zoom factor for the minimum and maximum zooming. On running the app, it will start off with the same scale factor as previously shown(zoomScale of 1.0). When you pinch the view, you will be able to scroll it up and down to its maximum and minimum scale factors. We set a large number (4.0) for the maximumZoomScale, thus you can scale up the image to 4 times its size, which isn’t so good as the resulting image when scaled up to a size larger than the original will be blurry. We’ll change this in the next step back to its default of 1.0.
        """)
        let bookThree = Book(title: "The Man with A White Elephant", author: "Wait Zar", releaseDate: "29-Oct-2018", coverPhoto: "popular_three.jpg", description: """
        In the above code we set the zoomScale to 1.0 and specify the zoom factor for the minimum and maximum zooming. On running the app, it will start off with the same scale factor as previously shown(zoomScale of 1.0). When you pinch the view, you will be able to scroll it up and down to its maximum and minimum scale factors. We set a large number (4.0) for the maximumZoomScale, thus you can scale up the image to 4 times its size, which isn’t so good as the resulting image when scaled up to a size larger than the original will be blurry. We’ll change this in the next step back to its default of 1.0.
        """)
        let bookFour = Book(title: "Seven Steps of Hand Martial Art (2) ", author: "Min Thein Kha", releaseDate: "28-Oct-2018", coverPhoto: "popular_four.jpg", description: """
        In the above code we set the zoomScale to 1.0 and specify the zoom factor for the minimum and maximum zooming. On running the app, it will start off with the same scale factor as previously shown(zoomScale of 1.0). When you pinch the view, you will be able to scroll it up and down to its maximum and minimum scale factors. We set a large number (4.0) for the maximumZoomScale, thus you can scale up the image to 4 times its size, which isn’t so good as the resulting image when scaled up to a size larger than the original will be blurry. We’ll change this in the next step back to its default of 1.0.
        """)
        let bookFive = Book(title: "Ananda Temple in Bagan", author: "Min Luu", releaseDate: "29-Oct-2018", coverPhoto: "popular_five.jpg", description: """
        In the above code we set the zoomScale to 1.0 and specify the zoom factor for the minimum and maximum zooming. On running the app, it will start off with the same scale factor as previously shown(zoomScale of 1.0). When you pinch the view, you will be able to scroll it up and down to its maximum and minimum scale factors. We set a large number (4.0) for the maximumZoomScale, thus you can scale up the image to 4 times its size, which isn’t so good as the resulting image when scaled up to a size larger than the original will be blurry. We’ll change this in the next step back to its default of 1.0.
        """)
        
        let bookSix = Book(title: "Seven Steps of Hand Martial Art (2) ", author: "Min Thein Kha", releaseDate: "28-Oct-2018", coverPhoto: "popular_six.jpg", description: """
        In the above code we set the zoomScale to 1.0 and specify the zoom factor for the minimum and maximum zooming. On running the app, it will start off with the same scale factor as previously shown(zoomScale of 1.0). When you pinch the view, you will be able to scroll it up and down to its maximum and minimum scale factors. We set a large number (4.0) for the maximumZoomScale, thus you can scale up the image to 4 times its size, which isn’t so good as the resulting image when scaled up to a size larger than the original will be blurry. We’ll change this in the next step back to its default of 1.0.
        """)
        let bookSeven = Book(title: "Ananda Temple in Bagan", author: "Min Luu", releaseDate: "29-Oct-2018", coverPhoto: "popular_seven.jpg", description: """
        In the above code we set the zoomScale to 1.0 and specify the zoom factor for the minimum and maximum zooming. On running the app, it will start off with the same scale factor as previously shown(zoomScale of 1.0). When you pinch the view, you will be able to scroll it up and down to its maximum and minimum scale factors. We set a large number (4.0) for the maximumZoomScale, thus you can scale up the image to 4 times its size, which isn’t so good as the resulting image when scaled up to a size larger than the original will be blurry. We’ll change this in the next step back to its default of 1.0.
        """)
        let bookEight = Book(title: "Ananda Temple in Bagan", author: "Min Luu", releaseDate: "29-Oct-2018", coverPhoto: "popular_eight.jpg", description: """
        In the above code we set the zoomScale to 1.0 and specify the zoom factor for the minimum and maximum zooming. On running the app, it will start off with the same scale factor as previously shown(zoomScale of 1.0). When you pinch the view, you will be able to scroll it up and down to its maximum and minimum scale factors. We set a large number (4.0) for the maximumZoomScale, thus you can scale up the image to 4 times its size, which isn’t so good as the resulting image when scaled up to a size larger than the original will be blurry. We’ll change this in the next step back to its default of 1.0.
        """)
        let bookNine = Book(title: "Ananda Temple in Bagan", author: "Min Luu", releaseDate: "29-Oct-2018", coverPhoto: "popular_nine.jpg", description: """
        In the above code we set the zoomScale to 1.0 and specify the zoom factor for the minimum and maximum zooming. On running the app, it will start off with the same scale factor as previously shown(zoomScale of 1.0). When you pinch the view, you will be able to scroll it up and down to its maximum and minimum scale factors. We set a large number (4.0) for the maximumZoomScale, thus you can scale up the image to 4 times its size, which isn’t so good as the resulting image when scaled up to a size larger than the original will be blurry. We’ll change this in the next step back to its default of 1.0.
        """)
        let bookTen = Book(title: "Ananda Temple in Bagan", author: "Min Luu", releaseDate: "29-Oct-2018", coverPhoto: "popular_ten.jpg", description: """
        In the above code we set the zoomScale to 1.0 and specify the zoom factor for the minimum and maximum zooming. On running the app, it will start off with the same scale factor as previously shown(zoomScale of 1.0). When you pinch the view, you will be able to scroll it up and down to its maximum and minimum scale factors. We set a large number (4.0) for the maximumZoomScale, thus you can scale up the image to 4 times its size, which isn’t so good as the resulting image when scaled up to a size larger than the original will be blurry. We’ll change this in the next step back to its default of 1.0.
        """)
        
        bookInfo = [bookOne, bookTwo, bookThree, bookFour, bookFive, bookSix, bookSeven, bookEight, bookNine, bookTen]
        
        return bookInfo
    }
    
}
