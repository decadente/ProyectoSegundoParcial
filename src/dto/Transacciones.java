/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dto;

import java.sql.Date;


public class Transacciones {
    private int idTransacciones;
    private int idCategoria;
    private float monto;
    private Date fecha;
    private String descripcion;
    private int idCuenta;

    public Transacciones() {
    }

    public int getIdTransacciones() {
        return idTransacciones;
    }

    public void setIdTransacciones(int idTransacciones) {
        this.idTransacciones = idTransacciones;
    }

    public int getIdCategoria() {
        return idCategoria;
    }

    public void setIdCategoria(int idCategoria) {
        this.idCategoria = idCategoria;
    }

    public float getMonto() {
        return monto;
    }

    public void setMonto(float monto) {
        this.monto = monto;
    }

    public Date getFecha() {
        return fecha;
    }

    public void setFecha(Date fecha) {
        this.fecha = fecha;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public int getIdCuenta() {
        return idCuenta;
    }

    public void setIdCuenta(int idCuenta) {
        this.idCuenta = idCuenta;
    }

    @Override
    public String toString() {
        return "Transacciones{" + "idTransacciones=" + idTransacciones + ", idCategoria=" + idCategoria + ", monto=" + monto + ", fecha=" + fecha + ", descripcion=" + descripcion + ", idCuenta=" + idCuenta + '}';
    }
    
    
}
