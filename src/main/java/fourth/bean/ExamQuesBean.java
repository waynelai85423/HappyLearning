package fourth.bean;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Transient;

import org.springframework.stereotype.Component;

import com.fasterxml.jackson.annotation.JsonBackReference;

@Entity
@Table(name="question")
@Component
public class ExamQuesBean implements Serializable
{	
	@Id
	@Column(name="quesid")
	@GeneratedValue(strategy = GenerationType.IDENTITY)		
	private Integer quesID;
	
	@ManyToOne
	@JoinColumn(name="subjectname")
    private ExamSubBean subject;
	
	@ManyToOne
	@JoinColumn(name="educationlevel")
    private ExamEduBean education;
	
	@JsonBackReference
	@ManyToOne
	@JoinColumn(name="EXAMID")
    private ExamBean exam;
	
	@Column(name="quescontent")
	private String quesContent;
	
	@Column(name="optA")
	private String optA;
	
	@Column(name="optB")
	private String optB;
	
	@Column(name="optC")
	private String optC;
	
	@Column(name="optD")
	private String optD;
	
	@Column(name="quesanswer")
	private String quesAnswer;
	
	@Column(name="quesscore")
	private int quesScore;
	
	@Transient
	private String chooseAns;
	
	@Override
	public String toString() {
		return "[subject=" + subject + ", education=" + education + ", quesContent=" + quesContent
				+ ", optA=" + optA + ", optB=" + optB + ", optC=" + optC + ", optD=" + optD + ", quesAnswer="
				+ quesAnswer + ", quesScore=" + quesScore + "]";
	}

	public ExamQuesBean() {
		super();
	}
	
	
	
	public ExamQuesBean(ExamSubBean subject, ExamEduBean education, ExamBean exam, String quesContent, String optA,
			String optB, String optC, String optD, String quesAnswer, int quesScore) {
		super();
		this.subject = subject;
		this.education = education;
		this.exam = exam;
		this.quesContent = quesContent;
		this.optA = optA;
		this.optB = optB;
		this.optC = optC;
		this.optD = optD;
		this.quesAnswer = quesAnswer;
		this.quesScore = quesScore;
	}

	

	public ExamQuesBean(Integer quesID, ExamSubBean subject, ExamEduBean education, ExamBean exam, String quesContent,
			String optA, String optB, String optC, String optD, String quesAnswer, int quesScore) {
		super();
		this.quesID = quesID;
		this.subject = subject;
		this.education = education;
		this.exam = exam;
		this.quesContent = quesContent;
		this.optA = optA;
		this.optB = optB;
		this.optC = optC;
		this.optD = optD;
		this.quesAnswer = quesAnswer;
		this.quesScore = quesScore;
	}

	public Integer getQuesID() {
		return quesID;
	}

	public void setQuesID(Integer quesID) {
		this.quesID = quesID;
	}

	public ExamSubBean getSubject() {
		return subject;
	}

	public void setSubject(ExamSubBean subject) {
		this.subject = subject;
	}

	public ExamEduBean getEducation() {
		return education;
	}

	public void setEducation(ExamEduBean education) {
		this.education = education;
	}

	public String getQuesContent() {
		return quesContent;
	}

	public void setQuesContent(String quesContent) {
		this.quesContent = quesContent;
	}

	public String getOptA() {
		return optA;
	}

	public void setOptA(String optA) {
		this.optA = optA;
	}

	public String getOptB() {
		return optB;
	}

	public void setOptB(String optB) {
		this.optB = optB;
	}

	public String getOptC() {
		return optC;
	}

	public void setOptC(String optC) {
		this.optC = optC;
	}

	public String getOptD() {
		return optD;
	}

	public void setOptD(String optD) {
		this.optD = optD;
	}

	public String getQuesAnswer() {
		return quesAnswer;
	}

	public void setQuesAnswer(String quesAnswer) {
		this.quesAnswer = quesAnswer;
	}

	public int getQuesScore() {
		return quesScore;
	}

	public void setQuesScore(int quesScore) {
		this.quesScore = quesScore;
	}

	public String getChooseAns() {
		return chooseAns;
	}

	public void setChooseAns(String chooseAns) {
		this.chooseAns = chooseAns;
	}

	public ExamBean getExam() {
		return exam;
	}

	public void setExam(ExamBean exam) {
		this.exam = exam;
	}

	
	

	
}
