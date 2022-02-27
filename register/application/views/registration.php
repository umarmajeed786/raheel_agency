<!doctype html><html lang="en">
    <head>   
        <meta charset="utf-8" /> 
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />    
        <link rel="apple-touch-icon" sizes="76x76" href="<?= base_url('assets') ?>/img/apple-icon.png" /> 
        <link rel="icon" type="image/png" href="<?= base_url('assets') ?>/img/favicon.png" />
        <title>Tring Care Registration Form | Agency</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0' name='viewport' />
        <meta name="viewport" content="width=device-width" />
        <!-- Canonical SEO -->
        <link rel="canonical" href="https://www.creative-tim.com/product/paper-bootstrap-wizard"/> 
        <meta name="keywords" content="wizard, bootstrap wizard, creative tim, long forms, 3 step wizard, sign up wizard, beautiful wizard, long forms wizard, wizard with validation, paper design, paper wizard bootstrap, bootstrap paper wizard">        <meta name="description" content="Paper Bootstrap Wizard is a fully responsive wizard that is inspired by our famous Paper Kit  and comes with 3 useful examples and 5 colors.">        <!-- Schema.org markup for Google+ -->        <meta itemprop="name" content="Paper Bootstrap Wizard by Creative Tim">        <meta itemprop="description" content="Paper Bootstrap Wizard is a fully responsive wizard that is inspired by our famous Paper Kit  and comes with 3 useful examples and 5 colors.">        <meta itemprop="image" content="https://s3.amazonaws.com/creativetim_bucket/products/49/opt_pbw_thumbnail.jpg">        <!-- Twitter Card data --> 
        <meta name="twitter:card" content="summary_large_image">
        <meta name="twitter:site" content="@creativetim">
        <meta name="twitter:title" content="Paper Bootstrap Wizard by Creative Tim">
        <meta name="twitter:description" content="Paper Bootstrap Wizard is a fully responsive wizard that is inspired by our famous Paper Kit  and comes with 3 useful examples and 5 colors.">
        <meta name="twitter:creator" content="@creativetim">
        <meta name="twitter:image" content="https://s3.amazonaws.com/creativetim_bucket/products/49/opt_pbw_thumbnail.jpg">
        <!-- Open Graph data -->
        <meta property="og:title" content="Paper Bootstrap Wizard by Creative Tim | Free Boostrap Wizard" />
        <meta property="og:type" content="article" />
        <meta property="og:url" content="https://demos.creative-tim.com/paper-bootstrap-wizard/wizard-list-place.html" />
        <meta property="og:image" content="https://s3.amazonaws.com/creativetim_bucket/products/49/opt_pbw_thumbnail.jpg" />
        <meta property="og:description" content="Paper Bootstrap Wizard is a fully responsive wizard that is inspired by our famous Paper Kit  and comes with 3 useful examples and 5 colors." />
        <meta property="og:site_name" content="Creative Tim" />
        <!-- CSS Files -->
        <link href="<?= base_url('assets') ?>/css/bootstrap.min.css" rel="stylesheet" /> 
        <link href="<?= base_url('assets') ?>/css/paper-bootstrap-wizard.css" rel="stylesheet" /> 
        <!-- CSS Just for demo purpose, don't include it in your project -->
        <link href="<?= base_url('assets') ?>/css/demo.css" rel="stylesheet" />
        <!-- Fonts and Icons -->
        <link href="https://netdna.bootstrapcdn.com/font-awesome/4.4.0/css/font-awesome.css" rel="stylesheet">
        <link href='https://fonts.googleapis.com/css?family=Muli:400,300' rel='stylesheet' type='text/css'>
        <link href="<?= base_url('assets') ?>/css/themify-icons.css" rel="stylesheet">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.min.css" integrity="sha512-mSYUmp1HYZDFaVKK//63EcZq4iFWFjxSL+Z3T/aCt4IO9Cejm03q3NKKYN6pFQzY0SBOr8h+eCIAZHPXcpZaNw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        
        <style>
            @import url('https://fonts.googleapis.com/css?family=Open+Sans|Rock+Salt|Shadows+Into+Light|Cedarville+Cursive');
            .sig1 {            
                font-family: 'Shadows Into Light', cursive;            font-size: 1.8em;
            } 
        </style> 
    </head> 
    <body>
        <div class="image-container set-full-height" style="background-image: url('assets/img/paper-1.jpeg')">
            <!--   Big container   -->
            <div class="container">
                <div class="row">
                    <div class="col-sm-12 col-md-12 ">
                        <!--      Wizard container        -->
                        <div class="wizard-container">
                            <div class="card wizard-card" data-color="orange" id="wizardProfile">
                                <form action="<?= base_url() ?>portal/add_employee_registration" method="post" enctype="multipart/form-data">
                                    <!--        You can switch " data-color="orange" "  with one of the next bright colors: "blue", "green", "orange", "red", "azure"          --> 
                                    <div class="wizard-header text-center">
                                        <h3 class="wizard-title">Employee Enrolment Form</h3>
                                        <p class="category">This information will let us know more about you.</p>
                                    </div>
                                    <div class="wizard-navigation">
                                        <div class="progress-with-circle">
                                            <div class="progress-bar" role="progressbar" aria-valuenow="1" aria-valuemin="1" aria-valuemax="3" style="width: 21%;">
                                                
                                            </div>
                                        </div>
                                        <ul
                                        <li> 
                                                <a href="#about" data-toggle="tab"> 
                                                    <div class="icon-circle">
                                                        <i class="ti-user">
                                                            
                                                        </i>
                                                    </div>
                                                    Personal Details
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#account" data-toggle="tab">
                                                    <div class="icon-circle">
                                                        <i class="ti-settings"></i>
                                                    </div>
                                                    Formal Education Qualification
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#address" data-toggle="tab">
                                                    <div class="icon-circle">
                                                        <i class="ti-map"></i>
                                                    </div>
                                                    Employment History
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#traning" data-toggle="tab">
                                                    <div class="icon-circle">
                                                        <i class="ti-map"></i>
                                                    </div>
                                                    Training
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#general" data-toggle="tab">
                                                    <div class="icon-circle">
                                                        <i class="ti-map"></i>
                                                    </div>
                                                    General Information
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#uploads" data-toggle="tab">
                                                    <div class="icon-circle">
                                                        <i class="ti-upload"></i>
                                                    </div>
                                                    Uploads
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                    <div class="tab-content">
                                        <div class="tab-pane" id="about">
                                            <div class="row">
                                                <h5 class="info-text mb-5"> Personal Details.</h5>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>Title <small>(required)</small></label>
                                                        <input name="title" type="text" class="form-control" placeholder="title" require>
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Surname <small>(required)</small></label>
                                                        <input name="surname" type="text" class="form-control" placeholder="Surname">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>First Name <small>(required)</small></label>
                                                        <input name="firstname" type="text" class="form-control" placeholder="Andrew...">
                                                    </div>
                                                    <div class="form-group">
                                                        <label>Last Name <small>(required)</small></label>
                                                        <input name="lastname" type="text" class="form-control" placeholder="Smith...">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 ">
                                                    <div class="form-group">
                                                        <label>Email <small>(required)</small></label>
                                                        <input name="email" type="email" class="form-control" placeholder="email@email.com">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 ">
                                                    <div class="form-group">
                                                        <label>Mobile Number <small>(required)</small></label>
                                                        <input name="mobile_number" type="number" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 ">
                                                    <div class="form-group">
                                                        <label>Nationality <small>(required)</small></label>
                                                        <input name="nationality" type="text" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 ">
                                                    <div class="form-group">
                                                        <label>DOB <small>(required)</small></label>
                                                        <input name="dob" type="date" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6 ">
                                                    <div class="form-group">
                                                        <label>NIN (National Insurance Number) <small></small></label>
                                                        <input name="nin" type="text" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="account">
                                            <div class="row">
                                                <h5 class="info-text mb-5">Formal Education Qualification </h5>
                                                <div class="col-md-12 table-responsive">
                                                    <table class="table  table-bordered text-center">
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2" rowspan="2">Name of School/College/University and Location </th>
                                                                <th colspan="2" width="360" >Dates of attendance</th>
                                                                <th colspan="3" rowspan="2" width="160">Course of Study/Qualification(s) gained e.g. GCSE’s, “A�? levels, NVQ, Degree etc</th>
                                                                <th colspan="3" rowspan="2">Grade</th>
                                                            </tr>
                                                            <tr>
                                                                <th>From <br>Month/Year</th>
                                                                <th>To <br>Month/Year</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th colspan="2">
                                                                    <input name="school_name[]" type="text" class="form-control" placeholder="Institute name" require>
                                                                </th>
                                                                <td><input name="school_from[]" type="text" class="form-control datepicker" > </td>
                                                                <td> <input name="school_from[]" type="text" class="form-control datepicker" ></td>
                                                                <td colspan="3"> 
                                                                    <input name="degree[]" type="text" class="form-control" placeholder="e.g. GCSE’s" >
                                                                </td>
                                                                <td colspan="3"> 
                                                                    <input name="grade[]" type="text" class="form-control" placeholder="Grade" >
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th colspan="2">
                                                                    <input name="school_name[]" type="text" class="form-control" placeholder="Institute name" require>
                                                                </th>
                                                                <td>
                                                                    <input name="school_from[]" type="text" class="form-control datepicker" >
                                                                </td>
                                                                <td> 
                                                                    <input name="school_from[]" type="text" class="form-control datepicker" >
                                                                </td>
                                                                <td colspan="3">
                                                                    <input name="degree[]" type="text" class="form-control" placeholder="e.g. GCSE’s" >
                                                                </td>
                                                                <td colspan="3"> 
                                                                    <input name="grade[]" type="text" class="form-control" placeholder="Grade" >
                                                                </td>
                                                            </tr>
                                                            <tr>
                                                                <th colspan="2">
                                                                    <input name="school_name[]" type="text" class="form-control" placeholder="Institute name" require>
                                                                </th>
                                                                <td>
                                                                    <input name="school_from[]" type="text" class="form-control datepicker" >
                                                                </td>
                                                                <td>
                                                                    <input name="school_from[]" type="text" class="form-control datepicker" >
                                                                </td>
                                                                <td colspan="3">
                                                                    <input name="degree[]" type="text" class="form-control" placeholder="e.g. GCSE’s" >
                                                                </td>
                                                                <td colspan="3">
                                                                    <input name="grade[]" type="text" class="form-control" placeholder="Grade" >
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="address">
                                            <h5 class="info-text"> Employment History</h5>
                                            <div class="row">
                                                <div class="col-sm-12 col-md-12">
                                                    <h5 class="info-text">Formal Education Qualification </h5>
                                                    <table class="table table-responsive table-bordered text-center">
                                                        <thead>
                                                            <tr>
                                                                <th colspan="2" rowspan="2">Name & address of Employer </th>
                                                                <th colspan="2" width="360" >Dates of Employment</th>
                                                                <th colspan="3" rowspan="2" width="160">Position held and brief summary of duties and responsibilities</th>
                                                                <th colspan="3" rowspan="2">Reason for leaving/Last salary or wage</th>
                                                            </tr>
                                                            <tr>
                                                                <th>From <br>Month/Year</th>
                                                                <th>To <br>Month/Year</th>
                                                            </tr>
                                                        </thead>
                                                        <tbody>
                                                            <tr>
                                                                <th colspan="2">
                                                                    <input name="company_name" type="text" class="form-control" placeholder="Company name" require>
                                                                </th>
                                                                <td>
                                                                    <input name="company_from" type="text" class="form-control datepicker" >
                                                                </td>
                                                                <td>
                                                                    <input name="company_from" type="text" class="form-control datepicker" >
                                                                </td>
                                                                <td colspan="3">
                                                                    <input name="position_held" type="text" class="form-control" placeholder="Position" require>
                                                                </td>
                                                                <td colspan="3">
                                                                    <input name="reason_for_leaving" type="text" class="form-control" placeholder="Reason for leaving" require>
                                                                </td>
                                                            </tr>
                                                        </tbody>
                                                    </table>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="traning">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <h5 class="info-text"> Training – eg. Manual handling, CPR, infection control, first aid etc, (please provide certificates)</h5>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>Details of training</label>
                                                        <textarea  name="traning_detail" class="form-control" cols="30" rows="10"></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>Hospital/Establishment</label>
                                                        <textarea  name="employee_hospital" class="form-control" cols="30" rows="10"></textarea>
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>Date from   </label>
                                                        <input type="date"  name="date_from" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>Date To   </label>
                                                        <input type="date"  name="date_to" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>Courses Taken</label>
                                                        <input type="text"  name="employee_course" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12"> 
                                                    <div class="form-group">
                                                        <label>Attainment</label>
                                                        <input type="text"  name="employee_attainment" class="form-control" placeholder="">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="general">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <h5 class="info-text"> General Information</h5>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>Do you hold a valid and current British Driver’s Licence? </label>
                                                        <input type="radio" name="british_driver_license"  value="yes"  checked>
                                                        Yes
                                                        </input>
                                                        <input type="radio" name="british_driver_license" value="no">
                                                        No                                                        
                                                        </input>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>Do you have a car? </label>
                                                        <input type="radio" name="car"  value="yes" checked >
                                                        Yes                                                        
                                                        </input>                                                        
                                                        <input type="radio"  name="car"        value="no" >
                                                        No                                                        
                                                        </input>                                                    
                                                    </div>                                                
                                                </div>                                                
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label>please state which languages you speak</label>
                                                        <input type="text" name="language" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-sm-6">
                                                    <div class="form-group">
                                                        <label style="display: block;">Language Level</label>
                                                        <input type="radio" name="language_level" value="beginner" checked >
                                                        beginner
                                                        </input>
                                                        <input type="radio"
                                                               name="language_level"
                                                               value="intermidiate" >
                                                        intermidiate
                                                        </input>
                                                        <input type="radio"
                                                        name="language_level"
                                                        value="expert" >
                                                        Expert
                                                        </input>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>How did you hear about this agency?</label>
                                                        <input type="text" name="hear_about_agency" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>Are you a member of a Union or Professional Organisation offering Indemnity Insurance? </label>
                                                        <input type="radio"
                                                        name="union_member"
                                                        value="yes"
                                                        checked >
                                                        Yes
                                                        </input>
                                                        <input type="radio"
                                                        name="union_member"
                                                        value="no" >
                                                        No
                                                        </input>
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>Amount of Cover</label>
                                                        <input type="text" name="amount_of_cover" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>Policy Number</label>
                                                        <input type="text" name="policy_number" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>Policy Exp</label>
                                                        <input type="date" name="policy_exp" class="form-control">
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="tab-pane" id="uploads">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <h5 class="info-text"> Uploads</h5>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>Picture</label>
                                                        <input type="file" name="picture" class="form-control">
                                                    </div>
                                                </div>
                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <label>Signature</label>
                                                        <input type="text" name="signature"  class="form-control sig1" name="Signature" />
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="wizard-footer"> 
                                        <div class="pull-right">
                                            <input type='button' class='btn btn-next btn-fill btn-warning btn-wd' name='next' value='Next' />
                                            <input type='submit' class='btn btn-finish btn-fill btn-warning btn-wd' name='submit' value='Update' />
                                        </div>
                                        <div class="pull-left">
                                            <input type='button' class='btn btn-previous btn-default btn-wd' name='previous' value='Previous' />
                                        </div>
                                        <div class="clearfix"></div>
                                    </div>
                                </form>
                            </div>
                        </div> <!-- wizard container -->
                    </div>
                </div><!-- end row -->
            </div> <!--  big container -->
        </div>
    </body>
    <!--   Core JS Files   -->
    <script src="<?= base_url('assets') ?>/js/jquery-2.2.4.min.js" type="text/javascript"></script>
    <script src="<?= base_url('assets') ?>/js/bootstrap.min.js" type="text/javascript"></script>
    <script src="<?= base_url('assets') ?>/js/jquery.bootstrap.wizard.js" type="text/javascript"></script>
    <!--  Plugin for the Wizard -->    <script src="<?= base_url('assets') ?>/js/demo.js" type="text/javascript"></script>
    <script src="<?= base_url('assets') ?>/js/paper-bootstrap-wizard.js" type="text/javascript"></script> 
    <!--  More information about jquery.validate here: https://jqueryvalidation.org/	 -->
    <script src="<?= base_url('assets') ?>/js/jquery.validate.min.js" type="text/javascript"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.9.0/js/bootstrap-datepicker.min.js" integrity="sha512-T/tUfKSV1bihCnd+MxKD0Hm1uBBroVYBOYSk1knyvQ9VyZJpc/ALb4P0r6ubwVPSGB2GvjeoMAJJImBG12TiaQ==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <script>        
        $('.datepicker').datepicker({ 
        format: 'mm/dd/yyyy'       
    });    </script>
</html>