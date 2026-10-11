// SPDX-License-Identifier: MIT
pragma solidity 0.8.1;

import "hardhat/console.sol";

contract Biblioteca258728 {
    struct Libro { uint256 id; string titulo; string autor; uint256 anio; bool estado; }

    Libro[] public libros;
    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }

    function agregarElemento(uint256 _id, string memory _t, string memory _a, uint256 _anio, bool _e) public {
        require(_id % 2 == 0, "No se permiten id impares");
        libros.push(Libro(_id, _t, _a, _anio, _e));
    }

    function contarElementos() public view returns (uint256) {
        return libros.length;
    }

    function cambiarDireccion(address _d) public {
        direccion = _d;
    }

    // Ultimo hexadecimal 0-8
    function mostrarActivos() external view {
        console.log("Ejecutado por 258728 - Castillo Pezo Mateo Salvador Vincenzo");
        for (uint256 i = 0; i < libros.length; i++) {
            if (libros[i].estado) console.log("Libro activo", libros[i].id, libros[i].titulo);
        }
    }

    // Ultimo hexadecimal 9-F
    function inactivarEstado(uint256 _id) external {
        for (uint256 i = 0; i < libros.length; i++) {
            if (libros[i].id == _id) libros[i].estado = false;
        }
    }
}