.class Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler$1;
.super Lcom/netflix/mediaclient/util/OnAnimationEndListener;
.source "RipplePressedStateHandler.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;)V
    .locals 0

    .prologue
    .line 34
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler$1;->this$0:Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;

    invoke-direct {p0}, Lcom/netflix/mediaclient/util/OnAnimationEndListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler$1;->this$0:Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/RipplePressedStateHandler;->notifyParentOfAnimationComplete()V

    .line 38
    return-void
.end method
