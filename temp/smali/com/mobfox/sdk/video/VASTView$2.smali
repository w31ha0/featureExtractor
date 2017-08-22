.class Lcom/mobfox/sdk/video/VASTView$2;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/video/VASTView;->init(Landroid/content/Context;Landroid/webkit/WebView;Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/video/VASTView;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VASTView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$2;->this$0:Lcom/mobfox/sdk/video/VASTView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$2;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    iput-object p1, v0, Lcom/mobfox/sdk/video/VASTView;->mp:Landroid/media/MediaPlayer;

    .line 135
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$2;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-boolean v0, v0, Lcom/mobfox/sdk/video/VASTView;->videoStarted:Z

    if-eqz v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$2;->this$0:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/video/VASTView;->startVideo()V

    .line 137
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$2;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->mute:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$2;->this$0:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/video/VASTView;->mute()V

    .line 143
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$2;->this$0:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/video/VASTView;->unmute()V

    goto :goto_0
.end method
