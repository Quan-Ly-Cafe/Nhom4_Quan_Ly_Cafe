/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package MyFrame;

import java.io.Serializable;

/**
 *
 * @author Haiiinvv
 */
public class Nhanvien implements Serializable{
    String Ten;
    String GioiTinh;
    int tuoi;
    String DiaChi;
String ChucVu  ;

    public Nhanvien(String Ten, String GioiTinh, int tuoi, String DiaChi, String ChucVu) {
        this.Ten = Ten;
        this.GioiTinh = GioiTinh;
        this.tuoi = tuoi;
        this.DiaChi = DiaChi;
        this.ChucVu = ChucVu;
    }

    public Nhanvien() {
    }

    public String getTen() {
        return Ten;
    }

    public void setTen(String Ten) {
        this.Ten = Ten;
    }

    public String getGioiTinh() {
        return GioiTinh;
    }

    public void setGioiTinh(String GioiTinh) {
        this.GioiTinh = GioiTinh;
    }

    public int getTuoi() {
        return tuoi;
    }

    public void setTuoi(int tuoi) {
        this.tuoi = tuoi;
    }

    public String getDiaChi() {
        return DiaChi;
    }

    public void setDiaChi(String DiaChi) {
        this.DiaChi = DiaChi;
    }

    public String getChucVu() {
        return ChucVu;
    }

    public void setChucVu(String ChucVu) {
        this.ChucVu = ChucVu;
    }

 

    
  
}
