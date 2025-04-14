Feature: Búsqueda de películas en IMDb

  Como usuario de IMDb
  Quiero poder buscar películas por su nombre
  Para ver detalles relevantes o recibir mensajes adecuados en caso de no encontrar resultados

  @BusquedaExitosa
  Scenario: Búsqueda exitosa de una película
    Given el usuario se encuentra en la página principal de IMDb
    When el usuario ingresa el nombre "Inception" en la barra de búsqueda
    And presiona la tecla Enter o hace clic en el botón de búsqueda
    Then se debe mostrar una página con los detalles de la película "Inception"
    And se debe mostrar su calificación, director y elenco

  @BusquedaInexistente
  Scenario: Búsqueda de una película inexistente
    Given el usuario se encuentra en la página principal de IMDb
    When el usuario ingresa el nombre "PelículaInventada123" en la barra de búsqueda
    And presiona la tecla Enter o hace clic en el botón de búsqueda
    Then se debe mostrar un mensaje indicando que no se encontraron resultados para "PelículaInventada123"

  @AutocompletadoBusqueda
  Scenario: Autocompletado en la barra de búsqueda
    Given el usuario está en la página principal de IMDb
    When el usuario comienza a escribir "The Godf" en la barra de búsqueda
    Then se deben mostrar sugerencias de autocompletado como "The Godfather"
    And el usuario puede seleccionar una de las sugerencias
