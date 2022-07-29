/**package com.sfh.ecommerce.Controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import com.sfh.ecommerce.model.CSVHelper;
import com.sfh.ecommerce.model.Product;
import com.sfh.ecommerce.Repository.ProductRepository;

@RestController
@RequestMapping("/csv")
@CrossOrigin(origins = "http://localhost:4200")
public class CSVController {

	
	@Autowired
	ProductRepository prepo;
	
	@PostMapping("upload")
	public void save(MultipartFile file) {
	    try {
	      List<Product> products = CSVHelper.csvToProducts(file.getInputStream());
	      prepo.saveAll(products);
	    } catch (IOException e) {
	      throw new RuntimeException("fail to store csv data: " + e.getMessage());
	    }
	  }	
	
}*/