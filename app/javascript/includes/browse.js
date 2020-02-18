$(function () {
    var $activeSlide = $('#slides .slide:first-child');

    $activeSlide.addClass('showing');

    $('.match-tile').on('click', function () {
        var account_id = $(this).data('id');
        console.log(account_id);
    })
    
    $('#slide-controls #decline svg').on('click', function () {
        goToSlide('decline');
    })

    $('#slide-controls #approve svg').on('click', function () {
        var user_id = $activeSlide.data('id')
        $.ajax({
            url: `/approve/${user_id}`,
            method: 'post',
            dataType: 'ajax'
        })
        goToSlide('approve');
    })

    function goToSlide(action) {
        $activeSlide.removeClass('showing')
        $activeSlide = $activeSlide.next('.slide')

        if (action == 'approve') {
            console.log(action)
        } else {
            console.log(action)
        }
        $activeSlide.addClass('showing')
    }
})