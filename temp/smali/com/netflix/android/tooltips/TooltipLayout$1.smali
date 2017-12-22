.class Lcom/netflix/android/tooltips/TooltipLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TooltipLayout.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/android/tooltips/TooltipLayout;


# direct methods
.method constructor <init>(Lcom/netflix/android/tooltips/TooltipLayout;)V
    .locals 0

    .prologue
    .line 182
    iput-object p1, p0, Lcom/netflix/android/tooltips/TooltipLayout$1;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 185
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$1;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0, v1}, Lcom/netflix/android/tooltips/TooltipLayout;->access$202(Lcom/netflix/android/tooltips/TooltipLayout;Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    .line 186
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$1;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$300(Lcom/netflix/android/tooltips/TooltipLayout;)Lcom/netflix/android/tooltips/Tooltip$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$1;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$300(Lcom/netflix/android/tooltips/TooltipLayout;)Lcom/netflix/android/tooltips/Tooltip$Callback;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/netflix/android/tooltips/Tooltip$Callback;->onShown(Lcom/netflix/android/tooltips/Tooltip;)V

    .line 189
    :cond_0
    return-void
.end method
