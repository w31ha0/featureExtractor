.class Landroid/support/transition/TransitionPort$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TransitionPort.java"


# instance fields
.field final synthetic this$0:Landroid/support/transition/TransitionPort;


# direct methods
.method constructor <init>(Landroid/support/transition/TransitionPort;)V
    .locals 0

    .prologue
    .line 947
    iput-object p1, p0, Landroid/support/transition/TransitionPort$2;->this$0:Landroid/support/transition/TransitionPort;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 950
    iget-object v0, p0, Landroid/support/transition/TransitionPort$2;->this$0:Landroid/support/transition/TransitionPort;

    invoke-virtual {v0}, Landroid/support/transition/TransitionPort;->end()V

    .line 951
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 952
    return-void
.end method
