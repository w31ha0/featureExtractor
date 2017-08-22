.class public Lcom/mobfox/sdk/services/MobFoxAdIdService;
.super Lcom/mobfox/sdk/services/MobFoxService;
.source "MobFoxAdIdService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;
    }
.end annotation


# instance fields
.field ad_id:Ljava/lang/String;

.field context:Landroid/content/Context;

.field listener:Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;

.field task:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;Landroid/content/Context;)V
    .locals 1
    .param p1, "listener"    # Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lcom/mobfox/sdk/services/MobFoxService;-><init>(Landroid/content/Context;)V

    .line 18
    const-string v0, ""

    iput-object v0, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService;->ad_id:Ljava/lang/String;

    .line 28
    iput-object p2, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService;->context:Landroid/content/Context;

    .line 29
    iput-object p1, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService;->listener:Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;

    .line 31
    new-instance v0, Lcom/mobfox/sdk/services/MobFoxAdIdService$1;

    invoke-direct {v0, p0, p2}, Lcom/mobfox/sdk/services/MobFoxAdIdService$1;-><init>(Lcom/mobfox/sdk/services/MobFoxAdIdService;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService;->task:Landroid/os/AsyncTask;

    .line 72
    return-void
.end method


# virtual methods
.method public callback()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService;->listener:Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;

    invoke-virtual {p0}, Lcom/mobfox/sdk/services/MobFoxAdIdService;->getAd_id()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mobfox/sdk/services/MobFoxAdIdService$Listener;->onFinish(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method public execute()V
    .locals 2

    .prologue
    .line 75
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService;->task:Landroid/os/AsyncTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method

.method public getAd_id()Ljava/lang/String;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService;->ad_id:Ljava/lang/String;

    return-object v0
.end method

.method public setAd_id(Ljava/lang/String;)V
    .locals 0
    .param p1, "ad_id"    # Ljava/lang/String;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/mobfox/sdk/services/MobFoxAdIdService;->ad_id:Ljava/lang/String;

    .line 85
    return-void
.end method
