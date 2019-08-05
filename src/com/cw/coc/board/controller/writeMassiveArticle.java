package com.cw.coc.board.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@RequestMapping("/board/massiveWrite")
public ModelAndView writeMassiveArticle(MultipartHttpServletRequest request){
    
    MultipartFile excelFile = request.getFile("excelFile");
    if(excelFile==null || excelFile.isEmpty()){
        throw new RuntimeException("엑셀파일을 선택해 주세요");
    }

    File destFile = new File("D:\\"+excelFile.getOriginalFilename());
    try {
        excelFile.transferTo(destFile);
    } catch (IllegalStateException | IOException e) {
        throw new RuntimeException(e.getMessage(),e);

    }
    
    boardService.insertMassiveArticleInBoard(destFile);
    
    FileUtils.deleteFile(destFile.getAbsolutePath());
    
    ModelAndView view = new ModelAndView();
    view.setViewName("redirect:/board/list");
    return view;
}


출처: https://madeinjeon.tistory.com/59 [Jeon's blog]
