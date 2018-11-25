class ActiveSupport::Logger::SimpleFormatter
  SEVERITY_TO_TAG_MAP     = {'DEBUG'=>'DBG', 'INFO'=>'INF', 'WARN'=>'WRN', 'ERROR'=>'ERR', 'FATAL'=>'FTL', 'UNKNOWN'=>'???'}
  SEVERITY_TO_COLOR_MAP   = {'DEBUG'=>'0;36', 'INFO'=>'1;32', 'WARN'=>'1;33', 'ERROR'=>'1;31', 'FATAL'=>'0;31', 'UNKNOWN'=>'0;35'}
  USE_HUMOROUS_SEVERITIES = true
 
  def call(severity, time, progname, msg)
    if USE_HUMOROUS_SEVERITIES
      formatted_severity = sprintf("%-3s",SEVERITY_TO_TAG_MAP[severity])
    else
      formatted_severity = sprintf("%-5s",severity)
    end
 
    formatted_time = time.strftime("%Y-%m-%d %H:%M:%S.") << time.usec.to_s[0..2].rjust(3)
    color = SEVERITY_TO_COLOR_MAP[severity]
 
    "\033[1;37m#{formatted_time}\033[0m [\033[#{color}m#{formatted_severity}\033[0m] #{msg.strip} (pid:#{$$})\n"
  end
end