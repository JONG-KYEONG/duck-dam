package com.example.hackathon.content.controller;

import com.example.hackathon.content.application.ContentService;
import com.example.hackathon.content.dto.ContentDetailResponse;
import com.example.hackathon.content.dto.InterestContentResponse;
import io.swagger.v3.oas.annotations.Operation;
import lombok.AllArgsConstructor;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

@RestController
@AllArgsConstructor
@RequestMapping("/api/detail")
public class ContentDetailController {
    private final ContentService contentService;
    @GetMapping("/content")
    @Operation(summary = "상세 페이지에서의 정보를 가져옵니다" ,description = "userId와 contentId를 파라미터로 넣어주세요")
    public ResponseEntity<ContentDetailResponse> getInterestContentResponse(@RequestParam Long userId, @RequestParam Long contentId) {
        ContentDetailResponse contentDetailResponse = contentService.getContentDetailResponse(userId, contentId);
        return new ResponseEntity<>(contentDetailResponse, HttpStatus.OK);
    }
}
