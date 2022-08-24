package com.zzy.StudentResultSystem.bean;

/**
 * @ClassName Error
 * @Author ZZY
 **/
public class Errors {
    private String msg;

    public Errors() {
    }

    public Errors(String msg) {
        this.msg = msg;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    @Override
    public String toString() {
        return "Error{" +
                "msg='" + msg + '\'' +
                '}';
    }
}
