.class Lcom/netflix/mediaclient/ui/offline/TutorialHelper$3;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "TutorialHelper.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$3;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 1

    .prologue
    .line 117
    if-nez p2, :cond_0

    .line 118
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$3;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 119
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$3;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    invoke-virtual {v0}, Lcom/netflix/android/tooltips/Tooltip;->show()V

    .line 121
    :cond_0
    return-void
.end method
