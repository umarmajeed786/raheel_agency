<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class portal extends CI_Controller {
    
    public function employee_registration() {
        $data['page_title'] = "Employee Application";
        $this->load->model('portal_model');
             
        
        $this->load->view('registration');
    }


    public function add_employee_registration(){
        $this->load->model('portal_model');

        if ($this->portal_model->add_employee_application_save()) {
            $userdata = array(
                    'email' => $this->input->post('email'),
                    'user_registered' => true
            );
                $this->session->set_userdata($userdata);
            $this->session->set_flashdata('success_message', 'Employee added  successfully.');
            redirect('/portal/dbs');
        } else {
            $this->session->set_flashdata('errorr_message', 'Something went wrong. Please try again!');
            redirect('/');
        }   
    }
    
    public function ask_dbs() {
        if ($this->session->userdata('user_registered')) {
            $this->load->view('dbs');
        } else {
            redirect('/');
        }
    }
    
    public function dbs_success($response) {
        if ($this->session->userdata('user_registered')) {
            if($response == 'yes'){
                $data['dbs_message'] = "Thank you! you are successfully registered.";
            }
            else if($response == 'no'){
                $msg = '<p><b>Username:</b> Dummy Username</p>'
                    . '<p><b>Password:</b>  Dummy Password</p>'
                    . '<p><b>Link:</b>  https://www.google.com/</p>';
                $this->email->to($this->session->userdata('email'));
                $this->email->from('info@raheel.agency', 'Raheel');
                $this->email->subject('Registeration Successful');
                $this->email->message($msg);
                $this->email->send();
                $data['dbs_message'] = "Thank you! We have sent you an email with details.";
            }
            else{
                redirect('/portal/dbs');
            }
            $this->load->view('dbs_success', $data);
            $this->session->sess_destroy();
        } else {
            redirect('/');
        }
    }

  
}
