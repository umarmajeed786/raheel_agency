<?php
class Portal_model extends CI_model {    
    public function add_employee_application_save($pass) {
        $data = array(            
            'title' => $this->input->post('title'),    
            'surname' => $this->input->post('surname'),       
            'firstname'=> $this->input->post('firstname'),    
            'email'=> $this->input->post('email'),       
            'password'=> sha1($pass),       
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
            'signature'=> $this->input->post('signature'),     
            'created_at' => date('y-m-d'),         
            'updated_at' => date('y-m-d'),    
            );
        
        if (isset($_FILES['picture']) && $_FILES['picture']['name'] != '') {
           
            $path = './assets/images/employee/';
            if (!is_dir($path)) {
                    mkdir($path);
            }
            $config['upload_path'] = $path;
            $config['allowed_types'] = '*';
            $file_type = pathinfo($_FILES['picture']['name'], PATHINFO_EXTENSION);
            $remove_dot_file = str_replace('.', '', $_FILES['picture']['name']);
            $remove_dot_file = str_replace($file_type, '', $remove_dot_file);
            $file = '-employee-image' . '.' . 'png';
            $config['file_name'] = $remove_dot_file. $file;
            $profile_image = $config['file_name'];
            $this->upload->initialize($config);
            if($this->upload->do_upload('picture')){
                $data['picture'] = $profile_image;
            }else{
                print_r($this->upload->display_errors());
            }
        }
        
        $result = $this->db->insert('employee', $data);//  print_r($result);die; 
           
        //    // $this->add_log('student', $this->db->insert_id(), 'added');    
                return $result;    
       }}
    ?>
