package com.axsosacademy.booksapi.controllers;

import com.axsosacademy.booksapi.models.Book;
import com.axsosacademy.booksapi.services.BookService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;

import java.util.List;

@Controller
public class BookController {
    private final BookService bookService;

    public BookController(BookService bookService) {
        this.bookService = bookService;
    }

    @GetMapping("/books")
    public String books(Model model) {
        List<Book> books = bookService.getAllBooks();
        model.addAttribute("books", books);
        return "books";
    }

    @GetMapping("/books/{id}")
    public String show(Model model, @PathVariable Long id) {
        model.addAttribute("book", bookService.findBook(id));
        return "show";
    }
}
