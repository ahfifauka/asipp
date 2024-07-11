<?php

namespace App\Http\Controllers\Export;

use DB;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;

class ExcelPlotReviewerUsulanPengabmas implements FromQuery
{
    use Exportable;

    public function query()
    {
        error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
        $data = DB::select('select users.name, users.nik, tb_usulan_pengabmas.judul_pengabmas, tb_reviewer_pengabmas.* 
        from users
        JOIN tb_usulan_pengabmas ON users.nik = tb_usulan_pengabmas.id_dosen
        JOIN tb_reviewer_pengabmas ON tb_usulan_pengabmas.id_usulan = tb_reviewer_pengabmas.id_usulan
        WHERE tb_reviewer_pengabmas.jenis = 1
        GROUP by tb_reviewer_pengabmas.id
        ORDER by tb_reviewer_pengabmas.tanggal DESC');
        //dd($data);
        return collect($data);
    }
}
