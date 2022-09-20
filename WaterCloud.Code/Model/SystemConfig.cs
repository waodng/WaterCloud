using System.Collections.Generic;

namespace WaterCloud.Code.Model
{
	public class SystemConfig
	{
		/// <summary>
		/// 是否是Demo模式
		/// </summary>
		public bool Demo { get; set; }

		/// <summary>
		/// 是否是调试模式
		/// </summary>
		public bool Debug { get; set; }

		/// <summary>
		/// 允许一个用户在多个电脑同时登录
		/// </summary>
		public bool LoginMultiple { get; set; }

		/// <summary>
		/// 允许跨域的站点
		/// </summary>
		public string AllowCorsSite { get; set; }

		public string DBProvider { get; set; }
		public string DBConnectionString { get; set; }
		public int DBCommandTimeout { get; set; }

		public string CacheProvider { get; set; }
		public string HandleLogProvider { get; set; }
		public string RedisConnectionString { get; set; }
		public string TokenName { get; set; }

		//缓存过期时间
		public int LoginExpire { get; set; }

		public string HomePage { get; set; }
		public bool? LocalLAN { get; set; }

		/// <summary>
		/// 数据库模式
		/// </summary>
		public string SqlMode { get; set; }

		/// <summary>
		/// 项目前缀
		/// </summary>
		public string ProjectPrefix { get; set; }

		/// <summary>
		/// 是否重置密码
		/// </summary>
		public bool? ReviseSystem { get; set; }

		public int? LoginErrorCount { get; set; }

		/// <summary>
		/// 多数据库组
		/// </summary>
		public List<DBConfig> SqlConfig { get; set; }

		/// <summary>
		/// 是否集群
		/// </summary>
		public bool? IsCluster { get; set; }

		/// <summary>
		/// 是否删除定时调度任务
		/// </summary>
		public bool? NeedClear { get; set; }

		/// <summary>
		/// 主程序数据库编号
		/// </summary>
		public string MainDbNumber { get; set; }

		/// <summary>
		/// 是否开启定时任务
		/// </summary>
		public bool? OpenQuartz { get; set; }

		public DocumentSettings DocumentSettings { get; set; }
		public MqConfig RabbitMq { get; set; }
	}

	public class DocumentSettings
	{
		public string DocumentTitle { get; set; }
		public List<GroupOpenApiInfo> GroupOpenApiInfos { get; set; }
	}

	public class GroupOpenApiInfo
	{
		public string Group { get; set; }
		public string Title { get; set; }
		public string Description { get; set; }
		public string Version { get; set; }
	}

	public class DBConfig
	{
		/// <summary>
		/// 数据库序号
		/// </summary>
		public string DBNumber { get; set; }

		/// <summary>
		/// 数据库类型
		/// </summary>
		public string DBProvider { get; set; }

		/// <summary>
		/// 数据库连接
		/// </summary>
		public string DBConnectionString { get; set; }
	}
}