object galvan {
	
	var property sueldo = 15000
	
	var cuenta = 0
		
	
	method cobrarSueldo() {
		cuenta += self.sueldo()
	}
	
	method gastar(cuanto){
		cuenta -= cuanto 	
	}
	
	method totalDeuda() {
		return 0.min(cuenta).abs()
	}
	
	method totalDinero() {
		return 0.max(cuenta)
	}
	
}


object baigorria {
	
	var empanadasVendidas = 0
	var precioEmpanada = 15
	
	var totalCobrado = 0
	
	
	method totalCobrado() {
		return totalCobrado
	}
	
	method venderEmpanadas(_cantidad) {
		empanadasVendidas = empanadasVendidas +  _cantidad
	}
	
	method sueldo() {
		return precioEmpanada * empanadasVendidas
	}
	
	method precioEmpanada(_precioEmpanada) {
		precioEmpanada = _precioEmpanada 
	}
	
	method cobrarSueldo() {
		totalCobrado += self.sueldo()
		empanadasVendidas = 0
	}
	
}

object gimenez {
	
	var fondo = 300000
	
	method pagar(empleado){
		fondo = fondo - empleado.sueldo()
	    empleado.cobrarSueldo()
	}
	
	method fondo() {
		return fondo
	}
}
