.class Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/facebook/widget/LikeView;


# direct methods
.method private constructor <init>(Lcom/facebook/widget/LikeView;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/widget/LikeView;Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;)V
    .locals 0

    .prologue
    .line 656
    invoke-direct {p0, p1}, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;-><init>(Lcom/facebook/widget/LikeView;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    .line 659
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 660
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    .line 662
    if-eqz v2, :cond_0

    .line 664
    const-string v3, "com.facebook.sdk.LikeActionController.OBJECT_ID"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 665
    invoke-static {v3}, Lcom/facebook/internal/Utility;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 666
    iget-object v4, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    invoke-static {v4}, Lcom/facebook/widget/LikeView;->access$0(Lcom/facebook/widget/LikeView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/facebook/internal/Utility;->areObjectsEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 665
    const/4 v0, 0x0

    .line 669
    :cond_0
    if-nez v0, :cond_2

    .line 684
    :cond_1
    :goto_0
    return-void

    .line 673
    :cond_2
    const-string v0, "com.facebook.sdk.LikeActionController.UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 674
    iget-object v0, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    invoke-static {v0}, Lcom/facebook/widget/LikeView;->access$1(Lcom/facebook/widget/LikeView;)V

    goto :goto_0

    .line 675
    :cond_3
    const-string v0, "com.facebook.sdk.LikeActionController.DID_ERROR"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 676
    iget-object v0, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    invoke-static {v0}, Lcom/facebook/widget/LikeView;->access$2(Lcom/facebook/widget/LikeView;)Lcom/facebook/widget/LikeView$OnErrorListener;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 677
    iget-object v0, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    invoke-static {v0}, Lcom/facebook/widget/LikeView;->access$2(Lcom/facebook/widget/LikeView;)Lcom/facebook/widget/LikeView$OnErrorListener;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/facebook/widget/LikeView$OnErrorListener;->onError(Landroid/os/Bundle;)V

    goto :goto_0

    .line 679
    :cond_4
    const-string v0, "com.facebook.sdk.LikeActionController.DID_RESET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    iget-object v1, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    invoke-static {v1}, Lcom/facebook/widget/LikeView;->access$0(Lcom/facebook/widget/LikeView;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/facebook/widget/LikeView;->access$3(Lcom/facebook/widget/LikeView;Ljava/lang/String;)V

    .line 682
    iget-object v0, p0, Lcom/facebook/widget/LikeView$LikeControllerBroadcastReceiver;->this$0:Lcom/facebook/widget/LikeView;

    invoke-static {v0}, Lcom/facebook/widget/LikeView;->access$1(Lcom/facebook/widget/LikeView;)V

    goto :goto_0
.end method
