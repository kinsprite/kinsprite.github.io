def create_test_md(month, date_range)
    date_range.each do |date|
        f = File.new("2014-%02i-%02i-test-page-%02i.md" % [month, date, date], 'w+:UTF-8');
        f.puts "---\n\
layout: post\n\
title:  '测试页面%02i-%02i'\n\
date:   '2014-%02i-%02i 20:58:01 +0800'\n\
author: kinsprite\n\
tags: [test, mytest]\n\
---\n\
\n\
测试页面%02i-%02i内容。" % [month, date, month, date, month, date];
    end
end

(1 .. 12).each { |m| create_test_md(m, (1 .. 28)); }
