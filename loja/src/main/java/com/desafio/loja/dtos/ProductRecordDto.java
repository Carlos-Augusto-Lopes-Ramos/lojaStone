package com.desafio.loja.dtos;

import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;

public record ProductRecordDto(@NotBlank String title, @NotNull int price, @NotBlank String zipcode, @NotBlank String seller, @NotBlank String thumbnailHd, @NotBlank String date) {
}
