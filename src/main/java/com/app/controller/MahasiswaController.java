package com.app.controller;

import java.io.IOException;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
//import org.jboss.logging.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.app.model.Mahasiswa;
import com.app.service.MahasiswaService;

@Controller
@RequestMapping("/mahasiswa")
public class MahasiswaController {
    private static final Logger logger = LoggerFactory.getLogger(MahasiswaController.class);

    public MahasiswaController() {
        System.out.println("MahasiswaController()");
    }

    @Autowired
    private MahasiswaService mahasiswaService;

    @GetMapping
    public ModelAndView listMahasiswa(ModelAndView model) throws IOException {
        logger.debug("listMahasiswa() is executed, value {}", "rizkiaazmi");
        List<Mahasiswa> listMahasiswa = mahasiswaService.getAllMhs();
        model.addObject("listMahasiswa", listMahasiswa);
        model.setViewName("mahasiswa/data");
        return model;
    }

    @GetMapping("tambah")
    public ModelAndView newContact(ModelAndView model) {
        Mahasiswa mahasiswa = new Mahasiswa();
        model.addObject("mahasiswa", mahasiswa);
        model.setViewName("mahasiswa/form");
        return model;
    }
}
