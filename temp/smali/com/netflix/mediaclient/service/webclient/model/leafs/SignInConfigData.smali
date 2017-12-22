.class public Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;
.super Ljava/lang/Object;
.source "SignInConfigData.java"


# static fields
.field private static final MAX_EMAIL_LEN:I = 0x32

.field private static final MAX_PWD_LEN:I = 0x32

.field private static final MIN_EMAIL_LEN:I = 0x5

.field private static final MIN_PWD_LEN:I = 0x4

.field private static final TAG:Ljava/lang/String; = "nf_config_signin"


# instance fields
.field public fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "fields"
    .end annotation
.end field

.field public flwssn:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "flwssn"
    .end annotation
.end field

.field public nextStep:Ljava/lang/String;
    .annotation runtime Lcom/google/gson/annotations/SerializedName;
        value = "mode"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static fromJsonString(Ljava/lang/String;)Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;
    .locals 2

    .prologue
    .line 63
    invoke-static {p0}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 64
    const/4 v0, 0x0

    .line 68
    :goto_0
    return-object v0

    .line 67
    :cond_0
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 68
    const-class v1, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    invoke-virtual {v0, p0, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;

    goto :goto_0
.end method

.method private getMaxEmailLen()I
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->email:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->email:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;

    iget v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;->maxLength:I

    if-gtz v0, :cond_1

    .line 91
    :cond_0
    const/16 v0, 0x32

    .line 93
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->email:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;

    iget v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;->maxLength:I

    goto :goto_0
.end method

.method private getMaxPwdLen()I
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->password:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->password:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;

    iget v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;->maxLength:I

    if-gtz v0, :cond_1

    .line 105
    :cond_0
    const/16 v0, 0x32

    .line 107
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->password:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;

    iget v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;->maxLength:I

    goto :goto_0
.end method

.method private getMinEmailLen()I
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->email:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->email:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;

    iget v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;->minLength:I

    if-gtz v0, :cond_1

    .line 84
    :cond_0
    const/4 v0, 0x5

    .line 86
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->email:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;

    iget v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;->minLength:I

    goto :goto_0
.end method

.method private getMinPwdLen()I
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->password:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->password:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;

    iget v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;->minLength:I

    if-gtz v0, :cond_1

    .line 98
    :cond_0
    const/4 v0, 0x4

    .line 100
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->password:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;

    iget v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Rules;->minLength:I

    goto :goto_0
.end method


# virtual methods
.method public getReactNativeMode()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->backAction:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$CachedMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->backAction:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$CachedMode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$CachedMode;->cached:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 126
    :cond_0
    const/4 v0, 0x0

    .line 128
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->fields:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$Fields;->backAction:Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$CachedMode;

    iget-object v0, v0, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData$CachedMode;->cached:Ljava/util/HashMap;

    goto :goto_0
.end method

.method public isEmailValid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 111
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 114
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->getMinEmailLen()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isPasswordValid(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-static {p1}, Lcom/netflix/mediaclient/util/StringUtils;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {p0}, Lcom/netflix/mediaclient/service/webclient/model/leafs/SignInConfigData;->getMinPwdLen()I

    move-result v2

    if-lt v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toJsonString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 77
    invoke-static {}, Lcom/netflix/mediaclient/service/webclient/volley/FalkorParseUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v0

    .line 78
    invoke-virtual {v0, p0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 79
    return-object v0
.end method
