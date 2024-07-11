<?php

namespace App\Http\Controllers\Export;

use DB;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;

class ExcelUsulanPenelitian implements FromQuery
{
    use Exportable;

    public function query()
    {
        error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
        $data =  DB::select('select users.nik as "NIK", users.name as "Nama", users.email as "Email", users.fakultas as "Fakultas", users.program_studi as "Prodi", tb_usulan_penelitian.judul_penelitian as "Judul", tb_usulan_penelitian.file as "File", tb_usulan_penelitian.luaran_wajib as "Luaran Wajib", tb_usulan_penelitian.luaran_tambahan as "Luaran Tambahan", tb_usulan_penelitian.biaya_hibah_pt as "Biaya PT", tb_usulan_penelitian.biaya_hibah_luar as "Hibah Luar",  tb_usulan_penelitian.jenis_penelitian as "Jenis Penelitian", tb_usulan_penelitian.tanggal as "Tanggal", tb_usulan_penelitian.status as "Status"
        FROM users
        JOIN tb_usulan_penelitian ON users.nik = tb_usulan_penelitian.id_dosen
        group by tb_usulan_penelitian.id_usulan
        order by tb_usulan_penelitian.tanggal DESC');
        //dd($data);
        return collect($data);
    }
}
