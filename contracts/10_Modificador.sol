// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Modificador {
    address public propietario;
    uint256 public fondos;
    
    constructor(){
        propietario =msg.sender;
    }


    //4 opciones despositarFondos, retirarFondos, consultarFondos, limpiarFondos(netear)


    function depositarFondos(uint256 _monto) public {
        fondos = fondos + _monto; //fondos += monto
    }

    function retirarFondos(uint256 _monto) public {
        fondos = fondos - _monto;
    }

    function consultarFondos() public view returns (uint256) {
        return fondos;
    }

    function limpiarFondos() public {
        fondos = 0;
    }

    modifier soloPropietario() {
        require(msg.sender == propietario, "No tienes permisos, solo el propietario puede realizar esta accion.");
        _; // <-- Esto es lo que falta añadir
    }
}