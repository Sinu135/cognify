% Datos del caso
acusado(2, "Desconocido", "Caso 2").
crimen(2, fraude_financiero).
nivel_empatia(2, muy_bajo).
recuerdo_disponible(2, "impacto económico").
recuerdo_disponible(2, "familias afectadas").
recuerdo_disponible(2, "arrepentimiento").
resultado_esperado(2, "toma de responsabilidad").

acusado(3, "Desconocido", "Caso 3").
crimen(3, violencia_domestica).
nivel_empatia(3, moderado).
recuerdo_disponible(3, "perspectiva de la víctima").
recuerdo_disponible(3, "dolor familiar").
recuerdo_disponible(3, "terapia emocional").
resultado_esperado(3, "control de impulsos").

acusado(4, "Desconocido", "Caso 4").
crimen(4, crimen_de_odio).
nivel_empatia(4, muy_bajo).
recuerdo_disponible(4, "diversidad cultural").
recuerdo_disponible(4, "consecuencias del odio").
recuerdo_disponible(4, "empatía hacia minorías").
resultado_esperado(4, "comprensión y respeto").

acusado(5, "Desconocido", "Caso 5").
crimen(5, asalto).
nivel_empatia(5, bajo).
recuerdo_disponible(5, "dolor físico de la víctima").
recuerdo_disponible(5, "miedo experimentado").
recuerdo_disponible(5, "apoyo social").
resultado_esperado(5, "reducción de la agresión").

acusado(6, "Desconocido", "Caso 6").
crimen(6, abuso_de_poder).
nivel_empatia(6, moderado).
recuerdo_disponible(6, "impacto en subordinados").
recuerdo_disponible(6, "pérdida de confianza").
recuerdo_disponible(6, "consecuencias sociales").
resultado_esperado(6, "responsabilidad social").

acusado(7, "Desconocido", "Caso 7").
crimen(7, trafico_de_drogas).
nivel_empatia(7, bajo).
recuerdo_disponible(7, "destrucción de vidas").
recuerdo_disponible(7, "perspectiva de víctimas de adicción").
recuerdo_disponible(7, "pérdidas familiares").
resultado_esperado(7, "empatía y conciencia social").

acusado(8, "Desconocido", "Caso 8").
crimen(8, vandalismo).
nivel_empatia(8, moderado).
recuerdo_disponible(8, "esfuerzo de la comunidad").
recuerdo_disponible(8, "impacto visual y emocional").
recuerdo_disponible(8, "arrepentimiento").
resultado_esperado(8, "aprecio por el bien común").

acusado(9, "Desconocido", "Caso 9").
crimen(9, corrupcion_politica).
nivel_empatia(9, muy_bajo).
recuerdo_disponible(9, "pérdida de confianza pública").
recuerdo_disponible(9, "impacto económico nacional").
recuerdo_disponible(9, "arrepentimiento").
resultado_esperado(9, "ética personal fortalecida").

acusado(10, "Desconocido", "Caso 10").
crimen(10, homicidio_culposo).
nivel_empatia(10, moderado).
recuerdo_disponible(10, "dolor de la familia de la víctima").
recuerdo_disponible(10, "perspectiva de la víctima").
recuerdo_disponible(10, "reconciliación interna").
resultado_esperado(10, "aceptación y redención").

acusado(11, "Desconocido", "Caso 11").
crimen(11, hackeo).
nivel_empatia(11, muy_bajo).
recuerdo_disponible(11, "consecuencias del robo de datos").
recuerdo_disponible(11, "impacto en víctimas de fraude").
recuerdo_disponible(11, "remordimiento").
resultado_esperado(11, "responsabilidad digital").

acusado(12, "Desconocido", "Caso 12").
crimen(12, pedofilia).
nivel_empatia(12, muy_bajo).
recuerdo_disponible(12, "dolor de las víctimas").
recuerdo_disponible(12, "impacto emocional a largo plazo").
recuerdo_disponible(12, "consecuencias legales").
resultado_esperado(12, "inhibición de impulsos dañinos").

