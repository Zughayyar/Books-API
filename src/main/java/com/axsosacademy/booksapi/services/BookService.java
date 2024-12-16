package com.axsosacademy.booksapi.services;

import com.axsosacademy.booksapi.models.Book;
import com.axsosacademy.booksapi.repositories.BookRepository;
import jakarta.transaction.Transactional;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class BookService {
    private final BookRepository bookRepository;

    public BookService(BookRepository bookRepository) {
        this.bookRepository = bookRepository;
    }

    // returns all the books
    public List<Book> getAllBooks() {
        return bookRepository.findAll();
    }

    // create a book
    public Book createBook(Book book) {
        return bookRepository.save(book);
    }

    // retrieve a book
    public Book findBook(Long id) {
        return bookRepository.findById(id).orElse(null);
    }

    // update a book
    @Transactional
    public Book updateBook(Long id, String title, String desc, String lang, Integer numOfPages) {
        Optional<Book> optionalBook = bookRepository.findById(id);
        if (optionalBook.isPresent()) {
            Book bookToUpdate = optionalBook.get();
            bookToUpdate.setTitle(title);
            bookToUpdate.setDescription(desc);
            bookToUpdate.setLanguage(lang);
            bookToUpdate.setNumberOfPages(numOfPages);
            return bookRepository.save(bookToUpdate); // Save updates to the database
        } else {
            return null; // Or throw an exception if the book is not found
        }
    }

    // delete a book
    public void deleteBook(Long id) {
        bookRepository.deleteById(id);
    }



}
