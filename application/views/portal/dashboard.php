
<div class="row">
    <div class="col-lg-12 col-md-12">
        <div class="row">

            <div class="col-lg-3 col-md-4 col-sm-6">
                <a href="<?= base_url() ?>users">
                    <div class="card card-icon mb-4">
                        <div class="card-body text-center">
                            <span class="fa fa-users"></span>
                            <p class="text-muted mt-2 mb-2">Total Users</p>
                            <p class="text-primary text-24 line-height-1 m-0"><?= $total_cities ?></p>
                        </div>
                    </div>
                </a>
            </div>
            <div class="col-lg-3 col-md-4 col-sm-6">
                <a href="<?= base_url() ?>employee">
                    <div class="card card-icon mb-4">
                        <div class="card-body text-center">
                            <span class="fa fa-user-tie"></span>
                            <p class="text-muted mt-2 mb-2">Total Employee</p>
                            <p class="text-primary text-24 line-height-1 m-0"><?= $total_employee?></p>
                        </div>
                    </div>
                </a>
            </div>

        </div>
    </div>

</div>
