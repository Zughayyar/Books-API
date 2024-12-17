package com.axsosacademy.booksapi.controllers;

import com.axsosacademy.booksapi.models.Book;
import com.axsosacademy.booksapi.services.BookService;
import jakarta.validation.Valid;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

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

    @GetMapping("/books/new")
    public String newBook(@ModelAttribute Book book) {
        return "newBook";
    }

    @PostMapping("/books/new/create")
    public String create(
            @RequestParam(value = "title") String title,
            @RequestParam(value = "description") String desc,
            @RequestParam(value = "language") String lang,
            @RequestParam(value = "pages") Integer numOfPages
    ) {
        Book book = new Book(title, desc, lang, numOfPages);
        bookService.createBook(book);
        return "redirect:/books";
    }

    @PostMapping("/books")
    public String createNewBook(@Valid @ModelAttribute Book book, BindingResult bindingResult) {
        if (bindingResult.hasErrors()) {
            return "newBook";
        }
        else {
            bookService.createBook(book);
            return "redirect:/books";
        }
    }
}
