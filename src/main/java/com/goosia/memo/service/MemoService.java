package com.goosia.memo.service;

import com.goosia.memo.model.MemoDto;

import java.util.List;

public interface MemoService {
    List<MemoDto> findMemoList();

    MemoDto findMemo(int idx);

    void deleteMemo(int idx);

    void updateMemo(MemoDto req);

    void insertMemo(MemoDto req);
}
