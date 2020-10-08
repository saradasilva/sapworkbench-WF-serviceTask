
// read from existing workflow context 
for (var i = 0; i < $.context.EmpEmployment.d.results.length; i++) {
    if (i === 0) {
        $.context.EmpEmployment.d.results[i].createdBy = "Conchita Brust";
    }else{
        $.context.EmpEmployment.d.results[i].createdBy = "Rocío Jurado"
    }
}
