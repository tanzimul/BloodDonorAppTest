@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel panel-default">
                <div class="panel-heading">Users List</div>

                <div class="panel-body">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="table-responsive">
                                <table id="users" class="table table-bordered">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>User Name</th>
                                            <th>Email</th>
                                            <th>Address</th>
                                            <th>Contact No</th>
                                            <th>Blood Group</th>
                                        </tr>
                                    </thead>
                                    <tfoot>
                                        <tr>
                                            <th>ID</th>
                                            <th>User Name</th>
                                            <th>Email</th>
                                            <th>Address</th>
                                            <th>Contact No</th>
                                            <th>Blood Group</th>
                                        </tr>
                                    </tfoot>
                                    <tbody>
                                        @if(isset($users))
                                            @foreach($users as $key => $user)
                                            <tr>
                                                <td>{{ ++$key }}</td>
                                                <th>{{ $user->name }}</th>
                                                <td>{{ $user->email }}</td>
                                                <td>{{ $user->address }}</td>
                                                <td>{{ $user->contactNo }}</td>
                                                <td>{{ $user->bloodGroup }}</td>
                                            </tr>
                                            @endforeach
                                        @endif
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection