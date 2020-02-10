package com.xlx.powerfuldemo.controller.mongodb;

import com.mongodb.client.gridfs.model.GridFSFile;
import com.xlx.powerfuldemo.config.MongoGridConfig;
import org.apache.tomcat.util.http.fileupload.IOUtils;
import org.bson.types.ObjectId;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.data.mongodb.gridfs.GridFsResource;
import org.springframework.data.mongodb.gridfs.GridFsTemplate;
import org.springframework.http.MediaType;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * @Author xieluxin
 * @Date 2020/1/21 11:10
 * @Version 1.0
 */
@RestController
@RequestMapping(value = "/mongo")
public class MongoController {

    @Autowired
    private GridFsTemplate gridFsTemplate;
    @Autowired
    private MongoGridConfig mongoGridConfig;

    // 文件上传
    @RequestMapping(value = "/uploadFile", method = RequestMethod.POST, produces = MediaType.MULTIPART_FORM_DATA_VALUE)
    public Object uploadFile(@RequestParam("file") MultipartFile file) throws Exception {

        ObjectId store = gridFsTemplate.store(file.getInputStream(), file.getOriginalFilename(), file.getContentType());
        String s = store.toHexString();
        return s;
    }

    // 文件下载
    @RequestMapping(value = "/getFile", method = RequestMethod.GET)
    public void getFile(@RequestParam(value = "id") String id, HttpServletResponse response) throws IOException {
        System.out.println("id================"+id);
        GridFSFile gridFSFile = gridFsTemplate.findOne(new Query().addCriteria(Criteria.where("_id").is(id)));
        GridFsResource fsResource = mongoGridConfig.convertGridFSFile2Resource(gridFSFile);
        IOUtils.copy(fsResource.getInputStream(),response.getOutputStream());
    }

    /**
     *  删除文件
     * @param fileName
     * @return
     */
    @RequestMapping(value = "/deleteFile", method = RequestMethod.DELETE)
    public Object deleteFile(@RequestParam(value = "fileName") String fileName) {
//        Example example = new Example();
        gridFsTemplate.delete(new Query().addCriteria(Criteria.where("filename").is(fileName)));
        return true;
    }
}