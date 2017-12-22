.class Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$4;
.super Ljava/lang/Object;
.source "UserRatingButtonOverlay.java"

# interfaces
.implements Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$AnimationEndedCallback;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)V
    .locals 0

    .prologue
    .line 375
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$4;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnded()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 381
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$4;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 383
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$4;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$300(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Lcom/netflix/android/widgetry/widget/UserRatingButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getIconView()Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 385
    :cond_0
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$4;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1700(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 386
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$4;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1700(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;)Landroid/support/design/widget/CoordinatorLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$4;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/CoordinatorLayout;->removeView(Landroid/view/View;)V

    .line 387
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$4;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0, v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$1702(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;Landroid/support/design/widget/CoordinatorLayout;)Landroid/support/design/widget/CoordinatorLayout;

    .line 389
    :cond_1
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$4;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    invoke-static {v0, v2}, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;->access$302(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;Lcom/netflix/android/widgetry/widget/UserRatingButton;)Lcom/netflix/android/widgetry/widget/UserRatingButton;

    .line 390
    return-void
.end method
