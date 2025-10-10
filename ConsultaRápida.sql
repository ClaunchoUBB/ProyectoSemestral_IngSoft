SELECT 
    p.codigo,
    CONCAT(p.nombres, ' ', p.apellidos) AS participante,
    v.variable,
    v.valor,
    CONCAT(u.nombre, ' ', u.apellido) AS usuario
FROM Variables v
JOIN CaseReportForm c ON v.codigo = c.codigo
JOIN Participante p ON c.codigo = p.codigo
JOIN Usuario u ON c.rut_usuario = u.rut
ORDER BY p.codigo;