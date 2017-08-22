.class Lcom/mobfox/sdk/video/VASTView$9;
.super Ljava/lang/Object;
.source "VASTView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mobfox/sdk/video/VASTView;->playBtn(Landroid/content/Context;)Landroid/widget/Button;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mobfox/sdk/video/VASTView;

.field final synthetic val$play:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/mobfox/sdk/video/VASTView;Landroid/widget/Button;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mobfox/sdk/video/VASTView;

    .prologue
    .line 392
    iput-object p1, p0, Lcom/mobfox/sdk/video/VASTView$9;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iput-object p2, p0, Lcom/mobfox/sdk/video/VASTView$9;->val$play:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 395
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$9;->this$0:Lcom/mobfox/sdk/video/VASTView;

    invoke-virtual {v0}, Lcom/mobfox/sdk/video/VASTView;->startVideo()V

    .line 396
    iget-object v0, p0, Lcom/mobfox/sdk/video/VASTView$9;->this$0:Lcom/mobfox/sdk/video/VASTView;

    iget-object v0, v0, Lcom/mobfox/sdk/video/VASTView;->self:Lcom/mobfox/sdk/video/VASTView;

    iget-object v1, p0, Lcom/mobfox/sdk/video/VASTView$9;->val$play:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/mobfox/sdk/video/VASTView;->removeView(Landroid/view/View;)V

    .line 397
    return-void
.end method
