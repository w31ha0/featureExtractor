.class public abstract Lcom/netflix/mediaclient/android/widget/PressedStateHandler;
.super Ljava/lang/Object;
.source "PressedStateHandler.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "PressedStateHandler"


# instance fields
.field private enabled:Z

.field private isAnimating:Z

.field private listener:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;

.field private pressed:Z

.field private final view:Landroid/view/View;


# direct methods
.method protected constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->enabled:Z

    .line 31
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->view:Landroid/view/View;

    .line 32
    return-void
.end method

.method static synthetic access$102(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;)Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;
    .locals 0

    .prologue
    .line 16
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->listener:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;

    return-object p1
.end method

.method static synthetic access$300(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->setCompletionCallback(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;)V

    return-void
.end method

.method private setCompletionCallback(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;)V
    .locals 0

    .prologue
    .line 82
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->listener:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;

    .line 83
    return-void
.end method


# virtual methods
.method protected abstract handlePressCancelled(Landroid/view/View;)V
.end method

.method protected abstract handlePressComplete(Landroid/view/View;)V
.end method

.method protected abstract handlePressStarted(Landroid/view/View;)V
.end method

.method public handleSetPressed(Z)V
    .locals 1

    .prologue
    .line 38
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->enabled:Z

    if-nez v0, :cond_0

    .line 60
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->pressed:Z

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->handlePressComplete(Landroid/view/View;)V

    .line 59
    :goto_1
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->pressed:Z

    goto :goto_0

    .line 50
    :cond_1
    if-eqz p1, :cond_2

    .line 51
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->isAnimating:Z

    .line 52
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->handlePressStarted(Landroid/view/View;)V

    goto :goto_1

    .line 55
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->view:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->handlePressCancelled(Landroid/view/View;)V

    goto :goto_1
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 86
    iget-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->isAnimating:Z

    return v0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 97
    return-void
.end method

.method protected notifyParentOfAnimationComplete()V
    .locals 2

    .prologue
    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->isAnimating:Z

    .line 73
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 75
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->listener:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;

    if-eqz v0, :cond_0

    .line 76
    const-string/jumbo v0, "Notifying listener of pressed animation complete"

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->log(Ljava/lang/String;)V

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->listener:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;

    invoke-interface {v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;->onPressedAnimationComplete()V

    .line 79
    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .prologue
    .line 63
    iput-boolean p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->enabled:Z

    .line 64
    return-void
.end method
