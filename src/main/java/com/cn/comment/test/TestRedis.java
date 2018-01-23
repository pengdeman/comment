package com.cn.comment.test;

import org.junit.Test;
import redis.clients.jedis.Jedis;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public class TestRedis {
	private Jedis jedis;
	
//	@Before
//	public void setup(){
//		 //连接redis服务器，127.0.0.1:6379
//		 jedis = new Jedis("192.168.162.223", 6379); 
//	}
	/**
	 * redis存储字符串
	 * set：存储一个值
	 * append：字符串拼接
	 * del：删除某个指定键值
	 * mset：设置多个键值对
	 * incr:进行加1操作
	 */
	
//	@Test
	public void testString() {
		 //-----添加数据----------  set  append  del  mset   incr
		 jedis.set("name","pengdeman");//set操作，存储一个值
		 System.out.println(jedis.get("name"));//get操作，通过key找到对应的value
		 jedis.append("name", " is pandaman");//append操作，字符串拼接
		 System.out.println(jedis.get("name")); //输出拼接的字符串
		 jedis.del("name");  //del操作，删除某个键
		 System.out.println(jedis.get("name"));//输出指定的key值
		 //设置多个键值对
		 jedis.mset("name","pengdeman","age","23","qq","872422345");
		 jedis.incr("age"); //进行加1操作
		 System.out.println(jedis.get("name") + "-" + jedis.get("age") + "-" + jedis.get("qq"));
	 }

	   /**
	     * redis操作Map
	     * hmset：存储一个map集合
	     * hmget：（map集合key，map中对象的key，map中对象的key，map中对象的key【可多个】）
	     * hdel：删除map集合中的某个指定键值
	     * hlen：返回key为user的map集合的存放值得个数
	     * exists：是否存在key为user的记录，存在为true
	     * hkeys：返回map集合中的所有的key
	     * hvals：返回map集合中的所有的value
	     */
//	      @Test
	      public void testMap() {
	          //-----添加数据----------  
	          Map<String, String> map = new HashMap<String, String>();
	          map.put("name", "pengdeman");
	          map.put("age", "23");
	          map.put("qq", "872422345");
	          jedis.hmset("user",map);
	          //取出user中的name，执行结果:[minxr]-->注意结果是一个泛型的List  
	          //第一个参数是存入redis中map对象的key，后面跟的是放入map中的对象的key，后面的key可以跟多个，是可变参数  
	          List<String> rsmap = jedis.hmget("user", "name", "age", "qq");
	          System.out.println(rsmap);  
	    
	          //删除map中的某个键值  
	          jedis.hdel("user","age");
	          System.out.println(jedis.hmget("user", "age")); //因为删除了，所以返回的是null  
	          System.out.println(jedis.hlen("user")); //返回key为user的键中存放的值的个数2 
	          System.out.println(jedis.exists("user"));//是否存在key为user的记录 返回true  
	          System.out.println(jedis.hkeys("user"));//返回map对象中的所有key  
	          System.out.println(jedis.hvals("user"));//返回map对象中的所有value 
	    
	          //遍历key为user的map集合的所有value
	          Iterator<String> iter=jedis.hkeys("user").iterator();  
	          while (iter.hasNext()){  
	              String key = iter.next();  
	              System.out.println(key+":"+jedis.hmget("user",key));  
	          }  
	      }
	      
	      /** 
	       * jedis操作List 
	       * lrange:返回存储在key的列表里指定范围内的元素，从0开始，-1代表最后一个元素
	       * lpush：将一个或多个值 value 插入到列表 key 的表头 先进后出 类似堆栈
	       * rpush：插入所有指定的值，在存储在列表的key尾部 先进先出 类似队列
	       */  
//	      @Test  
	      public void testList(){  
	          //开始前，先移除所有的内容  
	          jedis.del("java framework");  
	          System.out.println(jedis.lrange("java framework",0,-1));  
	          //先向key java framework中存放三条数据  
	          jedis.lpush("java framework","spring");  
	          jedis.lpush("java framework","struts");  
	          jedis.lpush("java framework","hibernate");  
	          //再取出所有数据jedis.lrange是按范围取出，  
	          // 第一个是key，第二个是起始位置，第三个是结束位置，jedis.llen获取长度 -1表示取得所有  
	          System.out.println(jedis.lrange("java framework",0,-1));  
	          
	          jedis.del("java framework");
	          jedis.rpush("java framework","spring");  
	          jedis.rpush("java framework","struts");  
	          jedis.rpush("java framework","hibernate"); 
	          System.out.println(jedis.lrange("java framework",0,-1));
	      }  
	      
	     /** 
	      * jedis操作Set 
	      * sadd:添加set集合元素
	      * srem:移除set集合的某个key对应的值
	      * smembers:获取所有加入set集合的value值
	      * sismember:判断set集合中某个key是否在集合中
	      * srandmember：随机返回set集合中的一个元素
	      * scard：返回set集合的元素个数
	      */  
//	     @Test  
	     public void testSet(){  
	    	 jedis.del("user");//先清除数据，再加入数据进行测试  
	         //添加  
	         jedis.sadd("user","pengdeman");  
	         jedis.sadd("user","xumeilan");  
	         jedis.sadd("user","peng");  
	         jedis.sadd("user","meilan");
	         jedis.sadd("user","who");  
	         //移除noname  
	         jedis.srem("user","who");  
	         System.out.println(jedis.smembers("user"));//获取所有加入的value  
	         System.out.println(jedis.sismember("user", "who"));//判断 who 是否是user集合的元素  
	         System.out.println(jedis.srandmember("user"));//随机返回set集合中的一个元素  
	         System.out.println(jedis.scard("user"));//返回集合的元素个数  
	     }  
	   /**
	    * lpush：将一个或多个值 value 插入到列表 key 的表头 先进后出 类似堆栈
	    * rpush：插入所有指定的值，在存储在列表的key尾部 先进先出 类似队列
	    * sort:升序排序
	    * lrange:返回存储在key的列表里指定范围内的元素，从0开始，-1代表最后一个元素
	    */
//	     @Test  
	     public void test() throws InterruptedException {  
	         //jedis 排序  
	         //注意，此处的rpush和lpush是List的操作。是一个双向链表（但从表现来看的）  
	         jedis.del("a");//先清除数据，再加入数据进行测试  
	         jedis.rpush("a", "1");  
	         jedis.lpush("a","6");  
	         jedis.lpush("a","3");  
	         jedis.lpush("a","9");  
	         System.out.println(jedis.lrange("a",0,-1));// [9, 3, 6, 1]  
	         System.out.println(jedis.sort("a")); //[1, 3, 6, 9]  //输入排序后结果  
	         System.out.println(jedis.lrange("a",0,-1));  
	     }  
	     
	     @Test
	     public void testRedisPool(){
	         RedisUtil.getJedis().set("newname", "中文测试");
	         System.out.println(RedisUtil.getJedis().get("newname"));
	     }
	     
 	}
