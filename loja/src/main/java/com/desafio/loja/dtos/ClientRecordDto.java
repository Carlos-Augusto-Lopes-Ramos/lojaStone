package com.desafio.loja.dtos;

import jakarta.validation.constraints.NotBlank;

public record ClientRecordDto(@NotBlank String name) {
}
