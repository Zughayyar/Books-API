package com.axsosacademy.booksapi.controllers;

import com.axsosacademy.booksapi.models.Book;
import com.axsosacademy.booksapi.services.BookService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class BookApi {
    private final BookService bookService;

    public BookApi(BookService bookService) {
        this.bookService = bookService;
    }

    @RequestMapping(value = "/api/books", method = RequestMethod.GET)
    public List<Book> index() {
        return bookService.getAllBooks();
    }

    @RequestMapping(value = "/api/books", method = RequestMethod.POST)
    public Book create(
            @RequestParam(value = "title") String title,
            @RequestParam(value = "description") String desc,
            @RequestParam(value = "language") String lang,
            @RequestParam(value = "pages") Integer numOfPages
    ) {
        Book book = new Book(title,desc,lang,numOfPages);
        return bookService.createBook(book);
    }

    @RequestMapping(value = "/api/books/{id}", method = RequestMethod.GET)
    public Book show(@PathVariable("id") Long id) {
        return bookService.findBook(id);
    }

    @PutMapping("/api/books/{id}")
    public Book update(
            @PathVariable("id") Long id,
            @RequestParam(value = "title") String title,
            @RequestParam(value = "description") String desc,
            @RequestParam(value = "language") String lang,
            @RequestParam(value = "pages") Integer numOfPages
    ) {
        return bookService.updateBook(id, title, desc, lang, numOfPages);
    }

    @DeleteMapping("/api/books/{id}")
    public void delete(@PathVariable("id") Long id) {
        bookService.deleteBook(id);
    }


    }
