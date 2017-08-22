.class Lcom/mobfox/sdk/video/VASTView$3;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


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
    .line 148
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$3;->this$0:Lcom/mobfox/sdk/video/VASTView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    .line 150
    const-string v0, "MobFoxBanner"

    const-string v1, "video ended"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$3;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    const-string v1, "videoEnded"

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VASTView;->notifyJS(Ljava/lang/String;)V

    .line 153
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$3;->this$0:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/video/VASTView;->stopVideo()V

    .line 155
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$3;->this$0:Lcom/mobfox/sdk/video/VASTView;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/mobfox/sdk/video/VASTView;->finished:Z

    .line 156
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$3;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->tvTimer:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 158
    return-void
.end method
