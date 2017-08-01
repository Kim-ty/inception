package kr.co.inception.search.dao.impl;

import static org.springframework.data.mongodb.core.aggregation.Aggregation.group;
import static org.springframework.data.mongodb.core.aggregation.Aggregation.match;
import static org.springframework.data.mongodb.core.aggregation.Aggregation.newAggregation;
import static org.springframework.data.mongodb.core.aggregation.Aggregation.project;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.mongodb.core.MongoTemplate;
import org.springframework.data.mongodb.core.aggregation.Aggregation;
import org.springframework.data.mongodb.core.aggregation.AggregationResults;
import org.springframework.data.mongodb.core.query.Criteria;
import org.springframework.data.mongodb.core.query.Query;
import org.springframework.stereotype.Repository;

import kr.co.inception.search.dao.SearchDAO;
import kr.co.inception.search.vo.DetailVO;
import kr.co.inception.search.vo.HashtagVO;
import kr.co.inception.search.vo.ShopVO;
import kr.co.inception.search.vo.showVO;

@Repository
public class SearchDAOImpl implements SearchDAO {

	@Autowired
	private MongoTemplate mongoTemplate;

	@Override
	public List<ShopVO> shop(String searchWord, String hashtag) {
		Query query = new Query(
				new Criteria().andOperator(Criteria.where("searchWord").is(searchWord).and("hashtag").is(hashtag)));
		return mongoTemplate.find(query, ShopVO.class, "shop");
	}

	@Override
	public HashtagVO wordCloud(String param) {
		Query query = new Query(new Criteria().andOperator(Criteria.where("_id").is(param)));
		return mongoTemplate.findOne(query, HashtagVO.class, "tags");
	}

	@Override
	public List<showVO> showList() {
		Aggregation agg = newAggregation(group("searchWord").count().as("total"));
		AggregationResults<showVO> groupResults = mongoTemplate.aggregate(agg, "search", showVO.class);
		List<showVO> result = groupResults.getMappedResults();

		return result;
	}

	@Override
	public List<DetailVO> detail(String searchWord, String detail) {
		Aggregation agg = newAggregation(match(Criteria.where("searchWord").is(searchWord).and("tags").in(detail)), // forwarding
				// match(Criteria.where("tags").in(detail)),
				project("title", "url", "imageURL", "totalImage"));
		AggregationResults<DetailVO> groupResults = mongoTemplate.aggregate(agg, "search", DetailVO.class);
		List<DetailVO> result = groupResults.getMappedResults();

		return result;
	}

}
