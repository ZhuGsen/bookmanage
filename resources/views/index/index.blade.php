@extends('layouts.app')
@section('styles')
    <link rel="stylesheet" href="{{asset('css/select2.min.css')}}">
@stop
@section('content')
    <div class="btn-group">
        <button type="button" class="btn btn-success">{{trans('home/index.home_lanage')}}</button>
        <button type="button" class="btn btn-success dropdown-toggle" data-toggle="dropdown">
            <span class="sr-only">Toggle Dropdown</span>
        </button>
        <div class="dropdown-menu" role="menu">
            <a class="dropdown-item" href="{{route('setLanger')}}?&language=cn">{{trans('home/index.home_lanage_cn')}}</a>
            <a class="dropdown-item" href="{{route('setLanger')}}?&language=en">{{trans('home/index.home_lanage_en')}}</a>
            <a class="dropdown-item" href="{{route('setLanger')}}?&language=en">{{trans('home/index.home_lanage_sn')}}</a>

        </div>
    </div>

    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <div id="example1_wrapper" class="dataTables_wrapper form-inline dt-bootstrap">
                            <form method="get">
                                <div class="row">
                                    <div class="col-sm-6">
                                        <div class="dataTables_length" id="example1_length">


                                        </div>
                                    </div>
                                    <div class="col-sm-6 text-right">
                                        <div id="example1_filter" class="dataTables_filter">
                                            <label>{{trans('home/index.home_search')}}
                                                <input type="search" class="form-control input-sm" placeholder=""
                                                       name="keyword" value="" aria-controls="example1">
                                            </label>
                                        </div>
                                    </div>
                                </div>
                            </form>


                            @include('partials.error')
                            @include('partials.success')
                            <div class="row">
                                <div class="col-sm-12">
                                    <table id="example1" class="table table-bordered table-striped dataTable"
                                           role="grid" aria-describedby="example1_info">
                                        <thead>
                                        <tr role="row">
                                            <th class="sorting_asc" tabindex="0" aria-controls="example1"
                                                rowspan="1"
                                                colspan="1"
                                                aria-sort="ascending"
                                                aria-label="Rendering engine: activate to sort column descending"
                                                style="width: 165px;">ID
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1"
                                                colspan="1"
                                                aria-label="Browser: activate to sort column ascending"
                                                style="width: 203.667px;">
                                                {{trans('home/index.home_book_name')}}
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1"
                                                colspan="1"
                                                aria-label="Browser: activate to sort column ascending"
                                                style="width: 203.667px;">
                                                {{trans('home/index.home_book_img')}}
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1"
                                                colspan="1"
                                                aria-label="Browser: activate to sort column ascending"
                                                style="width: 203.667px;">
                                                {{trans('home/index.home_cate_name')}}
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1"
                                                colspan="1"
                                                aria-label="Platform(s): activate to sort column ascending"
                                                style="width: 179.667px;">
                                                {{trans('home/index.home_cate_time')}}
                                            </th>
                                            <th class="sorting" tabindex="0" aria-controls="example1" rowspan="1"
                                                colspan="1"
                                                aria-label="CSS grade: activate to sort column ascending"
                                                style="width: 99.3333px;">
                                                {{trans('home/index.home_cate_opr')}}
                                            </th>
                                        </tr>
                                        </thead>
                                        <tbody>
                                        @foreach($category as $value)
                                            <tr role="row">
                                                <td>{{$value['id']}}</td>
                                                <td>{{$value['title']}}</td>
                                                <td>
                                                    <img src="{{$value['img']}}" class="img-circle"  width="128" alt="User Image">
                                                </td>
                                                <td>{{$value->category->name}}</td>
<!--                                                <td>{{$value['updated_at']}}</td>-->
                                                <td>{{$value['created_at']}}</td>
                                                <td style="vertical-align: middle">
                                                    <div class="text-center">
                                                        <a type="button" class="edit btn btn-xs btn-warning"
                                                           data-toggle="modal" data-id="{{$value['id']}}"
                                                           data-target="#modal-edit" data-name="{{$value['title']}}"
                                                           data-email="{{$value['title']}}"
                                                        >{{trans('home/index.home_cate_bollow')}}</a>

                                                    </div>
                                                </td>
                                            </tr>
                                        @endforeach

                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-5">
                                    <div class="dataTables_info" id="example1_info" role="status"
                                         aria-live="polite">
                                        {{--                                        总共 {{$result->total()}} 条--}}
                                    </div>
                                </div>
                                <div class="col-sm-7">
                                    <div class="dataTables_paginate paging_simple_numbers" id="example1_paginate">
                                        {{--                                        {{$result->appends(['keyword'=>$keyword])->links()}}--}}
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

    </section>
    <!-- /.box-body -->

@stop
@section('scripts')
    <script src="{{asset('js/select2.full.js')}}"></script>
    <script>
        // $('#example1').DataTable({
        //     'paging'      : false,
        //     'lengthChange': true,
        //     'searching'   : false,
        //     'ordering'    : false,
        //     'info'        : false,
        //     'autoWidth'   : true,
        //     'scrollX'     : true,
        // });
        $(".del").click(function () {
            $("#user-name").text($(this).data('name'));
            $(".delete-menu").attr('action','/adminuser/'+ $(this).data('id'));
        });

        $(".edit").click(function () {
            $("#edit-form").attr('action','/adminuser/' + $(this).data('id'));
            $("#name").val($(this).data('name'));
            let role_id = [];
            $(this).parents('td').prevAll('.role').find('span').each(function(){
                role_id.push($(this).data('id'));
            });
            $('#edit_role').val(role_id).select2();
        });
        $('#select2').select2();
    </script>
@stop

