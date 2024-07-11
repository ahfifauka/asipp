<?php

namespace App\Http\Controllers\Export;

use DB;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;

class ExcelUsulanPengabmas implements FromQuery
{
    use Exportable;

    public function query()
    {
        error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
        $data = DB::select('select users.nik as "NIK", users.name as "Nama", users.email as "Email", users.fakultas as "Fakultas", users.program_studi as "Prodi", tb_usulan_pengabmas.judul_pengabmas as "Judul", tb_usulan_pengabmas.file as "File", tb_usulan_pengabmas.luaran_wajib as "Luaran Wajib", tb_usulan_pengabmas.luaran_tambahan as "Luaran Tambahan", tb_usulan_pengabmas.biaya_hibah_pt as "Biaya PT", tb_usulan_pengabmas.biaya_hibah_luar as "Hibah Luar",  tb_usulan_pengabmas.jenis_pengabmas as "Jenis pengabmas", tb_usulan_pengabmas.tanggal as "Tanggal", tb_usulan_pengabmas.status as "Status"
        FROM users
        JOIN tb_usulan_pengabmas ON users.nik = tb_usulan_pengabmas.id_dosen
        group by tb_usulan_pengabmas.id_usulan
        order by tb_usulan_pengabmas.tanggal DESC');
        //dd($data);
        return collect($data);
    }
}
