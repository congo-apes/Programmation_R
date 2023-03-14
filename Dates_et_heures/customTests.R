match_call <- function(correct_call = NULL) {
  e <- get("e", parent.frame())
  if(is.null(correct_call)) return(TRUE)
  full_correct_call <- expand_call(correct_call)  
  expr <- deparse(e$expr)
  full_user_expr <- expand_call(expr)
  identical(full_correct_call, full_user_expr)
}

expand_call <- function(call_string) {
  qcall <- parse(text=call_string)[[1]]
  if(length(qcall) <= 1) return(qcall)
  is_assign <- is(qcall, "<-")
  if(is_assign) {
    rhs <- qcall[[3]]
    fun <- match.fun(rhs[[1]])
    if(is.primitive(fun)) return(qcall)
    full_rhs <- match.call(fun, rhs)
    qcall[[3]] <- full_rhs
  } else {
    fun <- match.fun(qcall[[1]])
    if(is.primitive(fun)) return(qcall)
    qcall <- match.call(fun, qcall)
  } 
  qcall
}

getState <- function(){
  environment(sys.function(1))$e
}

getVal <- function(){
  getState()$val
}

getExpr <- function(){
  getState()$expr
}

