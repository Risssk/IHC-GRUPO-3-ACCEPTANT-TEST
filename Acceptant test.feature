Feature: Registro de cuenta personal

  Scenario: Registro exitoso de una cuenta personal
    Given el usuario está en la página de registro
    When ingresa un nombre de usuario válido
    And ingresa un correo electrónico válido
    And ingresa una contraseña válida
    And selecciona sus hábitos (transporte, dieta, reciclaje)
    Then el sistema debe validar los datos
    And crear una nueva cuenta
    And enviar un correo de verificación
    And redirigir al usuario a la pantalla de bienvenida


Feature: Registro de cuenta familiar

  Scenario: Registro exitoso de una cuenta familiar
    Given el usuario está en la página de registro
    When ingresa el nombre de usuario, correo, y contraseña
    And ingresa el número de miembros de la familia y su consumo de energía
    Then el sistema debe validar los datos ingresados
    And crear una nueva cuenta familiar
    And enviar un correo de verificación
    And redirigir al usuario a la pantalla de bienvenida

Feature: Registro de cuenta de institución educativa

  Scenario: Registro exitoso de cuenta de institución educativa
    Given el usuario está en la página de registro
    When ingresa el nombre de la institución, correo, contraseña, número de estudiantes, y consumo de energía
    Then el sistema debe validar los datos
    And crear la cuenta de la institución
    And enviar un correo de verificación
    And redirigir al usuario a la pantalla de bienvenida
    
Feature: Registro de cuenta de institución educativa

  Scenario: Registro exitoso de cuenta de institución educativa
    Given el usuario está en la página de registro
    When ingresa el nombre de la institución, correo, contraseña, número de estudiantes, y consumo de energía
    Then el sistema debe validar los datos
    And crear la cuenta de la institución
    And enviar un correo de verificación
    And redirigir al usuario a la pantalla de bienvenida
    

Feature: Inicio de sesión

  Scenario: Inicio de sesión exitoso
    Given el usuario está en la página de inicio de sesión
    When ingresa su correo electrónico y contraseña
    Then el sistema debe validar las credenciales
    And permitir al usuario acceder a su perfil

Feature: Recuperación de contraseña

  Scenario: Recuperación de contraseña exitosa
    Given el usuario está en la página de inicio de sesión
    When hace clic en "¿Olvidaste tu contraseña?"
    And ingresa su correo registrado
    Then el sistema debe enviar un enlace de recuperación al correo

Feature: Cálculo de huella de carbono personal

  Scenario: Cálculo exitoso de huella de carbono
    Given el usuario está en la página de la calculadora
    When ingresa su información de transporte, energía, y dieta
    Then el sistema debe calcular la huella de carbono
    And mostrar los resultados en una gráfica

Feature: Cálculo de huella de carbono familiar

  Scenario: Cálculo exitoso de huella de carbono familiar
    Given el usuario ha ingresado datos del hogar (energía, transporte, dieta)
    When hace clic en "Calcular huella de carbono"
    Then el sistema debe calcular la huella de carbono familiar
    And mostrar los resultados en una gráfica

Feature: Cálculo de huella de carbono de institución educativa

  Scenario: Cálculo exitoso de huella de carbono del campus
    Given el usuario ha ingresado datos del consumo energético y transporte escolar
    When hace clic en "Calcular huella de carbono"
    Then el sistema debe calcular la huella de carbono de la institución
    And mostrar los resultados en una gráfica

Feature: Registro de actividades personales

  Scenario: Registro exitoso de actividades personales
    Given el usuario está en la página de registro de actividades
    When ingresa datos de transporte y consumo de energía
    Then el sistema debe actualizar el seguimiento de la huella de carbono diaria

Feature: Registro de actividades familiares

  Scenario: Registro exitoso de actividades familiares
    Given el usuario ha seleccionado "Cuenta Familiar"
    When ingresa datos de transporte y energía del hogar
    Then el sistema debe actualizar la huella de carbono familiar
    And mostrar una gráfica del impacto ambiental familiar

Feature: Registro de actividades del campus

  Scenario: Registro exitoso de actividades del campus
    Given el usuario ha seleccionado "Cuenta de Institución Educativa"
    When ingresa datos sobre el consumo de energía, transporte escolar y residuos
    Then el sistema debe actualizar el seguimiento de la huella de carbono del campus
    And mostrar los resultados en una gráfica

Feature: Recomendaciones personalizadas para usuarios individuales

  Scenario: Recomendaciones personalizadas exitosas
    Given el usuario ha registrado sus hábitos de transporte y energía
    When hace clic en "Ver recomendaciones"
    Then el sistema debe analizar los datos ingresados
    And mostrar recomendaciones personalizadas para reducir la huella de carbono

Feature: Recomendaciones personalizadas para familias

  Scenario: Recomendaciones personalizadas basadas en datos familiares
    Given el usuario ha registrado los hábitos de transporte y consumo de energía familiar
    When hace clic en "Ver recomendaciones"
    Then el sistema debe mostrar sugerencias específicas para reducir la huella de carbono familiar

Feature: Recomendaciones para instituciones educativas

  Scenario: Recomendaciones para la institución educativa
    Given el representante ha registrado los hábitos de energía y transporte del campus
    When hace clic en "Ver recomendaciones"
    Then el sistema debe ofrecer sugerencias para optimizar el consumo energético y la gestión de residuos

Feature: Comparativas de huella de carbono

  Scenario: Comparativa de huella de carbono exitosa
    Given el usuario está en la página de comparativas
    When selecciona un grupo de comparación (amigos, familia, media regional)
    Then el sistema debe mostrar una comparación gráfica de su huella de carbono

Feature: Rankings de sostenibilidad

  Scenario: Visualización de ranking de sostenibilidad
    Given el usuario ha completado su perfil y calculado su huella de carbono
    When hace clic en la sección de "Rankings"
    Then el sistema debe mostrar su posición comparada con otros usuarios
    And desglosar las áreas donde puede mejorar

Feature: Acceso a recursos educativos

  Scenario: Acceso a recursos educativos
    Given el usuario está en la sección educativa
    When hace clic en "Recursos"
    Then el sistema debe mostrar una lista de artículos y videos sobre sostenibilidad
    And permitir al usuario seleccionar y visualizar el contenido de su interés

Feature: Juegos y quizzes educativos

  Scenario: Participación en un quiz educativo
    Given el usuario está en la sección de juegos y quizzes
    When selecciona un quiz sobre sostenibilidad y responde todas las preguntas
    Then el sistema debe mostrar el puntaje final
    And proporcionar retroalimentación sobre las respuestas

Feature: Integración con redes sociales

  Scenario: Compartir logros en redes sociales
    Given el usuario ha alcanzado un logro de sostenibilidad
    When hace clic en "Compartir en redes sociales"
    Then el sistema debe permitir publicar el logro en plataformas como Facebook, Twitter e Instagram

Feature: Gamificación y logros

  Scenario: Ganar puntos y desbloquear logros
    Given el usuario ha completado una acción ecológica
    When el sistema calcula el impacto positivo
    Then el usuario debería recibir puntos
    And desbloquear logros en función de su progreso    

Feature: Notificaciones y recordatorios

  Scenario: Recibir notificaciones sobre el progreso
    Given el usuario ha activado las notificaciones en su perfil
    When el sistema detecta un progreso significativo o la falta de registro de actividades
    Then el usuario debe recibir una notificación con un resumen de su progreso
    And recordatorios para mantener sus hábitos sostenibles
