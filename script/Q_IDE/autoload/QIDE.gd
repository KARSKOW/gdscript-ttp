extends Node

signal print_result(args)

func to_print(...args: Array):
	emit_signal("print_result", args.reduce(func(a, b): return str(a) + str(b)))
