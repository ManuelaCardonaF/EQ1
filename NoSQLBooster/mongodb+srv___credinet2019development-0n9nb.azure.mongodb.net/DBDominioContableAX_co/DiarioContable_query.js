db.DiarioContable.update({ _id: ObjectId("6515a1dbca431d5e805d68f7") }, {
    $set: {
        "NumeroDiarioContable": null,
        "NombreDiarioContable": "16-ACA",
        "IdTipoTransaccion": "ANULCREDITALI",
        "DescripcionDiarioContable": "CRÉDITOS ALIADOS ANULADOS - FECHA 2023/09/27",
        "FechaDocumento": ISODate("2023-09-27T13:27:12.000-05:00"),
        "NumeroLineasContables": 3,
        "FechaProceso": null,
        "EstadoProceso": 0,
        "MensajeProceso": null,
        "RegistrarYTransferir": true,
        "EmpresaDiario": "STCR"
    }
})