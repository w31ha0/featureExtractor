.class Lcom/netflix/android/tooltips/TooltipLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TooltipLayout.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/android/tooltips/TooltipLayout;

.field final synthetic val$group:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lcom/netflix/android/tooltips/TooltipLayout;Landroid/view/ViewGroup;)V
    .locals 0

    .prologue
    .line 208
    iput-object p1, p0, Lcom/netflix/android/tooltips/TooltipLayout$2;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    iput-object p2, p0, Lcom/netflix/android/tooltips/TooltipLayout$2;->val$group:Landroid/view/ViewGroup;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$2;->val$group:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/netflix/android/tooltips/TooltipLayout$2;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 212
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$2;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$300(Lcom/netflix/android/tooltips/TooltipLayout;)Lcom/netflix/android/tooltips/Tooltip$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 213
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$2;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$300(Lcom/netflix/android/tooltips/TooltipLayout;)Lcom/netflix/android/tooltips/Tooltip$Callback;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/netflix/android/tooltips/Tooltip$Callback;->onDismissed(Lcom/netflix/android/tooltips/Tooltip;)V

    .line 215
    :cond_0
    return-void
.end method