acusado(13, "Desconocido", "Caso 13").
crimen(13, canibalismo).
nivel_empatia(13, moderado).
recuerdo_disponible(13, "dolor y sufrimiento de la víctima").
recuerdo_disponible(13, "impacto en la familia de la víctima").
recuerdo_disponible(13, "repudio social").
resultado_esperado(13, "rechazo hacia el acto").

% Regla para seleccionar recuerdos según el crimen y nivel de empatía
seleccionar_recuerdo(Crimen, Empatia, Recuerdo) :-
    crimen(_, Crimen),
    nivel_empatia(_, Empatia),
    (
        (Crimen = genocidio, Empatia = muy_bajo, Recuerdo = "sufrimiento de las víctimas");
        (Crimen = destruccion_masiva, Empatia = muy_bajo, Recuerdo = "impacto en ecosistemas destruidos");
        (Crimen = coercion, Empatia = muy_bajo, Recuerdo = "dolor de los sobrevivientes");
        (Crimen = fraude_financiero, Empatia = muy_bajo, Recuerdo = "impacto económico");
        (Crimen = violencia_domestica, Empatia = moderado, Recuerdo = "perspectiva de la víctima");
        (Crimen = crimen_de_odio, Empatia = muy_bajo, Recuerdo = "diversidad cultural");
        (Crimen = asalto, Empatia = bajo, Recuerdo = "dolor físico de la víctima");
        (Crimen = abuso_de_poder, Empatia = moderado, Recuerdo = "impacto en subordinados");
        (Crimen = trafico_de_drogas, Empatia = bajo, Recuerdo = "destrucción de vidas");
        (Crimen = vandalismo, Empatia = moderado, Recuerdo = "esfuerzo de la comunidad");
        (Crimen = corrupcion_politica, Empatia = muy_bajo, Recuerdo = "pérdida de confianza pública");
        (Crimen = homicidio_culposo, Empatia = moderado, Recuerdo = "dolor de la familia de la víctima");
        (Crimen = hackeo, Empatia = muy_bajo, Recuerdo = "consecuencias del robo de datos");
        (Crimen = pedofilia, Empatia = muy_bajo, Recuerdo = "dolor de las víctimas");
        (Crimen = canibalismo, Empatia = moderado, Recuerdo = "dolor y sufrimiento de la víctima")
    ).

% Regla para evaluar impacto del recuerdo
evaluar_impacto(Recuerdo, Impacto) :-
    (
        Recuerdo = "sufrimiento de las víctimas", Impacto = "generación de empatía";
        Recuerdo = "dolor de los sobrevivientes", Impacto = "reflexión emocional";
        Recuerdo = "impacto en ecosistemas destruidos", Impacto = "conciencia ecológica";
        Recuerdo = "impacto económico", Impacto = "responsabilidad financiera";
        Recuerdo = "familias afectadas", Impacto = "empatía familiar";
        Recuerdo = "diversidad cultural", Impacto = "comprensión de la diversidad";
        Recuerdo = "destrucción de vidas", Impacto = "conciencia social";
        Recuerdo = "dolor físico de la víctima", Impacto = "reducción de la agresión";
        Recuerdo = "esfuerzo de la comunidad", Impacto = "aprecio por el bien común";
        Recuerdo = "consecuencias del robo de datos", Impacto = "responsabilidad digital"
        % Agrega más mapeos según los recuerdos definidos
    ).

% Regla para simular la rehabilitación
rehabilitacion(Acusado, Resultado) :-
    acusado(Acusado, _, _),
    nivel_empatia(Acusado, Empatia),
    seleccionar_recuerdo(_, Empatia, Recuerdo),
    evaluar_impacto(Recuerdo, Impacto),
    Impacto = "comprensión de la diversidad", % Ajusta esta condición según el caso
    resultado_esperado(Acusado, Resultado).
