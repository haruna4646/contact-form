package model;

public class ContactBean {

    private String name;
    private String emailAddress;
    private String sex;
    private String[] cates;     // 送信用
    private String catesHtml;   // 表示用文字列
    private String pref;
    private String message;

    // 名前
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }

    // メールアドレス
    public String getEmailAddress() {
        return emailAddress;
    }
    public void setEmailAddress(String emailAddress) {
        this.emailAddress = emailAddress;
    }

    // 性別
    public String getSex() {
        return sex;
    }
    public void setSex(String sex) {
        this.sex = sex;
    }

    // お問い合わせ種別（送信用）
    public String[] getCates() {
        return cates;
    }
    public void setCates(String[] cates) {
        this.cates = cates;
    }

    // お問い合わせ種別（表示用）
    public String getCatesHtml() {
        return catesHtml;
    }
    public void setCatesHtml(String catesHtml) {
        this.catesHtml = catesHtml;
    }

    // エリア
    public String getPref() {
        return pref;
    }
    public void setPref(String pref) {
        this.pref = pref;
    }

    // メッセージ
    public String getMessage() {
        return message;
    }
    public void setMessage(String message) {
        this.message = message;
    }

    // 配列 cates を改行付き文字列に変換
    public String getCatesText() {
        if (cates == null) {
            return "";
        }
        return String.join("<br>", cates);
    }
}