def create_test_md(month, date_range) :
    for i in date_range :
        with open('2014-{month:02}-{date:02}-test-page-{date:02}.md'.format(month = month, date = i), 'w+', encoding = 'utf-8') as f :
            print('---\n\
layout: post\n\
title:  "测试页面{month}-{date}"\n\
date:   "2014-{month:02}-{date:02} 20:58:01 +0800"\n\
author: kinsprite\n\
tags: [test, mytest]\n\
---\n\
\n\
测试页面{month}-{date}内容。'.format(month = month, date = i), file = f);

for m in range(1, 12) :
    create_test_md(m, range(1, 28));
