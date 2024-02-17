package com.desafio.loja.repositories;

import com.desafio.loja.models.ProductModel;
import com.desafio.loja.models.TransactionModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface TransactionRepository extends JpaRepository<TransactionModel, UUID> {
    List<TransactionModel> findAllByClientid(UUID id);
}
