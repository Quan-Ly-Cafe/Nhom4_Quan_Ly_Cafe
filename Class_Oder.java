/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package phong_cafe;

/**
 *
 * @author Admin
 */
public class Class_Oder {
    public String hoadon,sanpham;
    public Double soluong,giatien;

    public Class_Oder() {
    }

    public Class_Oder(String hoadon, String sanpham, Double soluong, Double giatien) {
        this.hoadon = hoadon;
        this.sanpham = sanpham;
        this.soluong = soluong;
        this.giatien = giatien;
    }

    public String getHoadon() {
        return hoadon;
    }

    public void setHoadon(String hoadon) {
        this.hoadon = hoadon;
    }

    public String getSanpham() {
        return sanpham;
    }

    public void setSanpham(String sanpham) {
        this.sanpham = sanpham;
    }

    public Double getSoluong() {
        return soluong;
    }

    public void setSoluong(Double soluong) {
        this.soluong = soluong;
    }

    public Double getGiatien() {
        return giatien;
    }

    public void setGiatien(Double giatien) {
        this.giatien = giatien;
    }
    
}
