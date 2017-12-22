.class Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener$1;
.super Ljava/lang/Object;
.source "PressedStateHandler.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

.field final synthetic val$v:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener$1;->this$0:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    iput-object p2, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener$1;->val$v:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPressedAnimationComplete()V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener$1;->this$0:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->access$000(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;)Lcom/netflix/mediaclient/android/widget/PressedStateHandler;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler;->access$102(Lcom/netflix/mediaclient/android/widget/PressedStateHandler;Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;)Lcom/netflix/mediaclient/android/widget/PressedStateHandler$Listener;

    .line 129
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener$1;->val$v:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/util/AndroidUtils;->isActivityFinishedOrDestroyed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const-string/jumbo v0, "PressedStateHandler"

    const-string/jumbo v1, "Activity is dead - skipping onClick callback"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener$1;->this$0:Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;

    invoke-static {v0}, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;->access$200(Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener;)Landroid/view/View$OnClickListener;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/PressedStateHandler$DelayedOnClickListener$1;->val$v:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    goto :goto_0
.end method
