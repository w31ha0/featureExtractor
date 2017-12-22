.class Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$1;
.super Ljava/lang/Object;
.source "NetflixAnimatedButton.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;)V
    .locals 0

    .prologue
    .line 89
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$1;->this$0:Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$1;->this$0:Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 93
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$1;->this$0:Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->requestLayout()V

    .line 94
    return-void
.end method
