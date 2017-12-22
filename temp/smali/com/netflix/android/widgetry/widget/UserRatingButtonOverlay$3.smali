.class Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$3;
.super Ljava/lang/Object;
.source "UserRatingButtonOverlay.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

.field final synthetic val$onRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;


# direct methods
.method constructor <init>(Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;)V
    .locals 0

    .prologue
    .line 185
    iput-object p1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$3;->this$0:Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay;

    iput-object p2, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$3;->val$onRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lcom/netflix/android/widgetry/widget/UserRatingButtonOverlay$3;->val$onRateListener:Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-interface {v1, v0}, Lcom/netflix/android/widgetry/widget/UserRatingButton$OnRateListener;->onAlphaAnimate(F)V

    .line 189
    return-void
.end method
