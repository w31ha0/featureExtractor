.class public abstract Lcom/mobfox/sdk/services/MobFoxService;
.super Ljava/lang/Object;
.source "MobFoxService.java"


# instance fields
.field context:Landroid/content/Context;

.field handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/mobfox/sdk/services/MobFoxService;->context:Landroid/content/Context;

    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/mobfox/sdk/services/MobFoxService;->handler:Landroid/os/Handler;

    .line 19
    return-void
.end method


# virtual methods
.method public abstract callback()V
.end method

.method public run()V
    .locals 3

    .prologue
    .line 23
    :try_start_0
    invoke-virtual {p0}, Lcom/mobfox/sdk/services/MobFoxService;->callback()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :goto_0
    return-void

    .line 24
    :catch_0
    move-exception v0

    .line 25
    .local v0, "e":Ljava/lang/Exception;
    iget-object v1, p0, Lcom/mobfox/sdk/services/MobFoxService;->context:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Lcom/mobfox/sdk/logging/MobFoxReport;->postException(Landroid/content/Context;Ljava/lang/Throwable;Lcom/mobfox/sdk/networking/AsyncCallback;)V

    goto :goto_0
.end method
