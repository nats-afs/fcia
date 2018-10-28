package templates.products

layout 'layout/main-layout.tpl',
        title: 'Product',
        bodyContent: ''
           /*     contents {
                    div(class: 'col-xs-12') {
                        if (notification) {
                            div {
                                div(class: "alert alert-$notification.status alert-dismissible fade in", role: 'alert') {
                                    button(type: 'button', class: 'close', 'data-dismiss': 'alert', 'aria-label': 'Close') {
                                        span('aria-hidden': 'true')
                                    }
                                    strong notification.enphasis
                                    yield notification.message
                                }
                            }
                        }
                        div(class: 'x_panel') {
                            div(class: 'x_title') {
                                h2 'Productos'
                                ul(class: 'nav navbar-right panel_toolbox') {
                                    li {
                                        a(class: 'collapse-link', href: '/products/form') {
                                            i(class: 'fa fa-chevron-down') {}
                                        }
                                    }
                                }
                                div(class: 'clearfix')
                            }
                            div(class: 'x_content') {
                                p(class: 'text-muted font-13 m-b-30', 'Responsive is an extension for DataTables that resolves that problem by optimising the table')
                                div(id: "datatable-responsive_wrapper", class: "dataTables_wrapper form-inline dt-bootstrap no-footer") {
                                    div(class: 'row') {
                                        div(class: 'col-sm-6') {
                                            div(class: "dataTables_length", id: "datatable-responsive_length") {
                                                label {
                                                    yield 'Mostrar'
                                                    select(name: 'datatable-responsive_length', 'aria-controls': 'datatable-responsive',
                                                            class: 'form-control input-sm') {
                                                        [10, 25.50, 100].forEach({ number ->
                                                            option(value: number, number)
                                                        })
                                                    }
                                                    entries
                                                }
                                            }
                                        }
                                        div(class: 'col-sm-6') {
                                            div(id: 'datatable-responsive', class: 'dataTable_filter') {
                                                label {
                                                    yield 'Buscar'
                                                    input(class: 'form-control input-sm', placeholder: 'Buscar', 'aria-controls': 'datatable-responsive', type: 'search')
                                                }
                                            }
                                        }
                                    }
                                    div(class: 'row') {
                                        div(class: 'col-sm-12') {
                                            table(id: 'datatable-responsive',
                                                    class: 'table table-striped table-bordered dt-responsive nowrap dataTable no-footer dtr-inline collapsed',
                                                    role: 'grid', 'aria-describedby': 'datatable-responsive_info', style: 'width: 100%;', width: '100%', cellspacing: '0') {
                                                thead {
                                                    tr(role: 'row') {
                                                        th 'Codigo'
                                                        th 'Nombres'
                                                        th 'Marca'
                                                        th 'Observacion'
                                                        th 'Acciones'
                                                    }
                                                }
                                                tbody {
                                                    products.each { product ->
                                                        tr {
                                                            td {
                                                                a(href: "/products/$product.id", product.id)
                                                            }
                                                            td product.name
                                                            td product.brand
                                                            td product.observation
                                                            td {
                                                                a(href: "/products/$product.id", 'Editar ')
                                                                a(href: "/products/delete/$product.id", ' Borrar')
                                                            }
                                                        }
                                                    }
                                                }
                                            }

                                        }
                                    }
                                    div(class: 'row') {
                                        div(class: 'col-sm-5') {
                                            div(class: 'dataTables_info', id: 'datatable-responsive_info', role: 'status', 'aria-live': 'polite', 'Showing 1 to 10 of 57 entries') {
                                            }
                                        }
                                        div(class: 'col-sm-7') {
                                            div(id: 'datatable-responsive_paginate', class: 'dataTables_paginate paging_aimple_numbers') {
                                                ul(class: 'pagination') {
                                                    li(id: 'datatable-responsive_previous', class: 'paginate_button previous disabled') {
                                                        a(href: '#', 'aria-control': 'datatable-responsive', 'data-dt-idx': '0', 'tabindex': '0', 'Previous'){}
                                                    }
                                                    li(class: 'paginate_button active') {
                                                        a(href = '#', 'aria-controls': 'datatable-responsive', 'data-dt-idx': '1', tabindex: '0', '1'){}
                                                    }
                                                    li(class: 'paginate_button active') {
                                                        a(href = '#', 'aria-controls': 'datatable-responsive', 'data-dt-idx': '2', tabindex: '0', '2'){}
                                                    }
                                                    li(class: 'paginate_button active') {
                                                        a(href = '#', 'aria-controls': 'datatable-responsive', 'data-dt-idx': '3', tabindex: '0', '3'){}
                                                    }
                                                    li(class: 'paginate_button active') {
                                                        a(href = '#', 'aria-controls': 'datatable-responsive', 'data-dt-idx': '4', tabindex: '0', '4'){}
                                                    }
                                                    li(class: 'paginate_button active') {
                                                        a(href = '#', 'aria-controls': 'datatable-responsive', 'data-dt-idx': '5', tabindex: '0', '5'){}
                                                    }
                                                    li(id: 'datatable-responsive_next', class: 'paginate_button next disabled') {
                                                        a(href: '#', 'aria-control': 'datatable-responsive', 'data-dt-idx': '0', 'tabindex': '0', 'Next'){}
                                                    }
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
           */