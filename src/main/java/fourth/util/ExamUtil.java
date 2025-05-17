package fourth.util;

import java.util.Arrays;
import java.util.Random;


public class ExamUtil {
	
	
	
	public static int getSubIdx(String subject) {
		String[] strSub= {"數學","英文","國文"};
		int subIdx = Arrays.asList(strSub).indexOf(subject)+1;
		return subIdx;
	}
	
	public static int getEduIdx(String education) {
		String[] strEdu= {"國中","高中","成人"};
		int eduIdx = Arrays.asList(strEdu).indexOf(education)+1;
		return eduIdx;
	}
	
	
	public static boolean datacheck(String data) {
		
		String[] dateSplit = data.split("-");
		if(Integer.parseInt(dateSplit[1])>12) {
			return false;
		}
		
		System.out.println(Integer.parseInt(dateSplit[1]));
		
		String[] arr = {"01","03","05","07","08","10","12"};
		int monthIdx = Arrays.asList(arr).indexOf(dateSplit[1]);
		
		if( monthIdx != -1) {
			
			if(Integer.parseInt(dateSplit[2])>31)
				return false;
		
		} else {
			
			if(Integer.parseInt(dateSplit[2])>30)
				return false;
			
		}
		
		return true;
	}
	
//	public static void RandList(Integer NumOfRan) {
//		
//		int[] nums = new int[NumOfRan];
//		int lucky;
//		
//		for (int i = 0; i < nums.length; i++) {
//			
//			do {
//				lucky = (int) (Math.random() * 7) + 1;
//			} while (isExist(nums, lucky));
//			nums[i] = lucky;
//			
//		}
//		
//		for (int i : nums) {
//			System.out.print(i + " ");
//		}
//		
//	}
//	
//	private static boolean isExist(int[] array, int key) {
//		for (int i = 0; i < array.length; i++) {
//			if (array[i] == key) {
//				return true;
//			}
//		}
//		return false;
//	}
		
	
//	System.out.println("科目"+ExamData.getSubject()+"程度"+ExamData.getEducation());
//	System.out.println("科目"+subIdx+"程度"+eduIdx);

}
