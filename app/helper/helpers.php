<?php

function rounding($num){
    if($num>=1000){
        if(substr($num,-3)>=500){
            $rup = (substr($num,0, (strlen($num)-3)) + 1)*1000;
        }else{
            $rup = $num - substr($num,-3);
        }
    }else{
        if($num >= 500){
            $rup = 1000;
        }else{
            $rup = 0;
        }
    }
    return $rup;
    //return "Rp. ".number_format($rup,0,',','.');
}

