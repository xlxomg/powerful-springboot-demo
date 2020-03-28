package com.xlx.powerfuldemo.service;

import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/**
 * @Author xieluxin
 * @Date 2020/3/24 17:28
 * @Version 1.0
 */
public interface FileService {

    /**
     * 上传文件到本地
     * @param request
     * @param file
     */
    String uploadToLocal(HttpServletRequest request, MultipartFile file) throws IllegalStateException, IOException;

    /**
     * 从本地下载文件
     * @param response
     * @param fileName
     */
    void  downloadFormLocal(HttpServletResponse response, String fileName) throws UnsupportedEncodingException, FileNotFoundException;

    String uploadToOss(HttpServletRequest request, MultipartFile file);

}
