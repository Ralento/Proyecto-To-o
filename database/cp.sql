-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2024 a las 04:54:47
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `consejo`
--

CREATE TABLE `consejo` (
  `Consejo` varchar(2000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `consejo`
--

INSERT INTO `consejo` (`Consejo`) VALUES
('No hay una rutina ideal para todos, elige ejercicios que sean de tu agrado y que cumplan con estas características: Que cumpla las funciones anatómicas del músculo a trabajar, que se alinee con las fibras musculares, que sea estable y se pueda sobrecargar a lo largo del tiempo. También recuerda hacer un volumen de entrenamiento que oscile entre las 10 y 20 series semanales por grupo muscular, de 80 a 130 repeticiones semanales cercanas al fallo con una frecuencia de 1 a 2 días a la semana.'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('Al tener equipo limitado en casa puedes progresar aumentando el peso de los ejercicios ya sea con mochilas mancuernas de cemento o garrafones, sus repeticiones o aumentando la dificultad del ejercicio, también puedes ir a algún parque cercano para hacer ejercicio al aire libre o contar con mas equipo.'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('No hay una rutina ideal para todos, elige ejercicios que sean de tu agrado y que cumplan con estas características: Que cumpla las funciones anatómicas del músculo a trabajar, que se alinee con las fibras musculares, que sea estable y se pueda sobrecargar a lo largo del tiempo. También recuerda hacer un volumen de entrenamiento que oscile entre las 10 y 20 series semanales por grupo muscular, de 80 a 130 repeticiones semanales cercanas al fallo con una frecuencia de 1 a 2 días a la semana.'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('Al tener equipo limitado en casa puedes progresar aumentando el peso de los ejercicios ya sea con mochilas mancuernas de cemento o garrafones, sus repeticiones o aumentando la dificultad del ejercicio, también puedes ir a algún parque cercano para hacer ejercicio al aire libre o contar con mas equipo.'),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
(''),
('');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cuestionario`
--

CREATE TABLE `cuestionario` (
  `Indice` int(30) DEFAULT NULL,
  `PreguntasExamen` varchar(1000) DEFAULT NULL,
  `Respuesta(a` varchar(1000) DEFAULT NULL,
  `Respuesta(b` varchar(1000) DEFAULT NULL,
  `Respuesta(c` varchar(1000) DEFAULT NULL,
  `Respuesta(d` varchar(1000) DEFAULT NULL,
  `Respuestacorrecta` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `cuestionario`
--

INSERT INTO `cuestionario` (`Indice`, `PreguntasExamen`, `Respuesta(a`, `Respuesta(b`, `Respuesta(c`, `Respuesta(d`, `Respuestacorrecta`) VALUES
(1, '¿Cuál de las siguientes técnicas de respiración es de las más efectivas para regular los niveles de estrés?', 'a)4-7-8', 'b)7-5-6', 'c)9-4-6', 'd)5-7-3', 'a)4-7-8'),
(2, 'Es una herramienta que nos ayuda a bajar nuestro índice de grasa', 'a)Tomar limón con café por las mañanas', 'b)Utilizar fajas mientras se hace ejercicio', 'c)Antes de dormir ponerse una compresa caliente en abdomen', 'd)Hacer ayuno intermitente apropiadamente', 'd)Hacer ayuno intermitente apropiadamente'),
(3, '¿Cuáles son los pilares para mantenerse saludable?', 'a)No comer carbohidratos, no comer grasas, hacer 2 horas de cardio, hacer ayuno intermitente', 'b)Hacer entrenamiento de fuerza, dormir 9 horas al día, consumir una dieta adecuada a tus gustos y necesidades, regular tus niveles de estrés', 'c)Dormir 12 horas al día, comer lo que sea de tu antojo, estresarse lo menos posible, no entrenar', 'd)Consumir únicamente ensaladas, hacer únicamente cardio sin entrenamiento de fuerza, dormir 6 horas al día, tomar miel con limón en las mañanas', 'b)Hacer entrenamiento de fuerza, dormir 9 horas al día, consumir una dieta adecuada a tus gustos y necesidades, regular tus niveles de estrés'),
(4, 'Para reducir el dolor causado por el entrenamiento de fuerza se recomienda:', 'a)Hacer masajes con presión moderada en dirección a las fibras del músculo', 'b)Hacer 1 hora de cardio después del ejercicio de fuerza', 'c)Hacer estiramientos 45 minutos antes de ejercitarse', 'd)Volver a ejercitar los mismos músculos al día siguiente', 'd)Volver a ejercitar los mismos músculos al día siguiente'),
(5, '¿Qué ocurre si realizas ejercicio de fuerza en la adolescencia?', 'a)Tu altura se limitará junto a la compresión de huesos y articulaciones', 'b)Perderás la movilidad de tus músculos y articulaciones cuando seas mayor', 'c)El músculo que hagas cuando envejezcas se convertirá en grasa', 'd)Ganarás masa muscular haciendo que tus huesos y articulaciones sean más fuertes', 'd)Ganarás masa muscular haciendo que tus huesos y articulaciones sean más fuertes'),
(6, '¿Qué se recomienda para evitar lesiones antes de tener un entrenamiento de fuerza?', 'a)Movilizar las articulaciones junto a series de aproximación', 'b)Hacer estiramientos musculares junto a cardio intenso', 'c)Andar en bici 50 minutos', 'd)Ir directamente al entrenamiento de fuerza', 'a)Movilizar las articulaciones junto a series de aproximación'),
(7, '¿Qué porcentaje de grasa es el ideal en hombres?', 'a)10%-15%', 'b)5%-10%', 'c)15%-20%', 'd)20%-25%', 'a)10%-15%'),
(8, '¿Qué porcentaje de grasa es el ideal en mujeres?', 'a)10%-15%', 'b)5%-10%', 'c)15%-20%', 'd)20%-25%', 'c)15%-20%'),
(9, 'Una buena medida para identificar qué tan saludable es una persona es:', 'a)El índice de masajes corporal', 'b)Su porcentaje de grasa con relación a su masa muscular', 'c)La presión arterial', 'd)El colesterol en la sangre', 'b)Su porcentaje de grasa con relación a su masa muscular'),
(10, 'Menciona una correcta distribución de los macronutrientes en tu dieta', 'a)50% carbohidratos 30% proteínas 20% grasas', 'b)30% carbohidratos 50% proteínas 20% grasas', 'c)10% carbohidratos', 'd)70%carbohidratos 20%proteínas 10%grasas', 'd)70%carbohidratos 20%proteínas 10%grasas');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `mitos y respuestas`
--

CREATE TABLE `mitos y respuestas` (
  `Indice` int(200) DEFAULT NULL,
  `Mitos` varchar(500) DEFAULT NULL,
  `Respuestasmitos` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `mitos y respuestas`
--

INSERT INTO `mitos y respuestas` (`Indice`, `Mitos`, `Respuestasmitos`) VALUES
(1, 'Hacer ejercicio en la adolescencia afecta el crecimiento', 'Es totalmente lo contrario ya que el ejercicio de fuerza hace que los huesos produzcan más calcio, por la fuerza que generan, como modo de adaptación y además la síntesis proteica hace que cualquier tejido muscular crezca. Y la estatura se determina por la calidad de tus hábitos y en gran medida por tu genética.'),
(2, 'Las mujeres no deben de entrenar pesado si no quedarán como hombres', 'Esto es falso ya que el ejercicio es solo un estímulo y la estructura no cambiará, además de que las mujeres naturalmente no producen la misma testosterona que un hombre.'),
(3, 'Se puede bajar grasa de manera localizada', 'No precisamente, ya que el organismo eliminará la grasa de donde más lo necesite, primordialmente de las arterias, posteriormente de los órganos y finalmente la grasa subcutánea como la del abdomen, piernas, brazos etcétera.'),
(4, 'Los masajes linfáticos para drenar grasa y fajas para hacer la cintura más chica y bajar de peso ', 'Esto es una estafa, la única manera de bajar grasa es mediante un déficit calórico con ejercicio de fuerza y actividad cardiovascular.'),
(5, 'Para adelgazar hay que comer solo verduras y agua o tomar algún remedio milagroso como limón con agua en ayunas', 'Al igual que lo anterior esto es una mentira, ya que ningún alimento por si solo adelgaza o engorda, lo que determina si subes o bajas de peso es el balance energético positivo negativo.'),
(6, 'Si hago pesas me pondré muy grande y yo solo quiero estar marcadito', 'El estar marcadito implica un aumento en la masa muscular y la disminución del porcentaje graso, pero este es un proceso largo, por lo que no serás un mounstro de la masa muscular en algunos meses eso solo ocurre con sustancias anabólicas no naturales.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `musculos`
--

CREATE TABLE `musculos` (
  `Indice` int(255) DEFAULT NULL,
  `CasaoGym` varchar(5000) DEFAULT NULL,
  `Grupomuscular` varchar(5000) DEFAULT NULL,
  `Ejercicioporgrupomuscular` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `musculos`
--

INSERT INTO `musculos` (`Indice`, `CasaoGym`, `Grupomuscular`, `Ejercicioporgrupomuscular`) VALUES
(1, 'Gimnasio', 'Deltoide lateral.', '-Para estimular este músculo se busca una abducción lateral, para ello está el mejor ejercicio, las elevaciones laterales ya sea con mancuerna o poleas.'),
(2, 'Gimnasio', 'Deltoide anterior.', ' Para estimular este músculo se busca una elevación frontal, para ello están los 2 mejores ejercicios, press militar con mancuernas o en máquina y elevaciones frontales en polea. '),
(3, 'Gimnasio', 'Deltoide posterior.', 'Para estimular este músculo se busca una extensión horizontal, para ello están varios ejercicios, los remos horizontales dan un buen estímulo al deltoides posterior pero si quieres enfatizar más, hay ejercicios como, face pull en polea y vuelos posteriores con mancuerna o en máquina.'),
(4, 'Gimnasio', 'Pectoral superior.', 'Todo el pecho se encarga de la aducción y rotación interna del brazo en la articulación del hombro, por lo que un press inclinado a 35 o 45 grados con barra o mancuernas y un press unilateral en polea baja, son los mejores ejercicios para estimular este grupo muscular.'),
(5, 'Gimnasio', 'Pectoral medio.', 'Para estimular este músculo, están 2 ejercicios el press plano, con barra, mancuernas o en máquina y aducciones en la máquina, peck deck o en poleas.'),
(6, 'Gimnasio', 'Pectoral inferior.', 'Para estimular este músculo no es necesario algún ejercicio, ya que en el press plano se lleva un gran trabajo pero, si quieres enfatizarlo los mejores ejercicios son el press declinado en máquina y el press en poleas altas.'),
(7, 'Gimnasio', 'Cabeza larga del triceps.', 'Para estimular todo el tríceps se busca una extensión de codo, por lo que el mejor ejercicio es una extensión de tríceps unilateral en polea alta.'),
(8, 'Gimnasio', 'Cabeza medial y lateral del triceps.', 'El mejor ejercicio es un press francés en banco plano con mancuernas o con barra z.'),
(9, 'Gimnasio', 'Trapecios.', ' Para estimular este músculo se busca la protracción y retracción escapular en un plano horizontal, por lo que ejercicios como el remo con apoyo en el pecho en máquina y encogimientos con mancuerna o barra son los mejores ejercicios.'),
(10, 'Gimnasio', 'Dorsales.', 'Para estimular este músculo se busca, la aducción humeral horizontal y vertical en el plano sagital y frontal, por lo que ejercicios como las dominadas y remos unilaterales en polea baja y alta son los mejores ejercicios.'),
(11, 'Gimnasio', 'Espalda baja(Erectores de la columna).', 'Para estimular este músculo no es necesario algún ejercicio, ya que en los remos, pesos muertos rumanos se lleva una gran activación para estabilizar la carga, pero si quieres enfatizarla las hiperextensiones en máquina o en banco.'),
(12, 'Gimnasio', 'Cabeza larga y corta del biceps.', 'Para estimular todo el bíceps se busca la flexión de codo, por lo que el curl sentado con mancuernas o en máquina es el mejor ejercicio.'),
(13, 'Gimnasio', 'Braquioradial.', 'Al igual que el bíceps se busca la flexión del codo pero con un agarre neutral, por lo que los martillos con mancuernas o en polea es el mejor ejercicio'),
(14, 'Gimnasio', 'Flexores del antebrazo.', 'Para estimular este músculo se busca flexionar la muñeca por lo que el curl de muñeca con mancuernas barra o polea es el mejor ejercicio.'),
(15, 'Gimnasio', 'Extensores del antebrazo.', 'Para estimular este músculo se busca extender la muñeca por lo que la extensión de muñeca con mancuernas barra o polea es el mejor ejercicio.'),
(16, 'Gimnasio', 'Cuadriceps.', 'Para estimular este músculo se busca lograr la mayor extensión y flexión de la rodilla por lo que la sentadilla en la máquina hack squat y la extensión de piernas en la máquina leg extensión son los mejores ejercicios.'),
(17, 'Gimnasio', 'Isquiotibiales.', 'Para estimular este músculo se busca lograr la mayor extensión y flexión de la cadera y de las rodillas por lo que el peso muerto rumano y el curl de isquiotibial en máquina son los mejores ejercicios.'),
(18, 'Gimnasio', 'Glúteo.', 'Su principal función es la extensión, abducción y estabilización de la cadera por lo que el hip trusth en barra o en máquina y las abducciones en polea o en máquina son los mejores ejercicios.'),
(19, 'Gimnasio', 'Pantorrila(soleo y gastrocnemio).', 'Para estimular este músculo se busca la función plantar por lo que ejercicios como la elevación de talón parado con mancuernas o en máquina y elevación de talón en la máquina costurera son los mejores ejercicios.'),
(20, 'Gimnasio', 'Aductores.', 'Su principal función es la aducción de la cadera por lo que ejercicios como los aductores sentado en máquina es el mejor ejercicio.'),
(21, 'Gimnasio', 'Recto abdominal.', 'Para estimular este músculo se busca la flexión y extensión del tronco por lo que el mejor ejercicio es el crunch en máquina polea o en banco declinado.'),
(22, 'Casa', 'Deltoide lateral', 'Para estimular este músculo se busca una abducción lateral, para ello está el mejor ejercicio, las elevaciones laterales ya sea con mochila o mancuernas.'),
(23, 'Casa', 'Deltoide anterior.', 'Para estimular este músculo se busca una elevación frontal, para ello están los 2 mejores ejercicios, press militar con mochila o mancuernas,elevaciones frontales con mochila o mancuernas, o lagartijas en pico en su versión de principiante y las lagartijas en pino para su versión avanzada.'),
(24, 'Casa', 'Deltoide posterior.', 'Para estimular este músculo se busca una extensión horizontal, para ello están varios ejercicios, los remos horizontales dan un buen estímulo al deltoides posterior pero si quieres enfatizar más, hay ejercicios para realizar en casa como son los vuelos posteriores con mancuerna o mochila.'),
(25, 'Casa', 'Pectoral superior', 'Todo el pecho se encarga de la aducción y rotación interna del brazo en la articulación del hombro, por lo que una lagartija inclinada con los pies apoyados en algún lugar es un gran ejercicio.'),
(26, 'Casa', 'Pectoral medio.', 'Para estimular este músculo en casa está el mejor ejercicio la lagartija.'),
(27, 'Casa', 'Pectoral inferior.', 'Para estimular este músculo no es necesario algún ejercicio, ya que en el press plano se lleva un gran trabajo pero si quieres darle un estímulo extra haz lagartijas declinadas apoyando tus brazos en una silla o algo similar.'),
(28, 'Casa', 'Cabeza larga del triceps.', 'Para estimular todo el tríceps se busca una extensión de codo, por lo que el mejor ejercicio es una extensión trasnuca de trícep con mancuerna o mochila.'),
(29, 'Casa', 'Cabeza medial y lateral del triceps. ', 'El mejor ejercicio para relizar en casa si tienes unas paralelas son los fondos y si no puedes realizar lagartijas con las manos en posición de diamante(agarre cerrado).'),
(30, 'Casa', 'Trapecios.', 'Para estimular este músculo se busca la protracción y retracción escapular en un plano horizontal, por lo que ejercicios como el el remo con mochila o mancuerna, las dominadas australianas o los enogimientos con mancuernas o mochila son una buena opción.'),
(31, 'Casa', 'Dorsales.', 'Para estimular este músculo se busca, la aducción humeral horizontal y vertical en el plano sagital y frontal, por lo que ejercicios como las dominadas si es que cuentas con una barra en casa y si no puedes hacer remos unilaterales con mancuerna o mochila ya que son los mejores.'),
(32, 'Casa', 'Espalda baja(Erectores de la columna).', 'Para estimular este músculo no es necesario algún ejercicio, ya que en los remos, pesos muertos rumanos se lleva una gran activación para estabilizar la carga, pero si quieres enfatizarla puedes hacer reverencias con mochila o mancuernas.'),
(33, 'Casa', 'Cabeza larga y corta del biceps.', 'Para estimular todo el bíceps se busca la flexión de codo, por lo que el curl sentado con mancuernas o mochilas junto a las dominadas con agarre supino son tus mejores aliados.'),
(34, 'Casa', 'Braquioradial.', 'Al igual que el bíceps se busca la flexión del codo pero con un agarre neutral, por lo que los curls martillos con mancuernas o mochila son tus amigos.'),
(35, 'Casa', 'Flexores del antebrazo.', 'Para estimular este músculo se busca flexionar la muñeca por lo que el curl de muñeca con mancuernas o mochila y mantenerse colgado de una barra con agarre falso (con la canilla doblada), son buenas opciones'),
(36, 'Casa', 'Extensores del antebrazo.', 'Para estimular este músculo se busca extender la muñeca por lo que la extensión de muñeca con mancuernas o mochila es el mejor ejercicio.'),
(37, 'Casa', 'Cuadriceps.', 'Para estimular este músculo se busca lograr la mayor extensión y flexión de la rodilla por lo que la sentadilla búlgara con talon elevado en una superficie de 2 o 3 centimetros cargando mochilas o mancuernas es un excelente ejercicio.'),
(38, 'Casa', 'Isquiotibiales. ', 'Para estimular este músculo se busca lograr la mayor extensión y flexión de la cadera y de las rodillas por lo que el peso muerto rumano a una pierna con mancuernas,mochila o garrafón es un excelente ejercicio.'),
(39, 'Casa', 'Glúteo.', 'Su principal función es la extensión, abducción y estabilización de la cadera por lo que el hip trusth con mancuerna mochila o garrafón es una exclente opción.'),
(40, 'Casa', 'Pantorrila(soleo y gastrocnemio).', 'Para estimular este músculo se busca la función plantar por lo que ejercicios como la elevación de talón parado con mancuernas mochila o garrafón y elevación de talón con mancuernas mochila o garrafón es una gran opción.'),
(41, 'Casa', 'Aductores.', 'Su principal función es la aducción de la cadera por lo que el ejercicio de la sentdilla con los piernas abiertas es el mejor ejercicio.'),
(42, 'Casa', 'Recto abdominal.', 'Para estimular este músculo se busca la flexión y extensión del tronco por lo que el mejor ejercicio es el crunch declinado en tu cama y con los pies sujetos a una supericie dura.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas de ejercicio y alimentacion`
--

CREATE TABLE `preguntas de ejercicio y alimentacion` (
  `Indice` int(200) DEFAULT NULL,
  `Preguntasejercicio` varchar(500) DEFAULT NULL,
  `Respuestasejercicio` varchar(3000) DEFAULT NULL,
  `Preguntasalimentacion` varchar(500) DEFAULT NULL,
  `Respuestaalimentacion` varchar(3000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preguntas de ejercicio y alimentacion`
--

INSERT INTO `preguntas de ejercicio y alimentacion` (`Indice`, `Preguntasejercicio`, `Respuestasejercicio`, `Preguntasalimentacion`, `Respuestaalimentacion`) VALUES
(1, '¿Qué es lo más importante a la hora de ganar masa muscular?', 'El ejercicio de fuerza, una alimentación basada en comida no procesada, regulación del estrés y un descanso de calidad son los pilares para la ganancia de la masa muscular y una vida sana.', 'Formula y medidas que se necesitan para hacer un aproximado de la grasa y masa muscular corporal', 'Se utiliza la formula durnin, tomando medidas de 4 pliegues, el subescapular suprailiaco bicipital y tricipital con un plicómetro.'),
(2, '¿Qué es el volumen y frecuencia de entrenamiento?', 'El volumen son las series semanales que hacemos por grupo muscular y la frecuencia es la cantidad de días semanales que trabajamos esos músculos.', '¿Cómo calcular las calorías necesarias para aumentar masa muscular y para bajar grasa?', 'Debes calcular tu metabolismo basal que son las calorías que quemas solamente por existir sumarle las calorías que quemas por tu nivel de actividad y lo que te salga sumarle de 300 a 500 calorías si quieres aumentar masas muscular y si quieres bajar grasa restarle de 300 a 500 calorías igualmente.'),
(3, '¿Qué es la sobrecarga progresiva y el fallo muscular y por qué se relacionan con la hipertrofia (ganancia de masa muscular)?', 'La sobrecarga progresiva es la capacidad que tenemos de ir aumentando la dificultad de los ejercicios ya sea con más peso, más repeticiones o menos tiempo de descanso y el fallo muscular es cuando las fibras musculares experimentan la mayor tensión mecánica y no tienen capacidad para contraerse más, esto se relaciona con la hipertrofia ya que el cuerpo reacciona a los estímulos y se adapta creando más tejido muscular por lo que seremos fuertes.', 'Alimentos esenciales de cada macronutriente', 'El pollo, pescado, y huevo como fuente de proteína, el arroz, avena y papa como fuente de carbohidratos, el aguacate, aceite de oliva y cacahuates como fuente de grasas, espinacas, jitomate, brócoli como fuente de vitaminas y minerales, aunque esto va de gustos a gustos aquí te mostramos alimentos muy baratos, saludables, ricos y fáciles de preparar'),
(4, '¿Porque es importante descansar entre series o ejercicios?', 'Para que las fuentes de energía como el ATP o la glucosa se recuperen y las fibras puedan producir mayor fuerza haciendo que las series sean más efectivas, este tiempo va de 3v a 5 minutos entre series.', '-Suplementos útiles', 'Todos aquellos con evidencia científica como es la cafeína, la proteína de suero de leche, la creatina monohidratada, el omega 3, y las vitaminas por separado.'),
(5, '¿Para qué sirve el calentamiento?', 'Ayuda a aumentar la temperatura de nuestro cuerpo y a lubricar nuestras articulaciones haciendo que las fibras contráctiles trabajen mejor y el riesgo de lesión sea menor.', '', ''),
(6, '¿Por qué es importante la técnica en los ejercicios?', 'Es de vital importancia para prevenir lesiones y hacer que nuestros músculos ejerzan fuerza de manera correcta promoviendo la hipertrofia.', '', ''),
(7, '¿Cómo podemos identificar cuanto peso es el ideal al momento de hacer ejercicios?', 'Esto depende directamente de nuestros objetivos y sobre la fuerza de cada persona, pero de manera general para mejorar nuestras capacidades fisiológicas debemos trabajar con pesos que nos permitan llegar entre 8 y 15 repeticiones con un 70 u 80 porciento de nuestro esfuerzo máximo.', '', ''),
(8, '- ¿Por qué hacer ejercicio solo por adelgazar es malo?', 'Si bien adelgazar es bajar de peso, esto no te hará lucir estético y la mayoría de las personas buscan verse mejor haciendo ejercicio, por lo que su principal objetivo debe ser la ganancia de masa muscular y la perdida de grasa corporal que se logra a través de los hábitos comentados en la pregunta 1.', '', ''),
(9, '- ¿Es malo o bueno el llegar al fallo en repeticiones (A la larga)?', 'Lo recomendable es quedarse de 1 a 3 repeticiones antes del fallo muscular, que ocurre cuando no podemos mover el peso aunque nuestra vida dependiera de ello.', '', ''),
(10, '¿Qué se necesita para empezar a hacer ejercicio?', 'Solamente las ganas y disposición de querer mejorar tus hábitos dejándote guiar por profesionales de la salud especializados en la preparación física.', '', ''),
(11, '¿Cómo es que se pueden evitar las lesiones?', 'Regulando el volumen de entrenamiento, no cargar más del peso con el que puedes (ego lifting) y con calentamiento puedes evitar prácticamente cualquier lesión.', '', ''),
(12, '¿Por qué todos deberíamos realizar ejercicio de fuerza en algún punto de nuestras vidas?', 'El ejercicio de fuerza nos otorga una mayor calidad de vida, ya que mejoraremos nuestras habilidades fisiológicas teniendo mayor fuerza y resistencia.', '', ''),
(13, '¿A qué edad es la edad mínima para comenzar con el ejercicio de fuerza?', 'El ejercicio de fuerza se puede practicar desde que un niño tiene control motriz, aproximadamente a los 5 años siempre y cuando el ejercicio este bien dosificado y guiado preferentemente por un especialista en el tema.', '', ''),
(14, '- ¿Cuál es la proporción ideal entre los músculos?', 'En si no hay una proporción ideal, lo que se busca es mantener un porcentaje de masa muscular y de grasa saludables, teniendo una armonía entre los músculos anteriores y posteriores.', '', ''),
(15, '¿Qué músculos son los más atractivos en hombres y mujeres?', 'Esto varia de gustos a gustos, lo que se busca es mantener un porcentaje de masa muscular y de grasa saludables manteniendo una cintura estrecha en relación a las clavículas si eres hombre y a las caderas si eres mujer.', '', ''),
(16, '¿Las personas con algún trastorno genético como el síndrome de down autismo, retraso mental, discapacidad motriz pueden realizar ejercicio?', 'Cualquier persona puede realizar ejercicio sin importar patologías, antecedentes o enfermedades siempre y cuando se adapten a sus capacidades.', '', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `salud`
--

CREATE TABLE `salud` (
  `id` int(11) NOT NULL,
  `consejo` varchar(1000) DEFAULT NULL,
  `categoria` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `salud`
--

INSERT INTO `salud` (`id`, `consejo`, `categoria`) VALUES
(1, 'Antes de hacer cualquier actividad física, debes aumentar la temperatura del cuerpo, para ello debes caminar, después movilizar las articulaciones específicas según el deporte que vayas a ejecutar.', 'Condición Física'),
(2, 'Después de entrenar puedes hacer masajes en los músculos que entrenaste directamente, esto acelera la recuperación muscular y te relaja para tu próxima sesión de entrenamiento.', 'Condición Física'),
(3, 'Debes estructurar tus entrenamientos con la sobrecarga progresiva, es decir ir aumentando poco a poco la dificultad de los ejercicios, esto para evitar lesiones.', 'Condición Física'),
(4, 'Después de cada entrenamiento puedes estirar, esto con el fin de una recuperación óptima además, mejor a tu movilidad articular y te hace más fuerte en rangos de movimiento extensos.', 'Condición Física'),
(5, 'Realizar siempre los ejercicios con buena técnica, es decir, no utilices la inercia para moverte esto puede ocasionar lesiones graves, siempre mantén una buena técnica.', 'Condición Física'),
(6, 'Es de suma importancia que tengas un horario específico de sueño, es decir que te duermas y te levantes a la misma hora.', 'Sueño'),
(7, '2 horas antes de irte a acostar reduce las actividades demandantes para tu cuerpo y haz algo que te relaje además debes reducir la exposición a la luz, trata de mantener tu celular con un filtro de luz azul.', 'Sueño'),
(8, 'Antes de irte a dormir puedes tomar leche, 1 plátano y 2 tortillas, al ser carbohidratos de buena calidad aumentan el triptófano que esta altamente relacionado con los niveles de serotonina que a su vez nos relaja.', 'Sueño'),
(9, 'Si tienes problemas con el sueño 1 hora antes de acostarte te puedes tomar un té de gordolobo.', 'Sueño'),
(10, 'En el amanecer toma el sol 5 minutos y al atardecer otros 5 minutos, ya que nuestro organismo desarrolló un mecanismo, donde al recibir rayos rojos nos relaja y nos prepara para dormir cómodamente.', 'Sueño'),
(11, 'Lleva diariamente las calorías y macronutrientes consumidos día a día en una aplicación que te ayude a contar calorías como my fitness app.', 'Alimentación'),
(12, 'Incluye a tu dieta alimentos de origen natural, con la condición que te deben de gustar.', 'Alimentación'),
(13, 'Cada 3 días añade una comida procesada que sea de tu agrado, el punto de un estilo de vida saludable, es transformar tu cuerpo disfrutando del proceso.', 'Alimentación'),
(14, 'Al consumir refrescos, siempre opta por un refresco sin calorías, ya que aportan sabor dulce y refrescante a tus comidas, sin añadir calorías vacías de nutrientes.', 'Alimentación'),
(15, 'Cuando prepares tus comidas, trata de sazonarlas a tu gusto y mantenerlas variadas para que, puedas mantener una alimentación adecuada a ti a lo largo del tiempo.', 'Alimentación'),
(16, 'Cuando se presenten situaciones de estrés, escribe todos los problemas posibles y dales una solución realista, tómate tu tiempo para pensar.', 'Estrés'),
(17, 'Cuando tengas insomnio por estrés, puedes tomarte una cápsula de melatonina con gaba que hace sinergia entre ambas y después de 30 minutos puedes relajarte y dormir tranquilamente.', 'Estrés'),
(18, 'Practica mindfulness, es una forma de mantenerte presente en cada momento, mantenerte concentrado, muchas veces nos estresamos porque no le damos tiempo a nuestras tareas cotidianas por pereza.', 'Estrés'),
(19, 'Lleva un diario, donde puedas escribir lo que hiciste bien a lo largo del día y lo que puedes mejorar para acercarte a tus metas.', 'Estrés'),
(20, 'Bañarte con agua caliente tiene un efecto desestresante en el cuerpo, lo que resulta muy beneficioso para la recuperación mental y muscular.', 'Estrés');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(100) NOT NULL,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(255) NOT NULL,
  `contraseña` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `telefono` varchar(255) NOT NULL,
  `IMC` int(100) NOT NULL,
  `calorias` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `nombre`, `usuario`, `contraseña`, `correo`, `telefono`, `IMC`, `calorias`) VALUES
(3, 'Roy Bernal Ibarra', 'Ralento.mvk', 'rollo200726', 'darckjessie@gmail.com', '4494575413', 24, 2482),
(9, 'DILLOM', 'DILLOM', 'MUÑECAS', 'rollobernal@outlook.com', '4494575413', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `salud`
--
ALTER TABLE `salud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `salud`
--
ALTER TABLE `salud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
