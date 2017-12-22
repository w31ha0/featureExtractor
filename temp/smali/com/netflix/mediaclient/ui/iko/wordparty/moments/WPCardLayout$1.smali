.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$1;
.super Ljava/lang/Object;
.source "WPCardLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

.field final synthetic val$cardAnimator:Landroid/animation/ObjectAnimator;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;Landroid/animation/ObjectAnimator;)V
    .locals 0

    .prologue
    .line 142
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$1;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$1;->val$cardAnimator:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$1;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->toggleCardClosed()V

    .line 147
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$1;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    iget-object v0, v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->imageView:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardImageView;->updateDrawableBitmap()V

    .line 148
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$1;->val$cardAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 150
    :cond_0
    return-void
.end method
