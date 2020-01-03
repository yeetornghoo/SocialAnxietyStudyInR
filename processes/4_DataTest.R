Test.Run <- function(obj1, obj2){
	
	# T-TEST
	#TTest.Run(obj1, obj2)

	t.test(obj1$ttl_point, obj2$ttl_point, alternative = c("two.sided", "less", "greater"), mu = 0, paired = FALSE, conf.level = 0.95)

}
