<div class="modal fade in" id="modal-create">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header" style="background-color: #337ab7">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">×</span></button>
                <h4 class="menu-title modal-title" style="color: white;">创建菜单</h4>
            </div>
            <form class="create_menu menu-form form-horizontal" action="{{route('booklist.store')}}" method="post">
                <div class="modal-body">
                    <!-- /.box-header -->
                    <!-- form start -->
                    <input type="hidden" name="_token" value="{{csrf_token()}}">
                    <input type="hidden" class="parentid" name="pid" value="">
                    <div class="box-body">
                        <div class="form-group">
                            <label class="col-sm-2 control-label">父级菜单</label>
                            <div class="col-sm-10">
                                <select id="fname" name="category_id" class="form-control select2 edit_select2" style="width: 100%;height: 34px;">
                                    <option value="0" >顶级菜单</option>
                                    @foreach($categories as $category)
                                        <option value="{{$category->id}}">{{$category->name}}</option>
                                    @endforeach
                                </select>
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="" class="col-sm-2 control-label">菜单名称</label>
                            <div class="col-sm-10">
                                <input id="name" type="text" name="title" class="form-control" placeholder="名称"
                                       value=" ">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputPassword3" class="col-sm-2 control-label">图标</label>
                            <div class="col-sm-10">
                                <small> <a target="_blank" href="/icons">点击查看图标库</a></small>
                                <input id="icon" type="text" name="img" class="form-control" placeholder="图标"
                                       value=" ">
                            </div>
                        </div>


                    </div>
                    <!-- /.box-body -->
                </div>



                <div class="modal-footer">
                    <button type="button" class="btn btn-info pull-left" data-dismiss="modal" style="background-color: #337ab7">关闭</button>
                    <button type="submit" class="btn btn-info btn-primary" style="background-color: #337ab7">保存</button>
                </div>
            </form>

        </div>
        <!-- /.modal-content -->
    </div>
    <!-- /.modal-dialog -->
</div>
