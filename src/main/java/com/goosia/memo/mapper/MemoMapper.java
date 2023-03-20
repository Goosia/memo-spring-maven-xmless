package com.goosia.memo.mapper;

import com.goosia.memo.model.MemoDto;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

@Mapper
public interface MemoMapper {
    List<MemoDto> selectMemoList();

    MemoDto selectMemo(int idx);

    void insertMemo(MemoDto req);

    void updateMemo(MemoDto req);

    void deleteMemo(int idx);
}
