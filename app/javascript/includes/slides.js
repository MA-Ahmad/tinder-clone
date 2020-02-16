$(function () {
    var $activeSlide = $('#slides .slide:first-child');

    $activeSlide.addClass('showing');

    $('#slide-controls #decline svg').on('click', function () {
        goToSlide('decline');
    })

    $('#slide-controls #approve svg').on('click', function () {
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