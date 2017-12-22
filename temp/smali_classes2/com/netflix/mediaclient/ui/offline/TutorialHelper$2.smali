.class Lcom/netflix/mediaclient/ui/offline/TutorialHelper$2;
.super Ljava/lang/Object;
.source "TutorialHelper.java"

# interfaces
.implements Lcom/netflix/android/tooltips/Tooltip$Callback;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 96
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$2;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/netflix/android/tooltips/Tooltip;)V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$2;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 105
    return-void
.end method

.method public onShown(Lcom/netflix/android/tooltips/Tooltip;)V
    .locals 0

    .prologue
    .line 100
    return-void
.end method
