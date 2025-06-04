package ui.dialog.thanhToanDialog;

import entity.HoaDon;
import entity.Ve;


@FunctionalInterface
public interface ThanhToanListener {
    void thanhToanThanhCong(HoaDon hoaDon);
}
