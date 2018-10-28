package com.afs.nats.fciaapp.controller

import com.afs.nats.fciaapp.model.Product
import com.afs.nats.fciaapp.repository.ProductRepository
import com.afs.nats.fciaapp.util.Notification
import org.slf4j.LoggerFactory
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.validation.BindingResult
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.PathVariable
import org.springframework.web.bind.annotation.PostMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.servlet.mvc.support.RedirectAttributes

import javax.validation.Valid

@RequestMapping(path = "/products")
@Controller
class ProductController {
    def log = LoggerFactory.getLogger(getClass())
    @Autowired
    ProductRepository productRepository

    @GetMapping
    String list(Model model) {
        log.info('Fetching list of products')
        model.addAttribute("products", productRepository.findAll())
        "products/list"
    }

    @GetMapping("{id}")
    String view(@PathVariable long id, Model model, RedirectAttributes flash) {
        log.info("Fetching details for product with id : $id")

        def product = productRepository.findById(id)


        if (product.isPresent()) {
            log.info("Details for product with $id was found")
            model.addAttribute("product", product.get())
            model.addAttribute("status", false)
            return "products/form"
        } else {
            log.info("Product with id: $id not found")
            def notification = new Notification(status: "info", enphasis: "INFO ", message: "No se encontro el producto")
            flash.addFlashAttribute("notification", notification)
            return "redirect:/products"
        }

    }

    @PostMapping("{id}")
    String update(@PathVariable long id, @Valid Product product, BindingResult result, Model model) {
        log.info("Edit details for product with id : $id")
        if (result.hasErrors()) {
            model.addAttribute("status", false)
            model.addAttribute("product", product)
            "products/form"
        }
        productRepository.save(product)
        "redirect:/products"
    }

    @GetMapping("form")
    String form(Model model) {
        log.info('show form')
        model.addAttribute("product", new Product())
        model.addAttribute("status", true)
        "products/form"
    }

    @PostMapping("form")
    private String createClaimant(@Valid Product product, BindingResult result, Model model) {
        if (result.hasErrors()) {
            model.addAttribute("status", true)
            model.addAttribute("product", product)
            return "products/form"
        }
        log.info("Create a product")
        productRepository.save(product)
        log.info("Product added: $product")
        return "redirect:/products"
    }
}
