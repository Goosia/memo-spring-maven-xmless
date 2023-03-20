package com.goosia.memo.controller;

import com.goosia.memo.model.MemoDto;
import com.goosia.memo.service.MemoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class MainController {

    @Autowired
    private MemoService memoService;

    // 메모 목록
    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("memos", memoService.findMemoList());
        return "index";
    }

    // 메모 목록 2
    @GetMapping("/memo")
    public String listMemo() {
        return "redirect:/";
    }

    // 메모 상세
    @GetMapping("/memo/{idx}")
    public String detailMemo(Model model, @PathVariable int idx) {
        model.addAttribute("memo", memoService.findMemo(idx));
        return "detail";
    }

    // 메모 등록 요청
    @GetMapping("/memo/insert")
    public String showInsertMemo() {
        return "insert";
    }

    // 메모 등록
    @PostMapping("/memo")
    public String insertMemo(@ModelAttribute MemoDto req) {
        memoService.insertMemo(req);
        return "redirect:/";
    }

    // 메모 수정 요청
    @GetMapping("/memo/{idx}/update")
    public String showUpdateMemo(Model model, @PathVariable int idx) {
        model.addAttribute("memo", memoService.findMemo(idx));
        return "update";
    }

    // 메모 수정
    @PutMapping("/memo")
    public String updateMemo(@ModelAttribute MemoDto req) {
        memoService.updateMemo(req);
        return "redirect:/";
    }

    @DeleteMapping("/memo/{idx}")
    public String deleteMemo(@PathVariable int idx) {
        memoService.deleteMemo(idx);
        return "redirect:/";
    }
}
