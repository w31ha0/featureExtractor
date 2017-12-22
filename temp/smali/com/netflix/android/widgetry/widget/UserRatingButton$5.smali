.class Lcom/netflix/android/widgetry/widget/UserRatingButton$5;
.super Ljava/lang/Object;
.source "UserRatingButton.java"

# interfaces
.implements Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

.field final synthetic val$onRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButton;Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;)V
    .locals 0

    .prologue
    .line 374
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$5;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    iput-object p2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$5;->val$onRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAlphaAnimate(F)V
    .locals 1

    .prologue
    .line 394
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$5;->val$onRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    invoke-interface {v0, p1}, Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;->onAlphaAnimate(F)V

    .line 395
    return-void
.end method

.method public onDismissed(Lcom/netflix/android/widgetry/widget/UserRatingButton;)V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$5;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButton;

    invoke-virtual {v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 389
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$5;->val$onRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    invoke-interface {v0, p1}, Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;->onDismissed(Lcom/netflix/android/widgetry/widget/UserRatingButton;)V

    .line 390
    return-void
.end method

.method public onOpened(Lcom/netflix/android/widgetry/widget/UserRatingButton;Z)V
    .locals 1

    .prologue
    .line 378
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$5;->val$onRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;->onOpened(Lcom/netflix/android/widgetry/widget/UserRatingButton;Z)V

    .line 379
    return-void
.end method

.method public onRate(Lcom/netflix/android/widgetry/widget/UserRatingButton;I)V
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/netflix/android/widgetry/widget/UserRatingButton$5;->val$onRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    invoke-interface {v0, p1, p2}, Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;->onRate(Lcom/netflix/android/widgetry/widget/UserRatingButton;I)V

    .line 384
    return-void
.end method
