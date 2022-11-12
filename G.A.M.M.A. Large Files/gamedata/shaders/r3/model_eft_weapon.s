-- Main pass--
function normal(shader, t_base, t_second, t_detail)
	shader:begin("deffer_eft_weapon","deffer_eft_weapon")
	: fog (false)	
	shader:dx10stencil(true, cmp_func.always, 255 , 127, stencil_op.keep, stencil_op.replace, stencil_op.keep)
	shader:dx10stencil_ref(1)		
	
	shader:dx10texture("s_base", t_base)
	shader:dx10texture("s_bump", t_base.."_nrm")	
	shader:dx10texture("s_bumpX", t_base.."_gloss")	
	
	shader:dx10sampler("smp_base")	
end
