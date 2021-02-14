<?php


$r = '';

$j = '';

$r = str_replace('b,',',',$r);
$r = str_replace('s,',',',$r);
$r = str_replace('d,',',',$r);
$r = str_replace('b}','}',$r);
$r = str_replace('s}','}',$r);
$r = str_replace('d}','}',$r);
$r = str_replace('I;-','20001666,',$r);
$r = str_replace('I;','20023666,',$r);
//$j = str_replace('"','\\"',str_replace('\\','\\\\',$j));


$ptdrs = explode('\'',$r); //c rien c la rue
$initial_code = "666789453666"; //et pas initial D MDR (ma santé mental diminue)
$aleds = [];
$r = '';
foreach ($ptdrs as $intkey => $ptdr)
{
    if ($intkey % 2)
    {
        $code = '1'.str_pad($intkey,3,"0",STR_PAD_LEFT) . $initial_code;
        if (in_array($ptdr,$aleds)) {
            $code = array_flip($aleds)[$ptdr];
        }
        else {
          $aleds[$code] = $ptdr;
        }
        $r .= $code;
    }
    else
    {
        $r .= $ptdr;
    }
}

function replace_ptdr($str,$aleds)
{
    foreach ($aleds as $code => $aled) {
        $str = str_replace($code,"'".$aled."'",$str);
    }
    $str = str_replace('20001666,','I;-',$str);
    $str = str_replace('20023666,','I;',$str);
    return $str;
}


if (!$j)
{
  echo $r;
  //echo json_encode($aleds);
}
else {
  $ar = json_decode($j,true);

  if (!$ar)
  {
      echo "null a chier"; die();
  }
  $pools = '{
      "pools": [';
  $tab = [];
  $items = [];
  $i=0;
  foreach ($ar['Items'] as $item)
  {
      $i++;
      $index = $item['id'] . (isset($item['tag']) ? md5(json_encode($item['tag'])) : '');
      if (array_key_exists($index,$items))
      {
          $items[$index]['Count'] += $item['Count'];
      }
      else
      {
          $items[$index] = $item;
      }
  }

  foreach ($items as $item)
  {
      $t = '
              {
              "rolls": {
                  "min": '.round($item['Count']*0.90).',
                  "max": '.round($item['Count']*1.10).'
              },
              "entries": [
                  {
                      "type": "item",
                      "weight": 1,
                      "name": "'.$item['id'].'"';
                 $t .= !isset($item['tag']) ? '' :
                      ',
                      "functions": [
                          {
                            "function": "set_nbt",
                            "tag": "'. str_replace('"','\\"',str_replace('\\','\\\\',replace_ptdr(json_encode($item['tag']),$aleds))) .'"
                          }
                      ]';
                  $t .=
                      '
                  }
              ]
          }
      ';

      $tab[] = $t;
  }

  $pools .= implode(',',$tab);

  $pools .= '
      ]
  }
  ';

  echo $pools;
}
