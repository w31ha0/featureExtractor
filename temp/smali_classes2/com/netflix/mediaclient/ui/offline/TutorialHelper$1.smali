.class Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "TutorialHelper.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic val$tutor:Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V
    .locals 0

    .prologue
    .line 73
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;->val$tutor:Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 3

    .prologue
    .line 76
    if-nez p2, :cond_0

    .line 77
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 79
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    .line 80
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;->val$tutor:Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->access$000(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V

    .line 81
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$1;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    invoke-virtual {v2}, Lcom/netflix/android/tooltips/Tooltip;->getTarget()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->access$100(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    .line 85
    :cond_0
    return-void
.end method
