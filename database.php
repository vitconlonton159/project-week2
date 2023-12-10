<?php
    class Database{
        public $host  = DB_HOST;   
        public $user  = DB_USER;   
        public $pass  = DB_PASS;
        public $dbmane = DB_NAME; 
      
        public $link;
        public $error;
    
        public function __construct(){
            $this->connectDB();
        }
    
        private function connectDB(){
            $this->link = new mysqli($this->host, $this->user, $this->pass, $this->dbname);
    
            if($this->link->connect_error){
                $this->error = "Connection fail: " . $this->link->connect_error;
                return false;
            }
        }
    }

    //chon hoac doc data
    
    public function select($query){
        $result = $this->link->query($query) or
        die($this->link->error.__line__);
        if($result->num_rows > 0){
            return $result;
        }else{
            return false;
        }
    }

    //nhap data
    public function insert($query){
        $update_row = $this->link->query($query) or
        die($this->link->error.__line__);
        if($update_row){
            return $update_row
        }else {
            return false;
        }
    }

    // xoa data
    public function delete($query){
        $delete_row = $this->link->query($query) or
        die($this->link->error.__line__);
        if($delete_row){
            return $delete_row;
        }else{
            return false;
        }
    }

    ?>