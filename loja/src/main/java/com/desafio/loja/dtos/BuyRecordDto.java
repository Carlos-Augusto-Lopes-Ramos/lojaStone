package com.desafio.loja.dtos;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

import java.util.UUID;

public record BuyRecordDto(@NotBlank UUID client_id, @NotBlank String name, @NotNull int total_to_pay, @NotNull CreditCardDto credit_card) {
}
