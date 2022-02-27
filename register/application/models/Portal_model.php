<?php
class Portal_model extends CI_model {    
    public function add_employee_application_save() {               
        $data = array(            'title' => $this->input->post('title'),    
            'surname' => $this->input->post('surname'),       
            'firstname'=> $this->input->post('firstname'),    
            'lastname'=> $this->input->post('lastname'),     
            'email'=> $this->input->post('email'),       
            'mobile_number'=> $this->input->post('mobile_number'), 
            'nationality'=> $this->input->post('nationality'),    
            'dob'=> $this->input->post('dob'),    
            'nin'=> $this->input->post('nin'),
            'british_driver_license'=> $this->input->post('british_driver_license'),  
            'car'=> $this->input->post('car'),        
            'language'=> $this->input->post('language'),  
            'language_level'=> $this->input->post('language_level'),
            'hear_about_agency'=> $this->input->post('hear_about_agency'),    
            'union_member'=> $this->input->post('union_member'),      
            'amount_of_cover'=> $this->input->post('amount_of_cover'), 
            'policy_number'=> $this->input->post('policy_number'),    
            'policy_exp'=> $this->input->post('policy_exp'),         
            'picture'=> $this->input->post('picture'),           
            'signature'=> $this->input->post('signature'),     
            'created_at' => date('y-m-d'),         
            'updated_at' => date('y-m-d'),    
            );  
        $result = $this->db->insert('employee', $data);//  print_r($result);die;    
        //    // $this->add_log('student', $this->db->insert_id(), 'added');    
        //        return $result;    
       }}
    ?>
