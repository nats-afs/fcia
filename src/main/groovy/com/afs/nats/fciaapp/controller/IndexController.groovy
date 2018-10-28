package com.afs.nats.fciaapp.controller

import org.springframework.beans.factory.annotation.Value
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping

@RequestMapping("/")
@Controller
class IndexController {

    @Value('${app.index.message}')
    String indexMessage

    @GetMapping
    String index(Model model){
        model.addAttribute("mensage",indexMessage)
        "index"
    }
}
