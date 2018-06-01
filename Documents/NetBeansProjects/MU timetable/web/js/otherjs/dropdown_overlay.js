$(document).ready(function() {
    
    // No selection at start
    $(".source, .sub_type, .group, .severity, .task_typ, .owner_grp, .action, .assign_to, .source2, .adv_search1, .adv_search2, .adv_search3, .adv_search4, .adv_search5, .adv_search6, .adv_search7, .adv_search8, .srch, .domain, .custm, .KE_category, .KE_sub_category, .label").prop("selectedIndex", -1);
    
    // Set the position of the overlay
    var offset = $(".source, .sub_type, .group, .severity, .task_typ, .owner_grp, .action, .assign_to, .source2, .adv_search1, .adv_search2, .adv_search3, .adv_search4, .adv_search5, .adv_search6, .adv_search7, .adv_search8, .srch, .domain, .custm, .KE_category, .KE_sub_category, .label").offset();
    offset.top += 3;
    offset.left += 3;
    $('#overlay').offset(offset);
    
    // Remove the overlay when selection changes
    $('#my_select').change(function() {
        if ($(this).prop("selectedIndex") != -1) {
            $('#overlay').hide();
        }
    });
    
});