<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class portal extends CI_Controller {
    
    public function employee_registration() {
        $data['page_title'] = "Employee Application";
        $this->load->model('portal_model');
             
        
        $this->load->view('registration');
    }


    public function add_employee_registration(){
        $pass= $this->randomPassword();
        $this->load->model('portal_model');
        $this->form_validation->set_rules('email', 'Email', 'trim|required|is_unique[employee.email]');
        $this->form_validation->set_message('is_unique', 'The email is already registered');
        if (!$this->form_validation->run()) {
            $this->session->set_flashdata('error_message', 'The email is already registered');
            redirect('/');
        } else if ($this->portal_model->add_employee_application_save($pass)) {
            $userdata = array(
                    'email' => $this->input->post('email'),
                    'user_registered' => true
            );
            $msg =    '<p>Hi, Your account is created successfuly<br> Please find your email password for login below <br><br>'
                    . '<b>Email:</b> '.$this->input->post('email').'</p>'
                    . '<p><b>Password:</b>  '.$pass.'<br><br>Thanks</p>';
            $this->email->to($this->input->post('email'));
            $this->email->from('info@raheel.agency', 'Raheel');
            $this->email->subject('Registeration Successful || Tring');
            $this->email->message($msg);
            $this->email->send();
            $this->session->set_userdata($userdata);
            $this->session->set_flashdata('success_message', 'Employee added  successfully.');
            redirect('/portal/dbs');
        } else {
            $this->session->set_flashdata('error_message', 'Something went wrong. Please try again!');
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
    public function randomPassword() {
    $alphabet = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890';
    $pass = array(); //remember to declare $pass as an array
    $alphaLength = strlen($alphabet) - 1; //put the length -1 in cache
    for ($i = 0; $i < 8; $i++) {
        $n = rand(0, $alphaLength);
        $pass[] = $alphabet[$n];
    }
    return implode($pass); //turn the array into a string
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
