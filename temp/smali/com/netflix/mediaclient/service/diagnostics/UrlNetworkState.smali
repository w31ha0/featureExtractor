.class public Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;
.super Ljava/lang/Object;
.source "UrlNetworkState.java"


# static fields
.field private static final errorCodeString:Ljava/lang/String; = "errorcode"

.field private static final errorGroupString:Ljava/lang/String; = "errorgroup"

.field private static final successString:Ljava/lang/String; = "success"

.field private static final urlString:Ljava/lang/String; = "URL"

.field private static final urlTypeString:Ljava/lang/String; = "urlType"


# instance fields
.field private errorCode:I

.field private errorGroup:I

.field private mIsSuccess:Z

.field private status:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

.field private final url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;->NOT_TESTED:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    iput-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->status:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    .line 15
    iput v1, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->errorCode:I

    .line 16
    iput v1, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->errorGroup:I

    .line 17
    iput-boolean v1, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->mIsSuccess:Z

    .line 26
    iput-object p1, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->url:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->status:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    .line 28
    return-void
.end method


# virtual methods
.method public containsNetflix()Z
    .locals 2

    .prologue
    .line 67
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->url:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->url:Ljava/lang/String;

    const-string/jumbo v1, "netflix"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getErrorCode()I
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->errorCode:I

    return v0
.end method

.method public getErrorGroup()I
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->errorGroup:I

    return v0
.end method

.method public getStatus()Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->status:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->url:Ljava/lang/String;

    return-object v0
.end method

.method public isSuccess()Z
    .locals 1

    .prologue
    .line 59
    iget-boolean v0, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->mIsSuccess:Z

    return v0
.end method

.method public setErrorCode(I)V
    .locals 0

    .prologue
    .line 47
    iput p1, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->errorCode:I

    .line 48
    return-void
.end method

.method public setErrorGroup(I)V
    .locals 0

    .prologue
    .line 55
    iput p1, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->errorGroup:I

    .line 56
    return-void
.end method

.method public setStatus(Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;)V
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->status:Lcom/netflix/mediaclient/service/diagnostics/DiagnosisAgent$UrlStatus;

    .line 40
    return-void
.end method

.method public setSuccess(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->mIsSuccess:Z

    .line 64
    return-void
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 71
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 72
    const-string/jumbo v0, "URL"

    iget-object v2, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->url:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 73
    const-string/jumbo v0, "errorgroup"

    iget v2, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->errorGroup:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 74
    const-string/jumbo v0, "errorcode"

    iget v2, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->errorCode:I

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 75
    const-string/jumbo v0, "success"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->mIsSuccess:Z

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 76
    const-string/jumbo v2, "urlType"

    invoke-virtual {p0}, Lcom/netflix/mediaclient/service/diagnostics/UrlNetworkState;->containsNetflix()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "NETFLIX"

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    return-object v1

    .line 76
    :cond_0
    const-string/jumbo v0, "INTERNET"

    goto :goto_0
.end method
