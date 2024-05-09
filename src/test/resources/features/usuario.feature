Feature: Como usuario quiero probar las funcionalidades de registro y logeo

  Como usuario
  Quiero poder registrarme e iniciar sesion en la web
  Entonces podre realizar mis operaciones

@registroUsuario
  Scenario Outline: Verificar el registro de usuario
    Given se abre la pagina web
    When el usuario selecciona registrar
    And el usuario llena el campo "<nombre>", "<apellido>"
    And el usuario llena el campo direccion "<direccion>"
    And el usuario llena el campo ciudad "<ciudad>"
    And el usuario llena el campo provincia "<provincia>"
    And el usuario llena el campo codigo postal "<codigo>"
    And el usuario llena el campo telefono "<telefono>"
    And el usuario llena el campo ssn "<ssn>"
    And el usuario llena el campo username "<username>"
    And el usuario llena el campo password "<password>"
    And el usuario llena el campo confirmar password "<confpassword>"
    And el usuario selecciona enviar
    Then el texto buscado es "<resul>"
    Examples:
      | nombre      | apellido   | telefono   | ssn          | direccion           | ciudad   | provincia   | codigo  | username | password | confpassword| resul |
      | Nayelly     | Valenzuela |  964926164 | 987654321 | calle lima 123      | lima     | Lima        | 11001   | naye0103     | Clave123 | Clave123    | Your account was created successfully. You are now logged in.  |


@loginUsuario
  Scenario Outline: Realizar logeo de usuario
    Given se abre la pagina web
    When el usuario se logea "<username>", "<password>"
    And el usuario selecciona ingresar
    Then el usuario esta en la pagina de inicio
    Examples:
    | username | password |
    | naye0103     | Clave123 |

