.class Lcom/mobfox/sdk/video/VideoBridge$2;
.super Ljava/lang/Object;
.source "VideoBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/video/VideoBridge;->videoProgressRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/video/VideoBridge;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VideoBridge;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VideoBridge;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/mobfox/sdk/video/VideoBridge$2;->this$0:Lcom/mobfox/sdk/video/VideoBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 40
    :try_start_0
    iget-object v2, p0, Lcom/mobfox/sdk/video/VideoBridge$2;->this$0:Lcom/mobfox/sdk/video/VideoBridge;

    iget-object v2, v2, Lcom/mobfox/sdk/video/VideoBridge;->vv:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v2}, Lcom/mobfox/sdk/video/VASTView;->videoProgressRequest()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1

    .line 47
    :goto_0
    return-void

    .line 42
    :catch_0
    move-exception v0

    .line 43
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "hyper console"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 44
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 45
    .local v1, "t":Ljava/lang/Throwable;
    const-string v2, "MobFoxBanner"

    const-string v3, "hyper console"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
