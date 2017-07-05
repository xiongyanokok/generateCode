package com.test;

public class TestException {  
    public TestException() {  
    }  
   
    boolean testEx() throws Exception {  
        boolean ret = true;  
        try {  
            ret = testEx1();  
        } catch (Exception e) {  
            System.out.println("testEx, catch exception");  
            ret = false;  
            throw e;  
        } finally {  
            System.out.println("testEx, finally; return value=" + ret);  
            return ret;  
        }  
    }  
   
    boolean testEx1() throws Exception {  
        boolean ret = true;  
        try {  
            ret = testEx2();  
            if (!ret) {  
                return false;  
            }  
            System.out.println("testEx1, at the end of try");  
            return ret;  
        } catch (Exception e) {  
            System.out.println("testEx1, catch exception");  
            ret = false;  
            throw e;  
        } finally {  
            System.out.println("testEx1, finally; return value=" + ret);  
            return ret;  
        }  
    }  
   
    boolean testEx2() throws Exception {  
        boolean ret = true;  
        try {  
            int b = 12;  
            int c;  
            for (int i = 2; i >= -2; i--) {  
                c = b / i;  
                System.out.println("i=" + i);  
            }  
            return true;  
        } catch (Exception e) {  
            System.out.println("testEx2, catch exception");  
            ret = false;  
            throw e;  
        } finally {  
            System.out.println("testEx2, finally; return value=" + ret);  
            return ret;  
        }  
    }  
   
    public static void main(String[] args) {  
        TestException testException1 = new TestException();  
        try {  
            testException1.testEx();  
        } catch (Exception e) {  
            e.printStackTrace();  
        }  
    }  
    
    /**
    i=2
	i=1
	testEx2, catch exception
	testEx2, finally; return value=false
	testEx1, finally; return value=false
	testEx, finally; return value=false
	
	
	try 块：用于捕获异常。其后可接零个或多个catch块，如果没有catch块，则必须跟一个finally块。
    catch 块：用于处理try捕获到的异常。
	finally 块：无论是否捕获或处理异常，finally块里的语句都会被执行。当在try块或catch块中遇到return语句时，finally语句块将在方法返回之前被执行。在以下4种特殊情况下，finally块不会被执行：
	1）在finally语句块中发生了异常。
	2）在前面的代码中用了System.exit()退出程序。
	3）程序所在的线程死亡。
	4）关闭CPU。
	
	
     */
    
    
}