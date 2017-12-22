.class Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$StartAnimationCompleteListener;
.super Lcom/netflix/mediaclient/util/OnAnimationEndListener;
.source "ScalePressedStateHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$StartAnimationCompleteListener;->this$0:Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/OnAnimationEndListener;-><init>()V

    .line 50
    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$StartAnimationCompleteListener;->view:Landroid/view/View;

    .line 51
    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 55
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$StartAnimationCompleteListener;->this$0:Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->access$000(Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$StartAnimationCompleteListener;->this$0:Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$StartAnimationCompleteListener;->view:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->access$100(Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;Landroid/view/View;)V

    .line 61
    :goto_0
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler$StartAnimationCompleteListener;->this$0:Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;->access$002(Lcom/netflix/mediaclient/android/widget/ScalePressedStateHandler;Z)Z

    goto :goto_0
.end method
