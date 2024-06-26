package com.ryumina.fooder.exception.handler;

import com.ryumina.fooder.common.FailResult;
import com.ryumina.fooder.common.Response;
import com.ryumina.fooder.exception.FooderBusinessException;
import org.springframework.http.HttpStatus;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.validation.BindException;
import org.springframework.validation.FieldError;
import org.springframework.validation.ObjectError;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseStatus;
import org.springframework.web.bind.annotation.RestControllerAdvice;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;

@RestControllerAdvice
public class ControllerExceptionHandler {

    // parameter binding fail
    @ExceptionHandler(value = {
        BindException.class,
        MethodArgumentTypeMismatchException.class,
        HttpMessageNotReadableException.class
    })
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public Response<?> wrongParameterException(Exception e) {
        return Response.fail(FailResult.WRONG_PARAMETER_EXCEPTION.getMessage()).build();
    }

    // parameter validation check fail
    @ExceptionHandler(value = {MethodArgumentNotValidException.class})
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public Response<?> MethodArgumentNotValidException(MethodArgumentNotValidException e) {
        ObjectError objectError = e.getBindingResult().getAllErrors().get(0);
        String message = objectError.getDefaultMessage();

        return Response.fail(((FieldError) objectError).getField() + ": " + message).build();
    }

    // business fail
    @ExceptionHandler(value = {FooderBusinessException.class})
    @ResponseStatus(HttpStatus.BAD_REQUEST)
    public Response<?> fooderBusinessException(FooderBusinessException e) {
        return Response.fail(e.getResultMessage()).build();
    }

}
