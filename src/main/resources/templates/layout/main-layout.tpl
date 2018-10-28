yieldUnescaped '<!DOCTYPE html>'
html(lang: 'en') {
    head {
        meta('http-equiv': 'Content-Type', content: 'text/html')
        meta(charset: 'utf-8')
        meta(name: 'viewport', content: "width=device-width, initial-scale=1")
        link(rel: 'icon', href: 'images/favicon.ico', type: 'image/ico')
        title(title)
        includeGroovy('layout/css-tags.tpl')
    }
    body(class: 'nav-md') {
        div(class: 'container body') {
            div(class: 'main_container') {
                div(class: 'col-md-3 left_col') {
                    div(class: 'left_col scroll-view') {
                        div(class: 'navbar nav_title', style: 'border:0;') {
                            a(href: 'index.html', class: 'site_title') {
                                i(class: 'fa fa-paw') {}
                                span ' Fcia -> App'
                            }
                        }
                        div(class: 'clearfix') {}

                        comment 'menu profile quick info'
                        include template: 'layout/menu-profile.tpl'
                        comment '/menu profile quick info'
                        yieldUnescaped '<br />'

                        comment 'sidebar menu'
                        include template: 'layout/sidebar.tpl'
                        comment '/sidebar menu'

                        comment 'menu footer buttons'
                        include template: 'layout/sidebar-footer.tpl'
                        comment '/menu footer buttons'
                    }
                }

                comment 'top navigation'
                include template: 'layout/navbar.tpl'
                comment '/top navigation'

                comment 'page content'
                div(class: 'right_col', role: 'main') {
                    bodyContent()
                }
                comment '/page content'

                comment 'footer-content'
                include template: 'layout/footer.tpl'
                comment '/footer-content'

            }
        }

        include template: 'layout/js-tags.tpl'
    }
}