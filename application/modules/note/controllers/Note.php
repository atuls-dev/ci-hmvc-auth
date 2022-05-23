<?php
if ( ! defined('BASEPATH')) exit('No direct script access allowed');
class Note extends MX_Controller {
  
    public function __construct()
    {
        parent::__construct();
        $this->load->model('note_model');
        $this->load->helper('url_helper');
        $this->load->helper('form');
        $this->load->library('form_validation');
        // $this->load->library('ion_auth');
        // if (!$this->ion_auth->logged_in())
        // {
        //   redirect('auth/login');
        // }
    }
  
    public function index()
    {
        $data['notes'] = $this->note_model->notes_list();
        $data['title'] = 'Notes List';
 
        $this->load->view('list', $data);
    }
  
    public function create()
    {
        $data['title'] = 'Create Note';
        $this->load->view('create', $data);
    }
      
    public function edit($id)
    {
        $id = $this->uri->segment(3);
        $data = array();
 
        if (empty($id))
        { 
         show_404();
        }else{
          $data['note'] = $this->note_model->get_notes_by_id($id);
          $this->load->view('edit', $data);
        }
    }
    public function store()
    {
 
        $this->form_validation->set_rules('title', 'Title', 'required');
        $this->form_validation->set_rules('description', 'Description', 'required');
 
        $id = $this->input->post('id');
 
        if ($this->form_validation->run() === FALSE)
        {  
            if(empty($id)){
              redirect( base_url('note/create') ); 
            }else{
             redirect( base_url('note/edit/'.$id) ); 
            }
        }
        else
        {
            $data['note'] = $this->note_model->createOrUpdate();
            redirect( base_url('note') ); 
        }
         
    }
     
     
    public function delete()
    {
        $id = $this->uri->segment(3);
         
        if (empty($id))
        {
            show_404();
        }
                 
        $notes = $this->note_model->delete($id);
         
        redirect( base_url('note') );        
    }
    
    function testqr(){
        $path = getcwd();
        echo $path; 
        $this->load->library('infiqr');
        $qrText = 'sadadasddasdasd'; // receive the text for QR
        $directory = $path.'/assets/qr/'; // folder where to store QR
        $fileName = 'QR-'.rand().'.png'; // generate random name of QR image
        QRcode::png($qrText, $directory.$fileName, 'L', 4, 2); // 
        echo "success^".$directory.$fileName; // returns the qr-image path
        echo '<img src="'.base_url('assets/qr/'.$fileName).'" >';
       //var_dump($err);
    }
    
}