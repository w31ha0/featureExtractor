.class Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$3;
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
    .line 128
    iput-object p1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$3;->this$0:Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 131
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 132
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$3;->this$0:Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;

    invoke-static {v1}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->access$000(Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 133
    iget-object v1, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$3;->this$0:Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;

    invoke-virtual {v1, v0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->setAlpha(F)V

    .line 137
    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    .line 138
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$3;->this$0:Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;

    invoke-virtual {v0, v2}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->setVisibility(I)V

    .line 142
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$3;->this$0:Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 140
    iget-object v0, p0, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton$3;->this$0:Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/android/widget/NetflixAnimatedButton;->setVisibility(I)V

    goto :goto_0
.end method
