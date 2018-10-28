package templates.layout

div(id: 'sidebar-menu', class: 'main_menu_side hidden-print main_menu') {
    div(class: 'menu_section') {
        h3 'General'
        ul(class: 'nav side-menu') {
            li {
                a {
                    i(class: 'fa fa-home') {}
                    yield 'Home'
                    span(class: 'fa fa-chevron-down')
                }
                ul(class: 'nav child_menu') {
                    li {
                        a(href: 'index.html', 'DashBoard')
                    }
                    li {
                        a(href: 'index.html', 'DashBoard 1')
                    }
                    li {
                        a(href: 'index.html', 'DashBoard 2')
                    }
                }
            }
            li {
                a {
                    i(class: 'fa fa-edit') {}
                    yield 'Forms'
                    span(class: 'fa fa-chevron-down')
                }
                ul(class: 'nav child_menu') {
                    li {
                        a(href: 'form.html', 'General Form')
                    }
                    li {
                        a(href: 'form_advanced.html', 'Advanced Components')
                    }
                    li {
                        a(href: 'form_validation.html', 'Form Validation')
                    }
                    li {
                        a(href: 'form_wizards.html', 'Form Wizard')
                    }
                    li {
                        a(href: 'form_upload.html', 'Form Upload')
                    }
                    li {
                        a(href: 'form_buttons.html', 'Form Buttons')
                    }
                }
            }
            li {
                a {
                    i(class: 'fa fa-edit') {}
                    yield 'UI Elements'
                    span(class: 'fa fa-chevron-down')
                }
                ul(class: 'nav child_menu') {
                    li {
                        a(href: 'general_elements.html', 'General Elements')
                    }
                    li {
                        a(href: 'media_gallery.html', 'Media Gallery')
                    }
                    li {
                        a(href: 'typography.html', 'Typography')
                    }
                    li {
                        a(href: 'icons.html', 'Icons')
                    }
                    li {
                        a(href: 'glyphicons.html', 'Glyphicons')
                    }
                    li {
                        a(href: 'widgets.html', 'Widgets')
                    }
                    li {
                        a(href: 'invoice.html', 'Invoice')
                    }
                    li {
                        a(href: 'inbox.html', 'Inbox')
                    }
                    li {
                        a(href: 'calendar.html', 'Calendar')
                    }
                }
            }
            li {
                a {
                    i(class: 'fa fa-table') {}
                    yield 'Tables'
                    span(class: 'fa fa-chevron-down')
                }
                ul(class: 'nav child_menu') {
                    li {
                        a(href: 'tables.html', 'Tables')
                    }
                    li {
                        a(href: 'tables_dynamic.html', 'Table Dynamic')
                    }
                }
            }
        }
    }
}	