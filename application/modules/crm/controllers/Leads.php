<?php if (!defined('BASEPATH')) exit('No direct script access allowed');

class Leads extends MX_Controller
{
    function __construct()
    {
        parent::__construct();
       

    }
    
    /*
    *   Functionality - List all leads on dashboard page 
    *   Call from :  /dashboard
    */
    public function dashboard( ) {  
        echo "current controller hmvc";
    }

}