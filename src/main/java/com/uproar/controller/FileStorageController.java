package com.uproar.controller;

import com.uproar.entity.FileEntity;
import com.uproar.service.FileStorageService;
import org.springframework.core.io.ByteArrayResource;
import org.springframework.core.io.Resource;
import org.springframework.http.HttpHeaders;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.multipart.MultipartFile;

import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.List;

@RestController
@RequestMapping("/files")
public class FileStorageController {

  private FileStorageService fileStorageService;

  public FileStorageController(FileStorageService fileStorageService) {
    this.fileStorageService = fileStorageService;
  }

  @PostMapping("/uploadFile")
  public FileEntity uploadFile(@RequestParam("file") MultipartFile file) throws IOException {
    return fileStorageService.storeFile(file);
  }

  @PostMapping("/uploadMulti")
  public List<FileEntity> uploadMultipleFiles(@RequestParam("files") MultipartFile[] files) {
    return fileStorageService.storeFiles(files);
  }

  @GetMapping("/downloadFile/{fileId}")
  public ResponseEntity<Resource> downloadFile(@PathVariable Long fileId) throws FileNotFoundException {
    FileEntity fileEntity = fileStorageService.getFile(fileId);

    return ResponseEntity.ok()
      .contentType(MediaType.parseMediaType(fileEntity.getContentType()))
      .header(HttpHeaders.CONTENT_DISPOSITION, "attachment; filename =\"" + fileEntity.getFilename() + "\"")
      .body(new ByteArrayResource(fileEntity.getData()));
  }

}
