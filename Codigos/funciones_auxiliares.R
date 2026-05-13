# 1. Definición de colores para el proyecto
colores <- list(
  binomial = "#69b3a2",
  poisson  = "#404080",
  geometrica = "#f4a261",
  hipergeomet = "#e76f51",
  neg_binom = "#2a9d8f",
  principal = "#edc198"
)

# 2. Función para redondear a 7 decimales
redondear7 <- function(x) {
  format(round(x, 7), nsmall = 7)
}

# 3. Función para crear tablas bonitas (gt)
tabla_gt <- function(df, titulo, color_cabecera = "#edc198") {
  df %>%
    gt() %>%
    tab_header(title = titulo) %>%
    tab_options(
      column_labels.background.color = color_cabecera,
      table.width = pct(100)
    )
}

# 4. Función para convertir colores Hex a RGBA (para gráficas)
hex_a_rgba <- function(hex, alpha = 0.6) {
  rgb_val <- col2rgb(hex)
  paste0("rgba(", rgb_val[1], ",", rgb_val[2], ",", rgb_val[3], ",", alpha, ")")
}