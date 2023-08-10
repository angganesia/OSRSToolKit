

Stopwatch:
timers += 1
if(timers > 59)
{
	timerm += 1
	timers := "0"
	GuiControl, main:, Stopwatch ,  %timerm%:%timers%
}
if(timers < 10)
{
	GuiControl, main:, Stopwatch ,  %timerm%:0%timers%
}
else
{
	GuiControl, main:, Stopwatch ,  %timerm%:%timers%
}
return