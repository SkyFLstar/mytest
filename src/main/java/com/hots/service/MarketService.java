package com.hots.service;

import com.hots.dao.MarketDao;
import com.hots.privateclass.Market;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import javax.annotation.Resource;
import java.util.List;


@Component
public class MarketService {

    @Resource
    @Autowired
    private MarketDao marketDao;

    public MarketDao getMarketDao() { return marketDao; }

    public void setMarketDao(MarketDao marketDao) { this.marketDao = marketDao; }


    public List<Market> selectByType(String wares_type){return marketDao.selectByType(wares_type);}
    public List<Market> selectByName(String wares_name){return marketDao.selectByName(wares_name);}
    public List<Market> selectByFrom(String wares_from){return marketDao.selectByFrom(wares_from);}
    public List<Market> selectByPrice(int min_price,int max_price){return marketDao.selectByPrice(min_price,max_price);}
    public List<Market> selectAll(){return marketDao.selectAll();}


}


