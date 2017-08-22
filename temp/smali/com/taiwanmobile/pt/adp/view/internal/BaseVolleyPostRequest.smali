.class public Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;
.super Lcom/a/a/l;
.source "BaseVolleyPostRequest.java"


# static fields
.field public static final DEFAULT_VALUE_CNAME:Ljava/lang/String; = "main"

.field public static final DEFAULT_VALUE_CTYPE:Ljava/lang/String; = "1"

.field public static final DEFAULT_VALUE_QUESTION_ANSWERS:Ljava/lang/String; = ""

.field public static final DEFAULT_VALUE_QUESTION_ID:Ljava/lang/String; = ""

.field public static final PARAM_ADUNIT_ID:Ljava/lang/String; = "p3"

.field public static final PARAM_BIRTHDAY:Ljava/lang/String; = "p39"

.field public static final PARAM_CALL_TYPE:Ljava/lang/String; = "p38"

.field public static final PARAM_CLICK_VALID_TIME:Ljava/lang/String; = "p35"

.field public static final PARAM_CNAME:Ljava/lang/String; = "p41"

.field public static final PARAM_CTYPE:Ljava/lang/String; = "ctype"

.field public static final PARAM_DEVICE_DENSITY:Ljava/lang/String; = "p32"

.field public static final PARAM_DEVICE_ID:Ljava/lang/String; = "p23"

.field public static final PARAM_DEVICE_MODEL:Ljava/lang/String; = "p30"

.field public static final PARAM_ENABLED_PERMISSIONS:Ljava/lang/String; = "p36"

.field public static final PARAM_GENDER:Ljava/lang/String; = "p37"

.field protected static final PARAM_IS_FIRST_TIME:Ljava/lang/String; = "fp"

.field public static final PARAM_IS_LIMIT_ADTRACKING_ENABLED:Ljava/lang/String; = "p40"

.field public static final PARAM_IS_SMARTBANNER:Ljava/lang/String; = "sb"

.field public static final PARAM_LANGUAGE:Ljava/lang/String; = "p15"

.field public static final PARAM_LOG_TYPE:Ljava/lang/String; = "p19"

.field public static final PARAM_MANUFACTURER:Ljava/lang/String; = "p29"

.field public static final PARAM_NETWORK_ID:Ljava/lang/String; = "p6"

.field public static final PARAM_NETWORK_TYPE:Ljava/lang/String; = "p20"

.field public static final PARAM_OS_VERSION:Ljava/lang/String; = "p28"

.field public static final PARAM_PACKAGE_NAME:Ljava/lang/String; = "p17"

.field public static final PARAM_PHONE_TYPE:Ljava/lang/String; = "p31"

.field public static final PARAM_PLAN_ID:Ljava/lang/String; = "p9"

.field public static final PARAM_QUESTION_ID:Ljava/lang/String; = "qid"

.field public static final PARAM_QUESTUIB_ANSWER:Ljava/lang/String; = "qans"

.field public static final PARAM_SDK_VERSION:Ljava/lang/String; = "p22"

.field public static final PARAM_SID:Ljava/lang/String; = "p1"

.field public static final PARAM_TEST_MARK:Ljava/lang/String; = "p12"

.field public static final PARAM_TX_ID:Ljava/lang/String; = "p24"

.field public static final PARAM_USER_AGENT:Ljava/lang/String; = "p4"

.field public static final PARAM_USER_LOCATION:Ljava/lang/String; = "p5"

.field public static final PARAM_VIDEO_CLIENT_TIME:Ljava/lang/String; = "p26"

.field public static final PARAM_VIDEO_DURATION:Ljava/lang/String; = "p27"

.field public static final PARAM_VIDEO_VIEW_STATUS:Ljava/lang/String; = "p25"

.field public static final VALUE_CTYPE_CLICK:Ljava/lang/String; = "1"

.field public static final VALUE_CTYPE_CLICK_EXTRA:Ljava/lang/String; = "3"

.field public static final VALUE_CTYPE_EXTRA:Ljava/lang/String; = "2"

.field public static final VALUE_IS_SMARTBANNER:Ljava/lang/String; = "1"

.field public static final VALUE_NOT_SMARTBANNER:Ljava/lang/String; = "0"


# instance fields
.field protected listener:Lcom/a/a/n$b;

.field protected params:Ljava/util/Map;


# direct methods
.method public constructor <init>(ILjava/lang/String;Ljava/util/Map;Lcom/a/a/n$b;Lcom/a/a/n$a;)V
    .locals 0

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p5}, Lcom/a/a/l;-><init>(ILjava/lang/String;Lcom/a/a/n$a;)V

    .line 76
    iput-object p4, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->listener:Lcom/a/a/n$b;

    .line 77
    iput-object p3, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->params:Ljava/util/Map;

    .line 78
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Lcom/a/a/n$b;Lcom/a/a/n$a;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p4}, Lcom/a/a/l;-><init>(ILjava/lang/String;Lcom/a/a/n$a;)V

    .line 22
    iput-object p3, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->listener:Lcom/a/a/n$b;

    .line 23
    iput-object p2, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->params:Ljava/util/Map;

    .line 24
    return-void
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->deliverResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method protected deliverResponse(Lorg/json/JSONObject;)V
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->listener:Lcom/a/a/n$b;

    if-eqz v0, :cond_0

    .line 102
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->listener:Lcom/a/a/n$b;

    invoke-interface {v0, p1}, Lcom/a/a/n$b;->onResponse(Ljava/lang/Object;)V

    .line 103
    :cond_0
    return-void
.end method

.method public finish(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 107
    invoke-super {p0, p1}, Lcom/a/a/l;->finish(Ljava/lang/String;)V

    .line 108
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->listener:Lcom/a/a/n$b;

    .line 109
    return-void
.end method

.method protected getParams()Ljava/util/Map;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/taiwanmobile/pt/adp/view/internal/BaseVolleyPostRequest;->params:Ljava/util/Map;

    return-object v0
.end method

.method protected parseNetworkResponse(Lcom/a/a/i;)Lcom/a/a/n;
    .locals 3

    .prologue
    .line 88
    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/a/a/i;->b:[B

    .line 89
    iget-object v2, p1, Lcom/a/a/i;->c:Ljava/util/Map;

    invoke-static {v2}, Lcom/a/a/a/e;->a(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    .line 88
    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 90
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 91
    invoke-static {p1}, Lcom/a/a/a/e;->a(Lcom/a/a/i;)Lcom/a/a/b$a;

    move-result-object v0

    .line 90
    invoke-static {v1, v0}, Lcom/a/a/n;->a(Ljava/lang/Object;Lcom/a/a/b$a;)Lcom/a/a/n;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 95
    :goto_0
    return-object v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    new-instance v1, Lcom/a/a/k;

    invoke-direct {v1, v0}, Lcom/a/a/k;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/a/a/n;->a(Lcom/a/a/s;)Lcom/a/a/n;

    move-result-object v0

    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    new-instance v1, Lcom/a/a/k;

    invoke-direct {v1, v0}, Lcom/a/a/k;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/a/a/n;->a(Lcom/a/a/s;)Lcom/a/a/n;

    move-result-object v0

    goto :goto_0
.end method
