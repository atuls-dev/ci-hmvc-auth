<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Crm extends MX_Controller
{
    function __construct()
    {
        parent::__construct();
       

    }
    
    /*
    *   Functionality - List all leads on dashboard page 
    *   Call from :  /dashboard
    */
    public function test( ) {  
        echo "current controller hmvc test";
        $this->load->view('crm/test.php');
    }

}