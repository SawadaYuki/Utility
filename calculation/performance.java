import java.io.File;
import java.io.FileReader;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.regex.Pattern;
import java.util.regex.Matcher;


public class performance {
    public static void main(String[] args){

	for(int i = 0; i < args.length; i++){
	    System.out.println("args[" + i + "]= " + args[i]);
	}
	
	if(args.length != 1) {
	    System.out.println("引数がマッチしません");
	    System.out.println("テキストファイルを1ファイルだけ引数に取ってください");
	    return;
	}
	
	try{
	    double sum = 0.0;
	    int count = 0;
	    File file = new File(args[0]);
	    BufferedReader br = new BufferedReader(new FileReader(file));
	    String str = br.readLine();

	    String regex ="[0-9]";
	    Pattern p = Pattern.compile(regex);
	    

	    while(str != null){
		System.out.println("read line =>  " + str);
		Matcher m = p.matcher(str);
		if (m.find()){
		    count++;
		    
		    int start = m.start();
		    String tmp = str.substring(start);
		    System.out.println("取り出し文字列->" + tmp);
		    double evaluation = Double.parseDouble(tmp);
		    System.out.println("数値変換->" + evaluation);

		    sum = sum + evaluation;		    
		}
		str = br.readLine();
	    }
	    
	    br.close();
	    System.out.println(count + "回平均 =  "+ sum/count);
	}catch(FileNotFoundException e){
	    System.out.println(e);
	}catch(IOException e){
	    System.out.println(e);
	}
    }
}