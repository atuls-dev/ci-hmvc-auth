<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Test extends MX_Controller {
  
    public function __construct()
    {
        parent::__construct();
      
    }
  
    public function index()
    {
        $data['title'] = 'Notes List';
        echo 'dddddddddddddddddd test';
        //$this->load->view('list', $data);
    }
    
}