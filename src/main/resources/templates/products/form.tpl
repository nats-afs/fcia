package templates.products

layout 'layout/main-layout.tpl',
        title: 'Product',
        bodyContent:
                contents {
                    h3 'Hello from Details'
                    div(class: 'x_panel') {
                        div(class: 'x_title') {
                            h2 {
                                yield 'Registrar Producto'
                                small 'Click to validate'
                            }
                            div(class: 'clearfix') {}

                        }
                        div(class: 'x_content') {
                            form(action: '/products/form', method: 'post', class: 'form-horizontal form-label-left', 'novalidate') {
                                div(class: 'item form-group') {
                                    label(class: 'control-label col-md-3 col-sm-3 col-xs-12', for: 'name') {
                                        yield 'Nombre '
                                        span(class: 'required') {
                                            yield '*'
                                        }
                                    }
                                    div(class: 'col-md-6 col-sm-6 col-xs-12') {
                                        input(id: 'name', name: 'name', type: 'text', value: product.name, class: 'form-control col-md-7 col-xs-12', 'data-validate-length-range': '6', 'data-validate-words': '2', required: 'required') {
                                        }
                                    }
                                }
                                div(class: 'item form-group') {
                                    label(class: 'control-label col-md-3 col-sm-3 col-xs-12', for: 'brand') {
                                        yield 'Marca '
                                        span(class: 'required') {
                                            yield '*'
                                        }
                                    }
                                    div(class: 'col-md-6 col-sm-6 col-xs-12') {
                                        input(id: 'brand', name: 'brand', type: 'text', value: product.brand, required: 'required', class: 'form-control col-md-7 col-xs-12') {
                                        }
                                    }
                                }
                                div(class: 'item form-group') {
                                    label(class: 'control-label col-md-3 col-sm-3 col-xs-12', for: 'observation') {
                                        yield 'Observacion '
                                        span(class: 'required') {
                                            yield '*'
                                        }
                                    }
                                    div(class: 'col-md-6 col-sm-6 col-xs-12') {
                                        textarea(id: 'observation', name: 'observation', required: 'required', class: 'form-control col-md-7 col-xs-12') {
                                            product.observation
                                        }
                                    }
                                }
                                div(class: 'ln_solid') {}
                                div(class: 'form-group') {
                                    div(class: 'col-md-6 col-md-offset-3') {
//                                        button(type: 'submit', class: 'btn btn-primary', 'Cancelar')
                                        button(id: 'send', type: 'submit', class: 'btn btn-success', 'Guardar')
                                    }
                                }
                            }
                        }
                    }
                }