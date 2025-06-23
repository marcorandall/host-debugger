#!/bin/bash
read -p "Enter PID to trace: " pid
echo "🔍 Tracing system calls of PID $pid..."
strace -p "$pid" -f -o /tmp/trace_$pid.log
echo "✔️ Trace saved to /tmp/trace_$pid.log"

