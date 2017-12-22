.class Lcom/netflix/android/tooltips/TooltipLayout$3;
.super Ljava/lang/Object;
.source "TooltipLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/tooltips/TooltipLayout;


# direct methods
.method constructor <init>(Lcom/netflix/android/tooltips/TooltipLayout;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/netflix/android/tooltips/TooltipLayout$3;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$3;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$400(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/netflix/android/tooltips/TooltipLayout$3;->this$0:Lcom/netflix/android/tooltips/TooltipLayout;

    invoke-static {v0}, Lcom/netflix/android/tooltips/TooltipLayout;->access$400(Lcom/netflix/android/tooltips/TooltipLayout;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 237
    :cond_0
    return-void
.end method
