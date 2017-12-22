.class public abstract Lcom/netflix/mediaclient/partner/BaseResponse;
.super Ljava/lang/Object;
.source "BaseResponse.java"

# interfaces
.implements Lcom/netflix/mediaclient/partner/Response;


# static fields
.field public static final RESULT_FAILURE:I = 0x1

.field public static final RESULT_NOUSER:I = 0x2

.field public static final RESULT_OK:I = 0x0

.field public static final RESULT_USERCANCEL:I = 0x3

.field public static final RESULT_errcode:Ljava/lang/String; = "errcode"

.field public static final RESULT_idx:Ljava/lang/String; = "idx"

.field public static final RESULT_msg:Ljava/lang/String; = "msg"

.field public static final RESULT_service:Ljava/lang/String; = "service"

.field public static final RESULT_status:Ljava/lang/String; = "status"

.field public static final RESULT_token:Ljava/lang/String; = "token"

.field public static final RESULT_userid:Ljava/lang/String; = "userid"


# instance fields
.field protected id:Ljava/lang/String;

.field protected originator:Landroid/content/ComponentName;

.field protected service:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V
    .locals 2

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    if-nez p1, :cond_0

    .line 57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Service is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 60
    :cond_0
    if-nez p2, :cond_1

    .line 61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Session id is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 64
    :cond_1
    iput-object p1, p0, Lcom/netflix/mediaclient/partner/BaseResponse;->service:Ljava/lang/String;

    .line 65
    iput-object p2, p0, Lcom/netflix/mediaclient/partner/BaseResponse;->id:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/netflix/mediaclient/partner/BaseResponse;->originator:Landroid/content/ComponentName;

    .line 67
    return-void
.end method

.method public static noNull(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 113
    if-nez p0, :cond_0

    .line 114
    const-string/jumbo p0, ""

    .line 116
    :cond_0
    return-object p0
.end method

.method public static toJSon(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 121
    if-nez p0, :cond_0

    .line 132
    :goto_0
    return-object v1

    .line 127
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    move-object v1, v0

    .line 132
    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string/jumbo v2, ""

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Failed to convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " to JSON!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Lcom/netflix/mediaclient/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public getId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/BaseResponse;->id:Ljava/lang/String;

    return-object v0
.end method

.method protected getJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 107
    const-string/jumbo v1, "idx"

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/BaseResponse;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string/jumbo v1, "service"

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/BaseResponse;->service:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    return-object v0
.end method

.method public getResponder()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/BaseResponse;->originator:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/BaseResponse;->service:Ljava/lang/String;

    return-object v0
.end method
