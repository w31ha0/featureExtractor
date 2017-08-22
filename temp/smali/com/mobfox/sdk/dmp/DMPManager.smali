.class public Lcom/mobfox/sdk/dmp/DMPManager;
.super Ljava/lang/Object;
.source "DMPManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;
    }
.end annotation


# static fields
.field static dmpInst:Lcom/mobfox/sdk/dmp/DMP;

.field public static dmpURL:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Lcom/mobfox/sdk/dmp/DMP;->getInstance()Lcom/mobfox/sdk/dmp/DMP;

    move-result-object v0

    sput-object v0, Lcom/mobfox/sdk/dmp/DMPManager;->dmpInst:Lcom/mobfox/sdk/dmp/DMP;

    .line 25
    const-string v0, "https://dmp.starbolt.io/logger.json"

    sput-object v0, Lcom/mobfox/sdk/dmp/DMPManager;->dmpURL:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    return-void
.end method

.method public static postDMP(Landroid/content/Context;Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cb"    # Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;

    .prologue
    .line 38
    sget-object v2, Lcom/mobfox/sdk/dmp/DMPManager;->dmpInst:Lcom/mobfox/sdk/dmp/DMP;

    invoke-virtual {v2, p0}, Lcom/mobfox/sdk/dmp/DMP;->getPost(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v1

    .line 39
    .local v1, "u":Lorg/json/JSONObject;
    if-nez v1, :cond_0

    .line 40
    invoke-interface {p1}, Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;->onPostCompleted()V

    .line 64
    :goto_0
    return-void

    .line 44
    :cond_0
    new-instance v0, Lcom/mobfox/sdk/networking/MobFoxRequest;

    sget-object v2, Lcom/mobfox/sdk/dmp/DMPManager;->dmpURL:Ljava/lang/String;

    invoke-direct {v0, p0, v2}, Lcom/mobfox/sdk/networking/MobFoxRequest;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 45
    .local v0, "req":Lcom/mobfox/sdk/networking/MobFoxRequest;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/mobfox/sdk/networking/MobFoxRequest;->setTestMode(Z)V

    .line 46
    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/networking/MobFoxRequest;->setData(Lorg/json/JSONObject;)Lcom/mobfox/sdk/networking/MobFoxRequest;

    .line 47
    new-instance v2, Lcom/mobfox/sdk/dmp/DMPManager$1;

    invoke-direct {v2, p1}, Lcom/mobfox/sdk/dmp/DMPManager$1;-><init>(Lcom/mobfox/sdk/dmp/DMPManager$DMPCallback;)V

    invoke-virtual {v0, v2}, Lcom/mobfox/sdk/networking/MobFoxRequest;->post(Lcom/mobfox/sdk/networking/AsyncCallback;)V

    goto :goto_0
.end method

.method public static updateDMP(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "IPAddress"    # Ljava/lang/String;
    .param p2, "ua"    # Ljava/lang/String;

    .prologue
    .line 33
    sget-object v0, Lcom/mobfox/sdk/dmp/DMPManager;->dmpInst:Lcom/mobfox/sdk/dmp/DMP;

    invoke-virtual {v0, p0, p1, p2}, Lcom/mobfox/sdk/dmp/DMP;->update(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void
.end method
