package com.desafio.loja.repositories;

import com.desafio.loja.models.ClientsModel;
import com.desafio.loja.models.ProductModel;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.UUID;

@Repository
public interface ClientRepository extends JpaRepository<ClientsModel, UUID> {
}
