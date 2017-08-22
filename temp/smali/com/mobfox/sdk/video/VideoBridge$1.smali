.class Lcom/mobfox/sdk/video/VideoBridge$1;
.super Ljava/lang/Object;
.source "VideoBridge.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/video/VideoBridge;->playCreative(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/video/VideoBridge;

.field final synthetic val$data:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VideoBridge;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VideoBridge;

    .prologue
    .line 24
    iput-object p1, p0, Lcom/mobfox/sdk/video/VideoBridge$1;->this$0:Lcom/mobfox/sdk/video/VideoBridge;

    iput-object p2, p0, Lcom/mobfox/sdk/video/VideoBridge$1;->val$data:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 27
    iget-object v0, p0, Lcom/mobfox/sdk/video/VideoBridge$1;->this$0:Lcom/mobfox/sdk/video/VideoBridge;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VideoBridge;->vv:Lcom/mobfox/sdk/video/VASTView;

    iget-object v1, p0, Lcom/mobfox/sdk/video/VideoBridge$1;->val$data:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VASTView;->playCreative(Ljava/lang/String;)V

    .line 28
    return-void
.end method
