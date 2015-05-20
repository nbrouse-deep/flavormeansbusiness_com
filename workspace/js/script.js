/*
 * page functions are grouped by <body>'s class.
 * all pages in a class fire init().
 * named functions are fired according to <body>'s id.
 * hyphens are stripped from classes and ids automatically.
 *
 */


MINORS = {
    common : {
        init : function() {
            if ( !$('html').hasClass('ie9') ) {
                addToHomescreen({
                    maxDisplaycount: 1,
                    startDelay: 2
                });
            }

            $('.site-search input').placeholder();


            // all external links should open in a new tab
            $('a[href^="http"]').attr('target', '_blank');


            // lightbox controls
            $('.lightbox .close').click(function(e) {
                $('.lightbox .window').fadeOut('fast', function() {
                    $('.lightbox').hide();
                    $('.lightbox .window').show();
                });
            });


            // mobile nav
            $('.show-nav').click(function(e) {
                // $('nav.primary').slideToggle('fast');
                    $('.nav.mobile-only').show();
                $('.nav.mobile-only').animate({ right: 0 });

                $('body').append('<div class="mobile overlay" />');

                $('.mobile.overlay').one('click', function() {
                    $('.nav.mobile-only .close').trigger('click');
                });


                $('.mobile.overlay').fadeIn();

                e.preventDefault();
            });


            $('.nav.mobile-only .close').click(function(e) {
                $('.mobile.overlay').fadeOut('fast', function() {
                    $('.mobile.overlay').remove();
                });

                $('.nav.mobile-only').animate({ right: -400 },
                    function() {
                        $('.nav.mobile-only').hide();
                    }
                );

                e.preventDefault();
            });


            $('.nav.mobile-only input[type=search]').change(function() {
                $(this).closest('form').submit();
            });

            var resizeTimer;

            $(window).resize(function() {
                clearTimeout(resizeTimer);

                resizeTimer = setTimeout( function() { 
                    if ( $(window).width() > 1023 ) {
                        $('.nav.mobile-only').hide();

                        $('.nav.mobile-only .close').trigger('click');
                    }
                }, 100 );
            });
        }
    },



    home : {
        init : function() {
            var resizeTimer;

            $(window).resize(function() {
                clearTimeout(resizeTimer);

                resizeTimer = setTimeout(MINORS.home.slideshowInit, 100);
            });


            $(window).scroll(function() {
                $('.too-short').fadeOut();
            });

            $('.products-cta > div').click(function() {
                var url = $(this).children('a').attr('href');

                window.location.href = url;
            });

            //
            // 'explore more content' if browser height is too short
            $('.too-short a').click(function(e) {
                $('body, html').animate({
                    scrollTop: $('.too-short').offset().top + 43 
                });

                $('.too-short').hide();

                e.preventDefault();
            });


            //
            // featured spots
            $('.featured section *').click(function() {
                window.location = $(this).closest('section').find('a').attr('href');
            });



            //
            // meet the chefs
            $('.chefs .chef').each(function(index, element) {
                // set up some extra chefs to put at the end of the carousel
                if (index < 5) { 
                    $(element).addClass('cloned');

                    $clone = $('<div>').addClass('chef clone');

                    $clone.html( element.innerHTML );

                    $('.chefs .slides').append( $clone );
                }
            });

            // click on a chef to expand
            $('.chefs .meet, .chefs .show-hide').click(function(e) {
                e.preventDefault();

                var $chef = $(this).closest('.chef')

                if ( $chef.hasClass('open') ) {
                    $chef.removeClass('open').children('.right').hide();
                }
                else {
                    $('.chef.open').removeClass('open').children('.right').hide();

                    var x = $chef.index() * (190 + 32);

                    $('.chefs .slides').animate({ 'left': -(x) },
                        function() {
                            if ($chef.hasClass('clone')) {
                                var index = $('.chef.clone').index ( $chef ); // find out the index of the original slide

                                $chef = $('.chef:eq(' + index + ')');

                                $('.chefs .slides').css('left', '-' + index * (190 + 32) + 'px');
                            }
                            $chef.addClass('open');

                            $chef.children('.right').show('slide', { direction: 'left' }, 400);

                            $('.chefs nav .active').removeClass('active');
                            $('.chefs nav a:eq(' + $chef.index() + ')').addClass('active');
                        });
                }
            });


            // chef filmstrip navigation
            $('.chefs nav .filmstrip a').click(function(e) {
                e.preventDefault();

                var index = $(this).index();

                $('.chefs .chef:eq(' + index + ') .show-hide').trigger('click');
            });

            // chef mobile navigation
            $('.chefs .mobile-nav .next, .chefs .mobile-nav .prev').click(function(e) {
                var $chef = $(this).closest('.chef'),
                    total = $('.chefs .chef:not(.clone)').length,
                    x = 1 * (190 + 32),
                    max = total * (190 + 32);

                $('.chefs .chef.open .show-hide').trigger('click');

                if ( $(this).hasClass('next') ) {
                    if ( Math.abs( $('.chefs .slides').css('left').split('px')[0] ) + (x * 3) < max) {
                        $('.chefs .slides').animate({ 'left': '-=' + (x * 3) });
                    }
                    else if ( Math.abs( $('.chefs .slides').css('left').split('px')[0] ) + (x * 2) < max) {
                        $('.chefs .slides').animate({ 'left': '-=' + (x * 2) });
                    }
                    else if ( Math.abs( $('.chefs .slides').css('left').split('px')[0] ) + (x * 1) < max) {
                        $('.chefs .slides').animate({ 'left': '-=' + x });
                    }
                }
                else {
                    if ( Math.abs( $('.chefs .slides').css('left').split('px')[0] ) - (x * 3) >= 0) {
                        $('.chefs .slides').animate({ 'left': '+=' + (x * 3) });
                    }
                    else if ( Math.abs( $('.chefs .slides').css('left').split('px')[0] ) - (x * 2) >= 0) {
                        $('.chefs .slides').animate({ 'left': '+=' + (x * 2) });
                    }
                    else if ( Math.abs( $('.chefs .slides').css('left').split('px')[0] ) - x >= 0) {
                        $('.chefs .slides').animate({ 'left': '+=' + x });
                    }
                }

                e.preventDefault();
            });



            // start at a random chef
            (function() {
                var rand = Math.floor(Math.random() * ($('.chefs .chef:not(.cloned)').length - 4));

                $('.chefs .slides').css('left', '-' + rand * (190 + 32) + 'px');
            })();


            



            //
            // calls to action
            $('.calls-to-action h2').click(function() {
                $('.calls-to-action .active').removeClass('active');

                $(this).closest('div').addClass('active');
            });
        },
    },



    blog : {
        init : function() {
            $('.sidebar > ul > li > a').click(function(e) {
                if ( $(window).width() > 1023 ) {
                    if ( $(this).parent().hasClass('active') || $(this).parent().hasClass('tags') ) {
                        $(this).parent().toggleClass('expanded');

                        e.preventDefault();
                    }
                }
                else {
                    if ( $(this).parent().hasClass('tags') ) {
                        $(this).parent().toggleClass('active expanded');

                        if ( $(this).parent().siblings('.active').length > 0 ) {
                            $(this).parent().siblings('.active').addClass('active-hide').removeClass('active expanded');
                        }
                        else {
                            if ( $(this).parent().siblings('.active-hide').length > 0 ) {
                                $(this).parent().siblings('.active-hide').removeClass('active-hide').addClass('active expanded');
                            }
                        }

                        e.preventDefault();
                    }
                }
            });
        }
    },


    
    menuconcepts: {
        init: function() {
            MINORS.blog.init();
        }
    },



    brochures: {
        init: function() {
            MINORS.blog.init();
        }
    },



    products : {
        init : function() {
            $('.buttons a').each(function() {
                if ( $(this).children('span')[0].offsetHeight > 30 ) {
                    $(this).addClass('lengthy');
                }
            });

            $('.products-list h4').click(function() {
                $(this).parent().toggleClass('expanded');
                $(this).siblings('.details').slideToggle('fast');
            });

            MINORS.blog.init();
        },


        latinflavors: function() {
            // step 1: select a product
            $('select.product').change(function(e) {
                var product = $('select.product option:selected').val();

                // reset daypart dropdown
                $('select.daypart option').removeAttr('selected').attr('disabled', 'disabled');
                $('select.daypart option:eq(0)').attr('selected', 'selected');


                // reset products
                $('.product').removeClass('active');
                $('.product.' + product).addClass('active');


                // reset tags
                $('.categories li').removeClass('available');
                
                // reset recipes
                $('.hidden .recipe').removeClass('available');


                // select available recipes
                var $availableRecipes = $('.recipe[data-products*=" ' + product + ' "]');


                // get available dayparts from recipes
                var dayparts = '';
                $availableRecipes.each(function() {
                    dayparts += $(this).attr('data-dayparts');
                });


                // enable available daypart select items 
                dayparts = $.trim( dayparts.replace(/\s+/g, ' ') ).split(' ');

                $.each(dayparts, function(i, value) {
                    $('select.daypart option[value=' + value + ']').removeAttr('disabled');
                });

                $('section.product-info').show();
                $('section.categories, section.recipes').hide();

                MINORS.products.equalizeColumns();

                if ( $(window).width() < 1024 ) { 
                    window.location = '#product-info';
                }
            });


            // step 2: select a daypart
            $('select.daypart').change(function(e) {
                var product = $('select.product option:selected').val(),
                    daypart = $('select.daypart option:selected:not(:disabled)').val(),
                    tags = '';

                // show available recipes
                $('.categories li').removeClass('active');
                $('.categories li.all').addClass('active');

                $('.hidden .recipe').removeClass('available');
                $('.hidden .recipe[data-products*=" ' + product + '"][data-dayparts*=" ' + daypart + ' "]').addClass('available');


                // get available tags
                $('.hidden .recipe.available').each(function() {
                    tags += $(this).attr('data-tags');
                });

                tags = $.trim( tags.replace(/\s+/g, ' ') ).split(' ');

                $('.categories li').removeClass('available');
                $('.categories .all').addClass('available active');

                $.each(tags, function(index, value) {
                    $('.categories .' + value).addClass('available');
                });

                $('section.categories, section.recipes').show();


                MINORS.products.equalizeColumns();

                if ( $(window).width() < 1024 ) { 
                    window.location = '#step3';
                }
            });


            // step 3: select a tag/category
            $('.categories a').click(function(e) {
                e.preventDefault();

                var product = $('select.product option:selected').val(),
                    daypart = $('select.daypart option:selected:not(:disabled)').val(),
                    tag = $.trim( $(this).parent().attr('class').replace('available', '').replace('active', '') );


                // reset tags and highlight active
                $('.categories li').removeClass('active');
                $(this).parent().addClass('active');

                // reset recipes and show available
                if (tag == 'all') {
                    $('.recipes .hidden .recipe[data-products*=" ' + product + '"][data-dayparts*=" ' + daypart + ' "]').addClass('available');
                }
                else {
                    $('.recipes .hidden .recipe').removeClass('available');
                    $('.recipes .hidden .recipe[data-products*=" ' + product + '"][data-dayparts*=" ' + daypart + ' "][data-tags*=" ' + tag + ' "]').addClass('available');
                }

                MINORS.products.equalizeColumns();

                if ( $(window).width() < 1024 ) { 
                    window.location = '#categories';
                }
            });
        },


        glutenfree: function() {
            // set up a stage for the second select box
            var $stage = $('<select>').addClass('stage').hide().append( $('.step.second select optgroup').clone() );

            $('body').append( $stage );


            
            // select a category
            $('.step.first select').change(function() {
                var category = $(this).find(':selected:eq(0)').val();

                $('.step.second optgroup').remove();
                $('.step.second select').append( $stage.find('optgroup.' + category + ':eq(0)').clone() );


                $('.recipes .left > div, .recipes .right > div').remove();
            });



            // select a product/flavor
            $('.step.second select').change(function() {
                var product = $(this).find(':selected:eq(0)').val();

                $('.recipes .left > div, .recipes .right > div').remove();

                $('.recipe[data-products~=' + product + ']').each(function(index) {
                    var position = ( index % 2 == 0 ? 'left' : 'right' );

                    $('.recipes .' + position).append( $(this).clone() );
                });
                
                // reset products
                $('.product').removeClass('active');
                $('.product.' + product).addClass('active');
            });
        },


        equalizeColumns: function() {
            var $recipesWithPhotos = $('.recipes .hidden .recipe.available:not(.no-photo)').clone();
            var max = $recipesWithPhotos.length * 4;


            // clear
            $('.recipes .left, .recipes .right').html('');


            // fill the left column with recipes that have photos
            $('.recipes .left').html( $recipesWithPhotos );

            // start filling the right column, then alternate between left and right
            $('.recipes .available.no-photo').each(function(index, element) {
                if (index < max) {
                    $('.recipes .right').append( $(element).clone() );
                }
                else {
                    if (index % 2 == 1) {
                        $('.recipes .left').append( $(element).clone() );
                    }
                    else {
                        $('.recipes .right').append( $(element).clone() );
                    }
                }
            });
        }
    },



    meetthechefs: {
        init: function() {
            MINORS.blog.init();
        }
    },



    videos: {
        init: function() {
            MINORS.blog.init();
        }
    },


    offers: {
        init: function() {
            MINORS.blog.init();
        },
        

        videos: function() {
            $('.lightbox .see-recipes, .lightbox .copy a').click(function(e) {
                e.preventDefault();

                $('.lightbox .close').trigger('click');
            });
        },


        requestasample: function() {
            $('.lightbox .continue').click(function() {
                $('.lightbox .close').trigger('click');
            });
        },


        flavorexpedition: function() {
            $('form .email input').keyup(function() {
                var baseurl = $('input[name=redirect]').attr('data-baseurl'),
                    email = $(this).val();

                $('input[name=redirect]').val( baseurl + '&email=' + email );
            });
        }
    }
}




UTIL = {
    fire : function(func,funcname, args){
        var namespace = MINORS;  
        funcname = (funcname === undefined) ? 'init' : funcname;
        if (func !== '' && namespace[func] && typeof namespace[func][funcname] == 'function'){
            namespace[func][funcname](args);
        } 
    }, 
    loadEvents : function() {
        var bodyId = document.body.id;
        // hit up common first.
        UTIL.fire('common');
        // do all the classes too.
        $.each(document.body.className.split(/\s+/), function(i, classnm) {
            UTIL.fire(classnm.replace(/-/g, ''));
            UTIL.fire(classnm.replace(/-/g, ''),bodyId.replace(/-/g,''));
        });
        UTIL.fire('common','finalize');
    } 
}; 

$(document).ready(UTIL.loadEvents);
