# 🗄️ Creación de Tablas en SQL

## 📖 Descripción

La instrucción `CREATE TABLE` se utiliza para crear una nueva tabla dentro de una base de datos. Una tabla es una estructura organizada en filas y columnas donde se almacenan los datos de una aplicación o sistema.

Cada columna debe definir un nombre, un tipo de dato y, si es necesario, restricciones que aseguren la integridad de la información.

---

# 🛠 Sintaxis General

```sql
CREATE TABLE nombre_tabla (
    columna1 tipo_dato restricciones,
    columna2 tipo_dato restricciones,
    columna3 tipo_dato restricciones
);
```

---

# 📌 Ejemplo

```sql
CREATE TABLE basico_ejercicio_005 (
    id INT AUTO_INCREMENT PRIMARY KEY,
    dueño VARCHAR(120) NOT NULL,
    marca VARCHAR(80) NOT NULL,
    precio DECIMAL(10,2) NOT NULL DEFAULT 0,
    estado ENUM('activo','revision','inactivo') NOT NULL DEFAULT 'activo',
    creado_en DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);
```

---

# 🔄 Proceso de Creación

## 1. Definir el nombre de la tabla

El primer paso consiste en asignar un nombre descriptivo que identifique la información que almacenará.

```sql
CREATE TABLE basico_ejercicio_005
```

---

## 2. Crear las columnas

Cada columna representa un atributo que será almacenado en la tabla.

Ejemplo:

```sql
dueño VARCHAR(120)
marca VARCHAR(80)
precio DECIMAL(10,2)
```

Cada una tiene un propósito específico:

- **dueño:** Nombre del propietario.
- **marca:** Marca de la motocicleta.
- **precio:** Valor del servicio o reparación.

---

## 3. Definir el tipo de dato

Cada columna debe indicar qué tipo de información puede almacenar.

| Tipo de dato | Descripción |
|--------------|-------------|
| `INT` | Números enteros. |
| `VARCHAR(n)` | Texto de longitud variable. |
| `DECIMAL(10,2)` | Valores numéricos con decimales. |
| `ENUM` | Lista de valores permitidos. |
| `DATETIME` | Fecha y hora. |

---

## 4. Agregar restricciones

Las restricciones ayudan a mantener la calidad e integridad de los datos.

### PRIMARY KEY

Identifica de forma única cada registro.

```sql
PRIMARY KEY
```

---

### AUTO_INCREMENT

Genera automáticamente un nuevo número para cada registro.

```sql
AUTO_INCREMENT
```

---

### NOT NULL

Impide que una columna quede vacía.

```sql
NOT NULL
```

---

### DEFAULT

Asigna un valor automáticamente cuando no se proporciona uno.

Ejemplo:

```sql
precio DECIMAL(10,2) DEFAULT 0
```

y

```sql
estado ENUM('activo','revision','inactivo')
DEFAULT 'activo'
```

---

## 5. Ejecutar la sentencia

Después de escribir el código SQL, se ejecuta el comando para que la tabla sea creada dentro de la base de datos.

Si la sintaxis es correcta, la tabla quedará disponible para almacenar información.

---

## 6. Verificar la estructura

Se recomienda comprobar que la tabla fue creada correctamente.

```sql
DESCRIBE basico_ejercicio_005;
```

o

```sql
SHOW COLUMNS FROM basico_ejercicio_005;
```

También puede visualizarse con:

```sql
SHOW TABLES;
```

---

# ⚠ Buenas Prácticas

- Utilizar nombres descriptivos para las tablas.
- Asignar nombres claros a las columnas.
- Elegir el tipo de dato adecuado.
- Definir una clave primaria (`PRIMARY KEY`).
- Utilizar `NOT NULL` en campos obligatorios.
- Aprovechar `DEFAULT` para valores predeterminados.
- Mantener una estructura consistente entre tablas similares.

---

# 📚 Conceptos Utilizados

| Elemento | Función |
|----------|---------|
| `CREATE TABLE` | Crea una nueva tabla. |
| `PRIMARY KEY` | Identifica cada registro de forma única. |
| `AUTO_INCREMENT` | Genera identificadores automáticamente. |
| `VARCHAR` | Almacena texto. |
| `DECIMAL` | Almacena números con decimales. |
| `ENUM` | Restringe los valores permitidos. |
| `DATETIME` | Guarda fecha y hora. |
| `NOT NULL` | Obliga a ingresar un valor. |
| `DEFAULT` | Asigna un valor predeterminado. |

---

# ✅ Resultado Esperado

Después de ejecutar la sentencia `CREATE TABLE`, la base de datos dispondrá de una nueva tabla lista para almacenar información mediante instrucciones como:

```sql
INSERT INTO
```

Posteriormente, los datos podrán consultarse, modificarse o eliminarse utilizando sentencias SQL.

---

# 🎯 Objetivo

Comprender el proceso de creación de tablas en SQL, aprendiendo a definir columnas, tipos de datos y restricciones para construir una estructura sólida que permita almacenar información de forma organizada, consistente y segura.