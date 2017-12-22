.class Landroid/support/transition/ChangeBoundsPort$1;
.super Landroid/support/transition/TransitionPort$TransitionListenerAdapter;
.source "ChangeBoundsPort.java"


# instance fields
.field mCanceled:Z

.field final synthetic this$0:Landroid/support/transition/ChangeBoundsPort;


# direct methods
.method constructor <init>(Landroid/support/transition/ChangeBoundsPort;)V
    .locals 1

    .prologue
    .line 198
    iput-object p1, p0, Landroid/support/transition/ChangeBoundsPort$1;->this$0:Landroid/support/transition/ChangeBoundsPort;

    invoke-direct {p0}, Landroid/support/transition/TransitionPort$TransitionListenerAdapter;-><init>()V

    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/ChangeBoundsPort$1;->mCanceled:Z

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroid/support/transition/TransitionPort;)V
    .locals 1

    .prologue
    .line 209
    iget-boolean v0, p0, Landroid/support/transition/ChangeBoundsPort$1;->mCanceled:Z

    if-nez v0, :cond_0

    .line 212
    :cond_0
    return-void
.end method

.method public onTransitionPause(Landroid/support/transition/TransitionPort;)V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public onTransitionResume(Landroid/support/transition/TransitionPort;)V
    .locals 0

    .prologue
    .line 222
    return-void
.end method
