// SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.8.2 <0.9.0;

contract Eventos {

    uint256 private cantidad = 20;

    //declarar evento
    event CambioValorCantidad(address invocador, uint256 valorAntiguo, uint256 nuevoValor);

    function cambiarCantidad(uint256 _cantidad) public {
        uint256 valorAntiguo = cantidad;
        cantidad = _cantidad;
        //emitir mi evento
        emit CambioValorCantidad(msg.sender, valorAntiguo, _cantidad);
    }

    function obtenerCantidad() public view returns(uint256) {
        return cantidad;
    }

}