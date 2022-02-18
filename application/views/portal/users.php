<div class="row mb-3 ml-1">
    <?php if (check_route('add-user', 'post')): ?>
        <div class="col-xl-9 col-lg-6 col-md-4">
            <button class="btn btn-primary" data-toggle="modal" data-target="#add_user">Add User</button>
        </div>

    <?php endif; ?>
    <div class="col-xl-3 col-lg-6 col-md-8">
        <form>
            <div class="row">
                <div class="col-sm-8 mt-3 mt-md-0">
                    <input type="text" value="<?= $search ?>" name="name" class="form-control" placeholder="Name">
                </div>
                <div class="col-sm-4 mt-3 mt-md-0">
                    <button type="submit" class="btn btn-primary btn-block">Search</button>
                </div>
            </div>
        </form>
    </div>
</div>
<div class="row">
    <div class="col-md-12 col-lg-12">
        <div class="table-responsive">
            <table class="display table table-bordered">
                <thead>
                    <tr>
                        <th scope="col">#</th>
                        <th scope="col">Name</th>
                        <th scope="col">Email</th>
                        <th scope="col">User Role</th>
                        <th scope="col">Created At</th>
                        <th scope="col">Status</th>
                        <th scope="col">Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $sr = $this->paginator->get_start_count();
                    foreach ($users as $key => $value) {
                        ?>
                        <tr>
                            <th class="align-middle"><?= $sr++ ?></th>
                            <td class="align-middle"><?= $value->first_name . ' ' . $value->last_name ?></td>
                            <td class="align-middle"><?= $value->email ?></td>
                            <td class="align-middle"><?= $value->user_role_name ?></td>
                            <td class="align-middle"><?= $value->created_at ?></td>
                            <td class="align-middle"><?= ($value->active) ? 'Active' : 'Inactive' ?></td>
                            <td class="align-middle">
                                <?php if (check_route('edit-user', 'post')): ?>
                                    <button class="btn btn-success" data-toggle="modal" data-target="#user_<?= $value->id ?>" title="Edit User">
                                        <span class="fa fa-pen"></span>
                                    </button>
                                    <?php
                                endif;
                                if (check_route('delete-user', 'post')):
                                    ?>
                                    <button class="btn btn-danger delete-country" data-id="<?= $value->id ?>" title="Delete User">
                                        <span class="fa fa-trash"></span>
                                    </button>
                                <?php endif; ?>
                            </td>
                        </tr>

                      <div class="modal fade" id="user_<?= $value->id ?>" data-backdrop="static" data-keyboard="false">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <form action="<?= base_url('edit-user') ?>" method="post">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="exampleModalLabel">Edit User</h5>
                                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">×</span>
                                        </button>
                                    </div>
                                    <div class="modal-body">
                                        <div class="row">
                                            <div class="col-md-12 form-group mb-3">
                                                <label>First Name</label>
                                                <input type="text" class="form-control" required="" name="first_name" value="<?= $value->first_name ?>">
                                                <div class="text-danger"><?= form_error('first_name'); ?></div>
                                            </div>
                                            <div class="col-md-12 form-group mb-3">
                                                <label>Last Name</label>
                                                <input type="text" class="form-control" required="" name="last_name" value="<?= $value->last_name ?>">
                                                <div class="text-danger"><?= form_error('last_name'); ?></div>
                                            </div>
                                            <div class="col-md-12 form-group mb-3">
                                                <label>Email</label>
                                                <input type="text" class="form-control" required="" name="email" value="<?= $value->email?>">
                                                <div class="text-danger"><?= form_error('email'); ?></div>
                                            </div>
                                            <div class="col-md-12 form-group mb-3" style="display: none">
                                                <label>Password</label>
                                                <input type="password" class="form-control" autocomplete="new-password" name="password" value="">
                                                <div class="text-danger"><?= form_error('password'); ?></div>
                                            </div>
                                            <div class="col-md-12 form-group mb-3">
                                                <label>User Role</label>
                                                <select class="form-control" required="" name="user_role_id">
                                                    <option value="">Select User Role</option>
                                                    <?php foreach ($user_roles as $role) { ?>
                                                        <option <?=($value->user_role_name==$role->user_role_name)?'selected':''?> value="<?= $role->user_role_id ?>"><?= $role->user_role_name ?></option>
                                                    <?php }
                                                    ?>
                                                </select>
                                                <div class="text-danger"><?= form_error('user_role_id'); ?></div>
                                            </div>
                                            <div class="col-md-12 form-group mb-3">
                                                <label class="switch switch-primary mr-3">
                                                    <span>Status</span>
                                                   <input type="checkbox" name="active" <?= ($value->active) ? 'checked' : '' ?> value="1">
                                                    <span class="slider"></span>
                                                </label>
                                            </div>
                                        </div>
                                        <input type="hidden" class="form-control" required="" name="id" value="<?=$value->id?>">
                                    </div>
                                    <div class="modal-footer">
                                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                        <button type="submit" class="btn btn-primary">Edit User</button>
                                    </div>
                                </form>
                            </div>
                        </div>
                    </div>
                    <?php
                }
                if (empty($users)) {
                    ?>
                    <tr>
                        <td colspan="100" class="text-center">No Record Found</td>
                    </tr>
                <?php }
                ?>
                </tbody>
            </table>
        </div>
        <?php echo $this->paginator->get_links(); ?>
        <div class="modal fade" id="add_user" data-backdrop="static" data-keyboard="false">
            <div class="modal-dialog" role="document">
                <div class="modal-content">
                    <form action="<?= base_url('add-user') ?>" method="post">
                        <div class="modal-header">
                            <h5 class="modal-title" id="exampleModalLabel">Add User</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true">×</span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-12 form-group mb-3">
                                    <label>First Name</label>
                                    <input type="text" class="form-control" required="" name="first_name" value="<?= set_value('first_name') ?>">
                                    <div class="text-danger"><?= form_error('first_name'); ?></div>
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Last Name</label>
                                    <input type="text" class="form-control" required="" name="last_name" value="<?= set_value('last_name') ?>">
                                    <div class="text-danger"><?= form_error('last_name'); ?></div>
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Email</label>
                                    <input type="text" class="form-control" required="" name="email" value="<?= set_value('email') ?>">
                                    <div class="text-danger"><?= form_error('email'); ?></div>
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>Password</label>
                                    <input type="password" class="form-control" required="" name="password" value="<?= set_value('password') ?>">
                                    <div class="text-danger"><?= form_error('password'); ?></div>
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label>User Role</label>
                                    <select class="form-control" required="" name="user_role_id" val="<?= set_value('user_role_id') ?>">
                                        <option value="">Select User Role</option>
                                        <?php foreach ($user_roles as $value) { ?>
                                            <option value="<?= $value->user_role_id ?>"><?= $value->user_role_name ?></option>
                                        <?php }
                                        ?>
                                    </select>
                                    <div class="text-danger"><?= form_error('user_role_id'); ?></div>
                                </div>
                                <div class="col-md-12 form-group mb-3">
                                    <label class="switch switch-primary mr-3">
                                        <span>Status</span>
                                        <input type="checkbox" name="active" checked value="1">
                                        <span class="slider"></span>
                                    </label>
                                </div>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                            <button type="submit" class="btn btn-primary">Add User</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
    $(document).ready(function () {
        $('.delete-country').click(function () {
            var id = $(this).data('id');
            swal({
                title: 'Are you sure?',
                text: "This user will be deleted.",
                type: 'warning',
                showCancelButton: true,
                confirmButtonColor: '#3085d6',
                cancelButtonColor: '#d33',
                confirmButtonText: 'Yes, delete it!'
            }).then(function () {
                $.post('<?= base_url() ?>delete-user',
                        {id: id},
                        function (data, status) {
                            if (status === 'success') {
                                swal({
                                    title: "Deleted!",
                                    text: "User has been deleted.",
                                    type: "success"
                                }).then(function () {
                                    window.location.href = '';
                                });
                            }
                        });

            })
        });
<?php if ($this->session->flashdata('add_user_error')): ?>
            $('#add_user').modal('show');
<?php endif; ?>
    });
</script>