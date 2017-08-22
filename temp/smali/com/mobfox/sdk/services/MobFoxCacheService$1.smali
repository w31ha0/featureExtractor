.class final Lcom/mobfox/sdk/services/MobFoxCacheService$1;
.super Ljava/lang/Object;
.source "MobFoxCacheService.java"

# interfaces
.implements Lcom/mobfox/sdk/utils/DownloadTask$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/services/MobFoxCacheService;->handleCacheables(Landroid/content/Context;Lorg/json/JSONObject;Lcom/mobfox/sdk/services/MobFoxCacheService$Listener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$listener:Lcom/mobfox/sdk/services/MobFoxCacheService$Listener;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/services/MobFoxCacheService$Listener;)V
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/mobfox/sdk/services/MobFoxCacheService$1;->val$listener:Lcom/mobfox/sdk/services/MobFoxCacheService$Listener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloaded(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/mobfox/sdk/services/MobFoxCacheService$1;->val$listener:Lcom/mobfox/sdk/services/MobFoxCacheService$Listener;

    invoke-interface {v0, p1}, Lcom/mobfox/sdk/services/MobFoxCacheService$Listener;->onDownloaded(Ljava/lang/String;)V

    .line 66
    return-void
.end method
