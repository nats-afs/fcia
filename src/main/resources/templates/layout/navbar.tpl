div(class: 'top_nav') {
    div(class: 'nav_menu') {
        nav {
            div(class: 'nav toggle') {
                a(id: 'menu_toggle') {
                    i(class: 'fa fa-bars') {}
                }
            }
            ul(class: 'nav navbar-nav navbar-right') {
                li(class: '') {
                    a(href: 'javascript:;', class: 'user-profile dropdown-toggle', 'data-toggle': 'dropdown', 'aria-expanded': 'false') {
                        img(src: 'images/img.jpg', alt: '', 'John Doe ')
                        span(class: 'fa fa-angle-down')
                    }
                    ul(class: "dropdown-menu dropdown-usermenu pull-right") {
                        li {
                            a(href: "javascript:;", 'Profile')
                        }
                        li {
                            a(href: "javascript:;", 'Profile') {
                                span(class: 'badge bg-red pull-right', '50%')
                                span 'Settings'
                            }
                        }
                        li {
                            a(href: "javascript:;", 'Help')
                        }
                        li {
                            a(href: "login.html") {
                                i(class: "fa fa-sign-out pull-right", 'Log Out')
                            }
                        }
                    }
                }
                li(role: "presentation", class: "dropdown") {
                    a(href: "javascript:;", class: "dropdown-toggle info-number", 'data-toggle': "dropdown", 'aria-expanded': "false") {
                        i(class: "fa fa-envelope-o") {}
                        span(class: "badge bg-green", '6')
                    }
                    ul(id: "menu1", class: "dropdown-menu list-unstyled msg_list", role: "menu") {
                        4.times { n ->
                            li {
                                a {
                                    span(class: 'image') {
                                        img(src: 'images/img.jpg', alt: 'Profile Image')
                                    }
                                    span() {
                                        span 'John Sit|'
                                        span(class: 'time', '3 mins ago')
                                    }
                                    span(class: 'message') {
                                        'Film festivals used to be do-or-die moments for movie makers. They were where...'
                                    }
                                }
                            }
                        }
                        li {
                            div(class: "text-center") {
                                a {
                                    strong 'See All Alerts'
                                    i(class: "fa fa-angle-right") {}
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}