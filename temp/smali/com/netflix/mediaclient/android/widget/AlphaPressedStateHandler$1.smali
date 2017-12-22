.class Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler$1;
.super Lcom/netflix/mediaclient/util/OnAnimationEndListener;
.source "AlphaPressedStateHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;)V
    .locals 0

    .prologue
    .line 23
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler$1;->this$0:Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/OnAnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler$1;->this$0:Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/AlphaPressedStateHandler;->notifyParentOfAnimationComplete()V

    .line 27
    return-void
.end method
