package com.goosia.memo;

import com.goosia.memo.model.MemoDto;
import com.goosia.memo.mapper.MemoMapper;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import java.util.List;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = "classpath:config/root-context.xml")
public class MemoMapperTest {
    @Autowired
    private MemoMapper memoMapper;


    @Test
    public void mapperTest() {
        // SelectList Memo
        List<MemoDto> list = memoMapper.selectMemoList();
        if(!list.isEmpty() && list.size() > 0) {
            for (MemoDto memo : list) {
                System.out.println(memo.getIdx() + " : " + memo.getContents());
            }
        } else {
            System.out.println("NPE");
        }
    }
}
