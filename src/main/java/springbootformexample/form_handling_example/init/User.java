package springbootformexample.form_handling_example.init;

import java.util.Date;

import javax.validation.constraints.AssertFalse;
import javax.validation.constraints.AssertTrue;
import javax.validation.constraints.Email;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;

import org.springframework.boot.context.properties.bind.DefaultValue;
import org.springframework.format.annotation.DateTimeFormat;

public class User {

    @Size(min = 3, max = 50)
    private String name;

    @NotBlank(message = "입력해주세요.")
    @Email(message = "이메일 형식이 맞지 않습니다.")
    private String email;

    @NotBlank(message = "8글자 이상의 패스워드를 입력해주세요.")
    @Size(min = 8, max = 16)
    private String password;

    private String profession;

    @NotBlank(message = "글을 입력해주세요.")
    @Size(max = 100)
    private String note;

    @NotBlank(message = "성별을 입력해주세요.")
    private String gender;

    @DateTimeFormat(pattern = "yyyy-mm-dd")
    @NotNull(message = "생일을 입력해주세요.")
    private Date birthday;

    @AssertFalse
    private boolean married;

    private long income;

    public long getIncome() {
        return income;
    }

    public void setIncome(long income) {
        this.income = income;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return this.email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return this.password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getProfession() {
        return this.profession;
    }

    public void setProfession(String profession) {
        this.profession = profession;
    }

    public String getNote() {
        return this.note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public String getGender() {
        return this.gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public Date getBirthday() {
        return this.birthday;
    }

    public void setBirthday(Date birthday) {
        this.birthday = birthday;
    }

    public boolean isMarried() {
        return this.married;
    }

    public void setMarried(boolean married) {
        this.married = married;
    }

    @Override
    public String toString() {
        return "User [name=" + name + ", email=" + email + ", password=" + password + ", profession=" + profession
                + ", note=" + note + ", gender=" + gender + ", birthday=" + birthday + ", married=" + married + "]";
    }
}
