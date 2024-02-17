package com.desafio.loja.dtos;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record CreditCardDto(@NotBlank String card_number, @NotNull int value, @NotNull int cvv, @NotBlank String card_holder_name, @NotBlank String exp_date) {
}
