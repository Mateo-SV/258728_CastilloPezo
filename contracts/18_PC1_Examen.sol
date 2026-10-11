// SPDX-License-Identifier: MIT
pragma solidity 0.8.1;

contract Biblioteca258728 {
    struct Libro {
        uint256 id;
        string titulo;
        string autor;
        uint256 anio;
    }

    Libro[] public libros;
    uint256 public posicion;
    address public direccion;

    constructor(uint256 _posicion) {
        posicion = _posicion;
        direccion = msg.sender;
    }

    function agregarElemento(uint256 _id, string memory _titulo, string memory _autor, uint256 _anio) public {
        require(_id % 2 == 0, "No se permiten id impares");
        libros.push(Libro(_id, _titulo, _autor, _anio));
    }

    function contarElementos() public view returns (uint256) {
        return libros.length;
    }

    function cambiarDireccion(address _direccion) public {
        direccion = _direccion;
    }
}