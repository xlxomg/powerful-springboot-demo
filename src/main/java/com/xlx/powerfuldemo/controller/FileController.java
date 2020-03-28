package com.xlx.powerfuldemo.controller;

import com.xlx.powerfuldemo.common.response.AjaxResult;
import com.xlx.powerfuldemo.service.FileService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;
import sun.nio.ch.IOUtil;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;

/**
 * @Author xieluxin
 * @Date 2020/3/24 17:21
 * @Version 1.0
 */
@Controller
@Slf4j
@RequestMapping("/file")
public class FileController {
    @Resource
    private FileService fileService;



    /**
     * 上传文件到本地
     *
     * @param file
     * @param request
     * @return
     */
    @RequestMapping(value = "/uploadToLocal", method = RequestMethod.POST)
    @ResponseBody
    public AjaxResult uploadToLocal( @RequestParam("file") MultipartFile file,
                                 HttpServletRequest request) throws IOException {
        String str = fileService.uploadToLocal(request, file);
        return AjaxResult.success(true);
    }

    /**
     * 从本地下载文件
     *
     * @param response
     * @param fileName
     */
    @RequestMapping("/downloadFormLocal")
    public void downLoad(HttpServletResponse response,String fileName) throws UnsupportedEncodingException, FileNotFoundException {
        fileService.downloadFormLocal(response,fileName);
    }
    /**
     * 上传文件到OSS
     *
     * @param file
     * @param request
     * @return
     */
    @RequestMapping(value = "/uploadToOss", method = RequestMethod.POST)
    @ResponseBody
    public AjaxResult uploadToOss( @RequestParam("file") MultipartFile file,
                                  HttpServletRequest request) {
        String str = fileService.uploadToOss(request, file);
        return AjaxResult.success(str);
    }
}