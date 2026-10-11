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
}