# config/schedule.rb

# cronログの出力先（オプション）
set :output, 'log/cron.log'

# タスクの時間と内容を指定
every 1.day, at: '8:00 am' do
  runner "Scheduler.run_daily_tasks"
end