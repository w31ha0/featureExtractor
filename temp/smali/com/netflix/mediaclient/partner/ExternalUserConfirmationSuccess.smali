.class public Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;
.super Lcom/netflix/mediaclient/partner/BaseResponse;
.source "ExternalUserConfirmationSuccess.java"


# static fields
.field protected static final RESULT_confirmed:Ljava/lang/String; = "confirmed"


# instance fields
.field protected confirmed:Z

.field protected token:Lorg/json/JSONObject;

.field protected userId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLorg/json/JSONObject;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1, p2, p6}, Lcom/netflix/mediaclient/partner/BaseResponse;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;)V

    .line 50
    iput-object p3, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->userId:Ljava/lang/String;

    .line 51
    iput-boolean p4, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->confirmed:Z

    .line 52
    iput-object p5, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->token:Lorg/json/JSONObject;

    .line 53
    return-void
.end method


# virtual methods
.method public getToken()Lorg/json/JSONObject;
    .locals 1

    .prologue
    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->token:Lorg/json/JSONObject;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->userId:Ljava/lang/String;

    return-object v0
.end method

.method public isConfirmed()Z
    .locals 1

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->confirmed:Z

    return v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->getJson()Lorg/json/JSONObject;

    move-result-object v0

    .line 88
    const-string/jumbo v1, "status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 89
    const-string/jumbo v1, "confirmed"

    iget-boolean v2, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->confirmed:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 90
    const-string/jumbo v1, "userid"

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 91
    const-string/jumbo v1, "token"

    iget-object v2, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->token:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 92
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ExternalUserConfirmationSuccess [userId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", confirmed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->confirmed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->token:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", service="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->service:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ", id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/partner/ExternalUserConfirmationSuccess;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
