////$(function () {
////    var htmlKeyValue =
////        `<tr>
////                <td >
////                    {0}
////                 </td>
////                <td>
////                    <select class="property"></select>
////                 </td>
////                 <td class='text-center'>
////                    <button class='btn btn-primary add-above-this-property tipb' title='Chèn dòng phía trên' type='button'>
////                        <i class='fa fa-caret-square-o-up fa-lg'></i>
////                    </button>
////                    <button class='btn btn-primary add-below-this-property tipb' title='Chèn dòng phía dưới' type='button'>
////                        <i class='fa fa-caret-square-o-down fa-lg'></i>
////                    </button>
////                    <button class='btn btn-danger this-remove tipb' title='Xóa dòng hiện tại' type='button'>
////                        <i class='fa fa-trash fa-lg'></i>
////                    </button>
////                 </td>
////            </tr>
////        `;
////    //<input type='text' onkeyup='SaveProperty(this);' placeholder='Ví dụ: Trọng lượng' />
////    //<input type='text' onkeyup='SaveProperty(this);' class='tab-add-property' placeholder='Ví dụ: 5Kg' />
////    loadDataProperty().then(res => {
////        var listCategory = JSON.parse(res);
////        console.log(listCategory);
////        var tempOption = "<option value='{0}'>{1}</option>";
////        var allOption = "";
////        listCategory.map(item => {
////            allOption += tempOption.replace("{0}", item.ID).replace("{1}", item.Title);
////        });
////        var selectTemplate = "<select class='property-category'><option value='0'>Chọn loại thuộc tính</option>" + allOption + "</select>"

////        htmlKeyValue = htmlKeyValue.replace("{0}", selectTemplate);

////        //====================== ADD PROPERTY =========================
////        //Load property
////        $(".table-property").on("change", ".property-category", function () {
////            let self = this;
////            //thêm vào
////            $(this).closest("tr").find(".property").empty()//Clear option cũ đi
////            var catId = $(this).val();
////            loadPropertyByMainId(catId).then(res => {
////                var lsProperty = JSON.parse(res);
////                var tempOptionProperty = "<option value='{0}'>{1}</option>";
////                var allOptionProperty = "";
////                lsProperty.map(itemProperty => {
////                    allOptionProperty += tempOptionProperty.replace("{0}", itemProperty.ID).replace("{1}", itemProperty.Title);
////                })
////                $(this).closest("tr").find(".property").append(allOptionProperty);

////                //Save
////                SaveProperty(self);
////            })
////        });

////        $(".table-property").on("change", ".property", function () {
////            //Save
////            SaveProperty(self);
////        })

////        //Add property
////        $(".add-property").click(function () {
////            //thêm vào
////            $(this).closest(".table-property").find("tbody").append(htmlKeyValue);
////        });

////        //Add below this property//thêm dưới
////        $(".table-property").on("click", ".add-below-this-property", function () {
////            //thêm vào
////            $(this).closest("tr").after(htmlKeyValue);
////        });

////        //Add above this property//thêm trên
////        $(".table-property").on("click", ".add-above-this-property", function () {
////            //thêm vào
////            $(this).closest("tr").before(htmlKeyValue);
////        });

////        //tab add property
////        $(".table-property").on("keydown", ".tab-add-property:last", function (event) {
////            //keyCode: mã của phím|| which: thể hiện phím được bấm
////            if (event.keyCode === 9 || event.which === 9) {
////                $(this).closest("tr").after(htmlKeyValue);
////            }
////        });

////        //=================== REMOVE PROPERTY =======================
////        //Remove  property
////        $(".remove-last-property").click(function () {
////            //Giờ ví dụ nó về 0 thì thông báo k cho remove nữa
////            if ($(".table-property > tbody >tr").length == 0) {
////                alert("Thuộc tính đã trống! Vui lòng thêm thuộc tính");
////                return false;
////            }
////            $(".table-property > tbody > tr").last().remove();
////        });

////        //This remove
////        $(".table-property").on("click", ".this-remove", function () {

////            ErrorSaveClick($(this));
////            $(this).closest("tr").remove();
////            SaveProperty();


////        });


////    });
   

////});

//////Kiểm tra lỗi rỗng thuộc tính khi nhán nút lưu
////function ErrorSaveClick(e) {
////    var flag = true;
////    var selectInput = e.closest(".table-property").find("input[type='text']");
////    var saveIndex = 0;
////    selectInput.each(function (index) {
////        var valProperty = $(this).val();

////        if (valProperty == "") {
////            saveIndex++;
////            $(this).attr("style", "border: 1px solid red");

////            $(".h3-description").click();

////            if (saveIndex == 1) {
////                $(this).focus();
////            }
////            flag = false;
////        }
////    });
////    if (!flag) {
////        alert("Vui lòng nhập đầy đủ thông tin cấu hình, không được để trống ô nào !");

////        return false;
////    }

////    return true;
////}

//////Hàm lưu thuoc tính
////function SaveProperty(e) {
////    //khai báo biến chứa chuổi
////    $(e).attr("style", "");
////    var descriptions = "";
////    var selectInput = $(".table-property > tbody select.property");
////    let arr = [];
////    selectInput.each(function (index) {
////       var valProperty = $(this).val();
////        //if ((index + 1) % 2 == 0)
////        //    descriptions += valProperty + ";";
////        //else
////        //    descriptions += valProperty + ":";
       
////        arr.push({ ProductID: $(".product-id").val(),PropertyID: valProperty });
////    });
        

////    /*descriptions = descriptions.slice(0, descriptions.length - 1)*///bỏ dấu ; ở cuối chuỗi
////    $(".input_Property").val(JSON.stringify(arr));
////}

////function loadDataProperty() {
////   return $.get("/ServiceUtility.asmx/GetAllPropertyCategoryProduct");
////}


////function loadPropertyByMainId(id) {
////    return $.get("/ServiceUtility.asmx/GetAllPropertyByMainID?id="+id);
////}
