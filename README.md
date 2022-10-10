//文件附件
    public function setEnclosureAttribute($pictures)
    {
        
        // dd($pictures);
        $pictures = array_map(function($V){
            $encode = mb_detect_encoding($V, array('ASCII', 'UTF-8', 'GB2312', 'GBK', 'BIG5'));
            // dd($encode);
            return $encode == 'EUC-CN' ? iconv('GBK','UTF-8',$V) : $V;//从windows读取的文件名是GBK格式，存到数据库要用UTF-8格式。但是从数据库回显的数据本身就是UTF-8格式
        },$pictures);
        // dd($pictures);
        if (is_array($pictures)) {
            $this->attributes['enclosure'] = json_encode($pictures);
        }
    }
