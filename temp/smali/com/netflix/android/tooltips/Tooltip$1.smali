.class Lcom/netflix/android/tooltips/Tooltip$1;
.super Ljava/lang/Object;
.source "Tooltip.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/tooltips/Tooltip;


# direct methods
.method constructor <init>(Lcom/netflix/android/tooltips/Tooltip;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/netflix/android/tooltips/Tooltip$1;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/netflix/android/tooltips/Tooltip$1;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-static {v0}, Lcom/netflix/android/tooltips/Tooltip;->access$100(Lcom/netflix/android/tooltips/Tooltip;)Lcom/netflix/android/tooltips/TooltipLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/tooltips/Tooltip$1;->this$0:Lcom/netflix/android/tooltips/Tooltip;

    invoke-static {v1}, Lcom/netflix/android/tooltips/Tooltip;->access$000(Lcom/netflix/android/tooltips/Tooltip;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/netflix/android/tooltips/TooltipLayout;->dismiss(Landroid/view/ViewGroup;)V

    .line 122
    return-void
.end method
