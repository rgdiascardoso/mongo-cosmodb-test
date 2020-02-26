package com.renatocardoso.mongocosmodbtest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Optional;

@RestController
public class BookController {

    @Autowired
    private BookRepository repository;

    @PostMapping("/books/new")
    public String saveBook(@RequestBody Book book){
        repository.save(book);
        return "Added book with ID: " + book.getBookId();
    }

    @GetMapping("/books")
    public List<Book> getBooks(){
        return repository.findAll();
    }

    @GetMapping("/books/{bookId}")
    public Optional<Book> getBook(@PathVariable("bookId") String bookId){
        return repository.findById(bookId);
    }

    @DeleteMapping("/books/delete/{bookId}")
    public String deleteBook(@PathVariable("bookId") String bookId){
        repository.deleteById(bookId);
        return "Deleted book with ID: " + bookId;
    }
}
