package com.xlx.powerfuldemo.service.impl;

import com.aliyun.oss.ClientException;
import com.aliyun.oss.OSS;
import com.aliyun.oss.OSSClientBuilder;
import com.aliyun.oss.OSSException;
import com.aliyun.oss.model.*;
import com.xlx.powerfuldemo.service.FileService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Service;
import org.springframework.util.ResourceUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.*;
import java.net.URLEncoder;

/**
 * @Author xieluxin
 * @Date 2020/3/24 17:27
 * @Version 1.0
 */
@Service
@Slf4j
public class FileServiceImpl implements FileService {

    /**
     * 文件上传类
     * 文件会自动绑定到MultipartFile中
     *
     * @param request 获取请求信息
     * @param file    上传的文件
     * @return 上传成功或失败结果
     * @throws IllegalStateException
     */
    @Override
    public String uploadToLocal(HttpServletRequest request, MultipartFile file) throws IllegalStateException, IOException {


        // 测试MultipartFile接口的各个方法
        System.out.println("文件类型ContentType=" + file.getContentType());
        System.out.println("文件组件名称Name=" + file.getName());
        System.out.println("文件原名称OriginalFileName=" + file.getOriginalFilename());
        System.out.println("文件大小Size=" + file.getSize() / 1024 + "KB");

        // 如果文件不为空，写入上传路径，进行文件上传
        if (!file.isEmpty()) {

            // 构建上传文件的存放路径
            String filePath = ResourceUtils.getFile("classpath:").getAbsolutePath();
            filePath += "/upload";
            System.out.println("filePath = " + filePath);

            // 获取上传的文件名称，并结合存放路径，构建新的文件名称
            String filename = file.getOriginalFilename();
            File filepath = new File(filePath, filename);

            // 判断路径是否存在，不存在则新创建一个
            if (!filepath.getParentFile().exists()) {
                filepath.getParentFile().mkdirs();
            }

            // 将上传文件保存到目标文件目录
            file.transferTo(new File(filePath + File.separator + filename));
            return "success";
        } else {
            return "error";
        }
    }


    /**
     * 从本地下载文件
     *
     * @param response
     * @param fileName
     */
    @Override
    public void downloadFormLocal(HttpServletResponse response, String fileName) throws UnsupportedEncodingException, FileNotFoundException {

        String filePath = ResourceUtils.getFile("classpath:").getAbsolutePath() + "\\upload";

        // 如果文件名不为空，则进行下载
        if (fileName != null) {
            //设置文件路径
//            String realPath = "E://music_eg/";
            File file = new File(filePath, fileName);
            // 如果文件名存在，则进行下载
            if (file.exists()) {
                // 配置文件下载
                response.setHeader("content-type", "application/octet-stream");
                response.setContentType("application/octet-stream");
                // 下载文件能正常显示中文
                response.setHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileName, "UTF-8"));
                // 实现文件下载
                byte[] buffer = new byte[1024];
                FileInputStream fis = null;
                BufferedInputStream bis = null;
                try {
                    fis = new FileInputStream(file);
                    bis = new BufferedInputStream(fis);
                    OutputStream os = response.getOutputStream();
                    int i = bis.read(buffer);
                    while (i != -1) {
                        os.write(buffer, 0, i);
                        i = bis.read(buffer);
                    }
                    System.out.println("Download the song successfully!");
                } catch (Exception e) {
                    System.out.println("Download the song failed!");
                } finally {
                    if (bis != null) {
                        try {
                            bis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                    if (fis != null) {
                        try {
                            fis.close();
                        } catch (IOException e) {
                            e.printStackTrace();
                        }
                    }
                }
            }
        }
    }


//    private static String endpoint = "<endpoint, http://oss-cn-hangzhou.aliyuncs.com>";
//    private static String accessKeyId = "<accessKeyId>";
//    private static String accessKeySecret = "<accessKeySecret>";
//    private static String bucketName = "<bucketName>";
//    private static String key = "<downloadKey>";
//    private static String uploadFile = "<uploadFile>";

//    private static String endpoint = "oss-cn-shenzhen.aliyuncs.com";
//    private static String accessKeyId = "LTAI4FqBbQVPGiHSQzMuCTgt";
//    private static String accessKeySecret = " xucr0Clfd0GR6lUocwP3cMfFl3CcLH";
//    private static String bucketName = "xlx-test-1.oss-cn-shenzhen";
//    private static String key = "aaaabbb";
//    private static String uploadFile = "<uploadFile>";

    /**
     * 上传文件到OSS
     *
     * @param file
     * @param request
     * @return
     */
    @Override
    public String uploadToOss(HttpServletRequest request, MultipartFile file) {
        String endpoint = "oss-cn-shenzhen.aliyuncs.com";
        String accessKeyId = "LTAI4FqBbQVPGiHSQzMuCTgt";
        String accessKeySecret = "xucr0Clfd0GR6lUocwP3cMfFl3CcLH";
        String bucketName = "xlx-test-1";
        String key = file.getOriginalFilename();
        String uploadFile = "C:\\Users\\xlx\\Desktop\\111.jpg";
        OSS ossClient = new OSSClientBuilder().build(endpoint, accessKeyId, accessKeySecret);
        String location = "";
        try {
            //本地文件上传
//            UploadFileRequest uploadFileRequest = new UploadFileRequest(bucketName, key);
//            uploadFileRequest.setUploadFile(uploadFile);
//            uploadFileRequest.setTaskNum(5);
//            uploadFileRequest.setPartSize(1024 * 1024 * 1);
//            uploadFileRequest.setEnableCheckpoint(true);
//            ObjectMetadata objectMetadata = new ObjectMetadata();
//            UploadFileResult uploadResult = ossClient.uploadFile(uploadFileRequest);
//            location = uploadResult.getMultipartUploadResult().getLocation();
//            location = URLEncoder.encode(location,"UTF-8");
//            String eTag = uploadResult.getMultipartUploadResult().getETag();
            //流对象上传
            PutObjectResult putObject = ossClient.putObject(bucketName, key, file.getInputStream());
            String eTag = putObject.getETag();


            log.info("上传成功! eTag={}",eTag);
        } catch (OSSException oe) {
            System.out.println("Caught an OSSException, which means your request made it to OSS, "
                    + "but was rejected with an error response for some reason.");
            System.out.println("Error Message: " + oe.getErrorMessage());
            System.out.println("Error Code:       " + oe.getErrorCode());
            System.out.println("Request ID:      " + oe.getRequestId());
            System.out.println("Host ID:           " + oe.getHostId());
        } catch (ClientException ce) {
            System.out.println("Caught an ClientException, which means the client encountered "
                    + "a serious internal problem while trying to communicate with OSS, "
                    + "such as not being able to access the network.");
            System.out.println("Error Message: " + ce.getMessage());
        } catch (Throwable e) {
            e.printStackTrace();
        } finally {
            ossClient.shutdown();
        }
        return location;
    }

}