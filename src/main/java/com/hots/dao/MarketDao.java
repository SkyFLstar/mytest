package com.hots.dao;

import com.hots.privateclass.Market;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface MarketDao {

    List<Market> selectByType(@Param("wares_type") String wares_type);
    List<Market> selectByName(@Param("wares_name") String wares_name);
    List<Market> selectByFrom(@Param("wares_from") String wares_from);
    List<Market> selectByPrice(@Param("min_price") int min_price,@Param("max_price") int max_price);
    List<Market> selectAll();

}
