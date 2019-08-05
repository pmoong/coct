package com.cw.coc.board.controller;

public class BoardController {
	@RequestMapping("/board/list/excel")
    public void excelExport(){
       
       ArticleSearchVO articleSearch = null;
       if(articleSearch == null) {
          articleSearch = new ArticleSearchVO("0", "", "");
       }
       
       BoardListVO boardList = boardService.getArticleInBoardByCondition(articleSearch);
       List<BoardVO> articleList = boardList.getList();
       
       WriteOption writeOption = new WriteOption();
       writeOption.setFileName("articleList.xlsx");
       writeOption.setSheetName("ARTICLE");
       List<String> titles = new ArrayList<String>();
       titles.add("num");
       titles.add("subject");
       titles.add("author");
       titles.add("hit");
       titles.add("recommend");
       titles.add("created date/modified date");
       
       writeOption.setTitles(titles);
       
       List<String[]> contents = new ArrayList<String[]>();
       String[] row = new String[6];
       
       for(BoardVO boardVO : articleList){
          row = new String[6];
          
          row[0] = boardVO.getId() + "";
          row[1] = boardVO.getSubject();
          row[2] = boardVO.getUserName();
          row[3] = boardVO.getHit() + "";
          row[4] = boardVO.getRecommend() + "";
          row[5] = boardVO.getCreatedDate() +"/"+ boardVO.getModifiedDate();
          
          contents.add(row);
       }
       
       writeOption.setContents(contents);
       ExcelWrite.write(writeOption);
       
       
    }


}
