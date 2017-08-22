.class Lcom/mobfox/sdk/video/VASTView$15;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/video/VASTView;->muteBtn(Landroid/content/Context;)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/video/VASTView;

.field final synthetic val$mute:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VASTView;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 478
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$15;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iput-object p2, p0, Lcom/mobfox/sdk/video/VASTView$15;->val$mute:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$15;->val$mute:Landroid/widget/Button;

    invoke-virtual {v0}, Landroid/widget/Button;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$15;->val$mute:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setActivated(Z)V

    .line 483
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$15;->this$0:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/video/VASTView;->unmute()V

    .line 484
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$15;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    const-string v1, "videoUnmute"

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VASTView;->notifyJS(Ljava/lang/String;)V

    .line 491
    :goto_0
    return-void

    .line 487
    :cond_0
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$15;->val$mute:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setActivated(Z)V

    .line 488
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$15;->this$0:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/video/VASTView;->mute()V

    .line 489
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$15;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    const-string v1, "videoMute"

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VASTView;->notifyJS(Ljava/lang/String;)V

    goto :goto_0
.end method
