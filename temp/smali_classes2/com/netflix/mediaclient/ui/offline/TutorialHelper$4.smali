.class Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;
.super Ljava/lang/Object;
.source "TutorialHelper.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

.field final synthetic val$recyclerView:Landroid/support/v7/widget/RecyclerView;

.field final synthetic val$tutor:Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->val$tutor:Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .locals 3

    .prologue
    .line 151
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 154
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->val$tutor:Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->access$000(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V

    .line 155
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->val$tutor:Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->access$200(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;Lcom/netflix/mediaclient/ui/offline/TutorialHelper$Tutorialable;)V

    .line 160
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->val$recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/offline/TutorialHelper$4;->this$0:Lcom/netflix/mediaclient/ui/offline/TutorialHelper;

    iget-object v2, v2, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->tooltip:Lcom/netflix/android/tooltips/Tooltip;

    invoke-virtual {v2}, Lcom/netflix/android/tooltips/Tooltip;->getTarget()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/ui/offline/TutorialHelper;->access$100(Lcom/netflix/mediaclient/ui/offline/TutorialHelper;Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)V

    goto :goto_0
.end method
