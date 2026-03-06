package model;

import java.io.Serializable;

public class ContactBean implements Serializable {

    private String name;            // 名前
    private String emailAddress;    // メールアドレス
    private String sex;             // 性別
    private String[] cates;         // お問い合わせ種別（複数チェック可能）
    private String pref;            // 住所
    private String message;         // お問い合わせ内容

    //getter / setter
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    public String getEmailAddress() {
        return emailAddress;
    }
    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }

    public String[] getCates() {
        return cates;
    }
    public void setCates(String[] cates) {
        this.cates = cates;
    }

    public String getPref() {
        return pref;
    }
    public void setPref(String pref) {
        this.pref = pref;
    }

    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }
}