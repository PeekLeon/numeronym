$path_file = "c:\Users\leon\Documents\test.txt"

$my_file = get-content $path_file

foreach ($line in $my_file){
	$words = $line.Split(" ")
    $l3e = ""

    foreach($word in $words){
        $word_length = $word.Length-2
        $word_end = $word_length+1
        $dot = ""
 
        if ($word_length -gt 0){
            if($word -match '[.]{3}'){
                $dot = "..."
                $word_end = $word_length-2
                
            }elseif($word -match '[.?!:]'){
                $dot = $word[$word_end]
                $word_end = $word_length
            }
            $w2d = $word[0]+$word_length+$word[$word_end]
        }else{
            $w2d = $word
        }

        $l3e += $w2d+$dot+" "
        
    }
    echo $l3e
}
