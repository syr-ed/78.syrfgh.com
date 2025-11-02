<!DOCTYPE html>
<html lang="zh-CN">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>个人自我介绍</title>
    <style>
        * { margin: 0; padding: 0; box-sizing: border-box; font-family: 'Inter', sans-serif; }
        body { background: #f5f7fa; color: #333; line-height: 1.8; }
        .container { max-width: 1000px; margin: 0 auto; padding: 40px 20px; }
        header { text-align: center; margin-bottom: 60px; }
        h1 { font-size: 36px; font-weight: 700; color: #2d3748; margin-bottom: 12px; }
        .title { font-size: 18px; color: #666; margin-bottom: 20px; }
        .contact { display: flex; justify-content: center; gap: 24px; flex-wrap: wrap; }
        .contact a { color: #4299e1; text-decoration: none; display: flex; align-items: center; gap: 8px; transition: color 0.3s; }
        .contact a:hover { color: #2b6cb0; }
        section { margin-bottom: 60px; }
        h2 { font-size: 24px; font-weight: 600; color: #2d3748; border-left: 4px solid #4299e1; padding-left: 12px; margin-bottom: 20px; }
        .intro { font-size: 16px; color: #666; margin-bottom: 16px; }
        .skills { display: grid; grid-template-columns: repeat(auto-fit, minmax(200px, 1fr)); gap: 20px; }
        .skill-card { background: #fff; padding: 20px; border-radius: 8px; box-shadow: 0 1px 3px rgba(0,0,0,0.1); }
        .skill-card h3 { font-size: 18px; margin-bottom: 12px; color: #4a5568; }
        .skill-card p { color: #666; }
        .timeline { position: relative; padding-left: 30px; }
        .timeline::before { content: ''; position: absolute; left: 8px; top: 0; bottom: 0; width: 2px; background: #e2e8f0; }
        .experience { position: relative; margin-bottom: 30px; }
        .experience::before { content: ''; position: absolute; left: -26px; top: 4px; width: 16px; height: 16px; background: #4299e1; border-radius: 50%; }
        .experience h3 { font-size: 18px; color: #2d3748; margin-bottom: 4px; }
        .experience .time { color: #718096; margin-bottom: 8px; }
        .experience ul { color: #666; margin-left: 20px; }
        .projects { display: grid; grid-template-columns: repeat(auto-fit, minmax(300px, 1fr)); gap: 30px; }
        .project-card { background: #fff; border-radius: 8px; overflow: hidden; box-shadow: 0 1px 3px rgba(0,0,0,0.1); transition: transform 0.3s; }
        .project-card:hover { transform: translateY(-5px); }
        .project-img { height: 180px; background: #4299e1; display: flex; align-items: center; justify-content: center; color: white; font-size: 20px; font-weight: 600; }
        .project-info { padding: 20px; }
        .project-info h3 { font-size: 18px; color: #2d3748; margin-bottom: 8px; }
        .project-info p { color: #666; margin-bottom: 16px; }
        .project-info a { color: #4299e1; text-decoration: none; font-weight: 500; }
    </style>
</head>
<body>
    <div class="container">
        <!-- 头部信息 -->
        <header>
            <h1>李明 / Leo</h1>
            <p class="title">产品设计师 & 交互爱好者 | Product Designer & Interaction Enthusiast</p>
            <div class="contact">
                <a href="mailto:liming@example.com">
                    <svg width="18" height="18" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M20 4H4c-1.1 0-1.99.9-1.99 2L2 18c0 1.1.9 2 2 2h16c1.1 0 2-.9 2-2V6c0-1.1-.9-2-2-2zm0 4l-8 5-8-5V6l8 5 8-5v2z"/>
                    </svg>
                    liming@example.com
                </a>
                <a href="https://portfolio.example.com" target="_blank">
                    <svg width="18" height="18" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M19 0h-14c-2.761 0-5 2.239-5 5v14c0 2.761 2.239 5 5 5h14c2.762 0 5-2.239 5-5v-14c0-2.761-2.238-5-5-5zm-11 19h-3v-11h3v11zm-1.5-12.268c-.966 0-1.75-.79-1.75-1.764s.784-1.764 1.75-1.764 1.75.79 1.75 1.764-.783 1.764-1.75 1.764zm13.5 12.268h-3v-5.604c0-3.368-4-3.113-4 0v5.604h-3v-11h3v1.765c1.396-2.586 7-2.777 7 2.476v6.759z"/>
                    </svg>
                    作品集
                </a>
                <a href="https://github.com/liming" target="_blank">
                    <svg width="18" height="18" fill="currentColor" viewBox="0 0 24 24">
                        <path d="M12 0c-6.626 0-12 5.373-12 12 0 5.302 3.438 9.8 8.207 11.387.599.111.793-.261.793-.577v-2.234c-3.338.726-4.033-1.416-4.033-1.416-.546-1.387-1.333-1.756-1.333-1.756-1.089-.745.083-.729.083-.729 1.205.084 1.839 1.237 1.839 1.237 1.07 1.834 2.807 1.304 3.492.997.107-.775.418-1.305.762-1.604-2.665-.305-5.467-1.334-5.467-5.931 0-1.311.469-2.381 1.236-3.221-.124-.303-.535-1.524.117-3.176 0 0 1.008-.322 3.301 1.23.957-.266 1.983-.399 3.003-.404 1.02.005 2.047.138 3.006.404 2.291-1.552 3.297-1.23 3.297-1.23.653 1.653.242 2.874.118 3.176.77.84 1.235 1.911 1.235 3.221 0 4.609-2.807 5.624-5.479 5.921.43.372.823 1.102.823 2.222v3.293c0 .319.192.694.801.576 4.765-1.589 8.199-6.086 8.199-11.386 0-6.627-5.373-12-12-12z"/>
                    </svg>
                    GitHub
                </a>
            </div>
        </header>

        <!-- 自我简介 -->
        <section>
            <h2>自我简介</h2>
            <p class="intro">5年产品设计经验，专注于用户体验设计与交互逻辑优化，擅长将复杂需求转化为简洁易用的产品解决方案。曾主导3款核心产品从0到1的设计落地，服务用户超百万，累计提升产品留存率35%+。</p>
            <p class="intro">热爱探索设计与技术的边界，痴迷于细节打磨与用户心理研究。工作之外，喜欢徒步、摄影和手冲咖啡，坚信生活中的感知力是设计灵感的重要来源。</p>
        </section>

        <!-- 核心技能 -->
        <section>
            <h2>核心技能</h2>
            <div class="skills">
                <div class="skill-card">
                    <h3>设计工具</h3>
                    <p>Figma、Sketch、Axure、Adobe XD、Principle、AE</p>
                </div>
                <div class="skill-card">
                    <h3>专业能力</h3>
                    <p>用户研究、交互设计、视觉设计、原型制作、可用性测试</p>
                </div>
                <div class="skill-card">
                    <h3>附加技能</h3>
                    <p>HTML/CSS基础、产品思维、需求分析、跨团队协作</p>
                </div>
            </div>
        </section>

        <!-- 工作经历 -->
        <section>
            <h2>工作经历</h2>
            <div class="timeline">
                <div class="experience">
                    <h3>某互联网科技公司 | 高级产品设计师</h3>
                    <p class="time">2020.03 - 至今</p>
                    <ul>
                        <li>主导企业SaaS平台核心模块设计，优化用户操作流程，将任务完成效率提升40%，客户续约率提升25%。</li>
                        <li>负责产品设计规范制定与维护，统一设计语言，减少团队沟通成本30%，迭代效率提升50%。</li>
                        <li>参与用户研究与需求分析，输出10+份用户调研报告，推动3个关键功能优化落地。</li>
                    </ul>
                </div>
                <div class="experience">
                    <h3>某创业公司 | 产品设计师</h3>
                    <p class="time">2018.06 - 2020.02</p>
                    <ul>
                        <li>负责C端社交产品的交互与视觉设计，从0到1完成产品原型、UI设计及上线跟进。</li>
                        <li>通过用户反馈持续优化产品体验，上线3个版本迭代，用户日均使用时长提升60%。</li>
                        <li>协作开发、运营团队推进项目落地，保障产品上线节奏与质量。</li>
                    </ul>
                </div>
            </div>
        </section>

        <!-- 代表项目 -->
        <section>
            <h2>代表项目</h2>
            <div class="projects">
                <div class="project-card">
                    <div class="project-img">企业协作SaaS平台</div>
                    <div class="project-info">
                        <h3>智能协作管理系统</h3>
                        <p>为中大型企业打造的一站式协作平台，整合任务管理、文件共享、沟通协作等功能，服务500+企业客户。</p>
                        <a href="https://project1.example.com" target="_blank">查看详情 →</a>
                    </div>
                </div>
                <div class="project-card">
                    <div class="project-img">C端社交产品</div>
                    <div class="project-info">
                        <h3>青年兴趣社交APP</h3>
                        <p>聚焦Z世代兴趣社交需求，通过算法匹配精准推荐，上线6个月用户突破100万，获应用商店新锐推荐。</p>
                        <a href="https://project2.example.com" target="_blank">查看详情 →</a>
                    </div>
                </div>
                <div class="project-card">
                    <div class="project-img">工具类小程序</div>
                    <div class="project-info">
                        <h3>高效办公工具箱</h3>
                        <p>整合文件转换、思维导图、流程绘制等功能，轻量化设计适配移动办公场景，累计使用量超500万次。</p>
                        <a href="https://project3.example.com" target="_blank">查看详情 →</a>
                    </div>
                </div>
            </div>
        </section>
    </div>
</body>
</html>
