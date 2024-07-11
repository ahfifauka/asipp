<?php

namespace App\Http\Controllers\Export;

use DB;
use Maatwebsite\Excel\Concerns\FromQuery;
use Maatwebsite\Excel\Concerns\Exportable;

class ExcelPlotReviewerUsulanPenelitian implements FromQuery
{
    use Exportable;

    public function query()
    {
        error_reporting(E_ALL ^ (E_NOTICE | E_WARNING));
        $data = DB::select('select users.name, users.nik, tb_usulan_penelitian.judul_penelitian, tb_reviewer_penelitian.* 
        from users
        JOIN tb_usulan_penelitian ON users.nik = tb_usulan_penelitian.id_dosen
        JOIN tb_reviewer_penelitian ON tb_usulan_penelitian.id_usulan = tb_reviewer_penelitian.id_usulan
        WHERE tb_reviewer_penelitian.jenis = 1
        GROUP by tb_reviewer_penelitian.id
        ORDER by tb_reviewer_penelitian.tanggal DESC');
        //dd($data);
        return collect($data);
    }
}
