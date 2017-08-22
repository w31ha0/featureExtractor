.class public Lcom/mobfox/sdk/video/VideoBridge;
.super Ljava/lang/Object;
.source "VideoBridge.java"


# instance fields
.field handler:Landroid/os/Handler;

.field vv:Lcom/mobfox/sdk/video/VASTView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public playCreative(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 24
    iget-object v0, p0, Lcom/mobfox/sdk/video/VideoBridge;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/video/VideoBridge$1;

    invoke-direct {v1, p0, p1}, Lcom/mobfox/sdk/video/VideoBridge$1;-><init>(Lcom/mobfox/sdk/video/VideoBridge;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    return-void
.end method

.method public setVASTView(Lcom/mobfox/sdk/video/VASTView;)V
    .locals 1
    .param p1, "vv"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 18
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/mobfox/sdk/video/VideoBridge;->handler:Landroid/os/Handler;

    .line 19
    iput-object p1, p0, Lcom/mobfox/sdk/video/VideoBridge;->vv:Lcom/mobfox/sdk/video/VASTView;

    .line 20
    return-void
.end method

.method public videoProgressRequest()V
    .locals 2
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/mobfox/sdk/video/VideoBridge;->vv:Lcom/mobfox/sdk/video/VASTView;

    if-nez v0, :cond_0

    .line 50
    :goto_0
    return-void

    .line 36
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/video/VideoBridge;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/mobfox/sdk/video/VideoBridge$2;

    invoke-direct {v1, p0}, Lcom/mobfox/sdk/video/VideoBridge$2;-><init>(Lcom/mobfox/sdk/video/VideoBridge;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
