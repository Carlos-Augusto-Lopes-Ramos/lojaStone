package com.desafio.loja.controllers;

import com.desafio.loja.dtos.BuyRecordDto;
import com.desafio.loja.dtos.ClientRecordDto;
import com.desafio.loja.dtos.ProductRecordDto;
import com.desafio.loja.models.ClientsModel;
import com.desafio.loja.models.ProductModel;
import com.desafio.loja.models.TransactionModel;
import com.desafio.loja.repositories.ClientRepository;
import com.desafio.loja.repositories.ProductRepository;
import com.desafio.loja.repositories.TransactionRepository;
import jakarta.validation.Valid;
import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.cache.annotation.Cacheable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

@RestController
public class LojaController {

    @Autowired
    ProductRepository productRepository;
    @Autowired
    TransactionRepository transactionRepository;
    @Autowired
    ClientRepository clientRepository;

    @PostMapping("/starstore/product")
    public ResponseEntity<Object> createProduct(@RequestBody @Valid ProductRecordDto productData) {
        ProductModel product = new ProductModel();
        BeanUtils.copyProperties(productData, product);
        return ResponseEntity.status(HttpStatus.OK).body(productRepository.save(product));
    }

    @GetMapping("/starstore/products")
    public ResponseEntity<List<ProductModel>> getProducts() {
        return ResponseEntity.status(HttpStatus.OK).body(productRepository.findAll());
    }

    @PostMapping("/starstore/cclient")
    public ResponseEntity<Object> createClient(@RequestBody @Valid ClientRecordDto clientData) {
        ClientsModel client = new ClientsModel();
        BeanUtils.copyProperties(clientData, client);
        return ResponseEntity.status(HttpStatus.OK).body(clientRepository.save(client));
    }

    @PostMapping("/starstore/buy")
    public ResponseEntity<TransactionModel> buyRequest(@RequestBody @Valid BuyRecordDto buyData) {
        TransactionModel transactction = new TransactionModel();
        transactction.setClientId(buyData.client_id());
        transactction.setValue(buyData.total_to_pay());
        Date date = new Date();
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
        String dateFormated = sdf.format(date);
        transactction.setDate(dateFormated);
        transactction.setCard_number(buyData.credit_card().card_number());
        return ResponseEntity.status(HttpStatus.OK).body(transactionRepository.save(transactction));
    }

    @GetMapping("/starstore/history")
    public ResponseEntity<List<TransactionModel>> transactions() {
        return ResponseEntity.status(HttpStatus.OK).body(transactionRepository.findAll());
    }

    @Cacheable("historybyid")
    @GetMapping("/starstore/history/{clientId}")
    public ResponseEntity<List<TransactionModel>> transactionsPerClients(@PathVariable(name = "clientId") UUID id) {
        List<TransactionModel> transactions = transactionRepository.findAllByClientid(id);
        return ResponseEntity.status(HttpStatus.OK).body(transactions);
    }
}
