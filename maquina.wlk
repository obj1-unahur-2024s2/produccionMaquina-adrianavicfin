object maquina {

  const produccion = [5,70,1,30]

  method algunDiaSeProdujo(cantidad) = produccion.contains(cantidad)

  method producir(cantidad) {
    produccion.add(cantidad)
  }

  method totalProducido() = produccion.sum()

  method maximoValorDeProduccion() = produccion.max()

  method ultimoValorDeProduccion()= produccion.last()

  method valoresDeProduccionPares() = produccion.filter({p=>p.even()})

  method produccionesSuperioresA(valor)
    = produccion.filter( {elemento=> elemento > valor } )

  method cantidadProduccionesMayorAlaPrimera() = produccion.count({elem => elem > produccion.first()}) 

  method produccionEsAcotada(n1,n2) = produccion.todasVerifican({e => e >= n1 and e <= n2})

  method produccionesSumando(n) = produccion.map({p=> p +  n})

  }

  object horno {
    
    const produccion = []
    method algunDiaSeProdujo(cantidad) = produccion.any{e=>e.cantidad() == cantidad}

  }