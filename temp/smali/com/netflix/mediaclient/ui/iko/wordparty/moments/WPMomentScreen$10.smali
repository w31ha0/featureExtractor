.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;
.super Ljava/lang/Object;
.source "WPMomentScreen.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

.field final synthetic val$cardAnimator:Landroid/animation/ObjectAnimator;

.field final synthetic val$cardIndex:I

.field final synthetic val$color:I

.field final synthetic val$open:Z

.field final synthetic val$panelView:Landroid/view/View;

.field final synthetic val$size:I


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;ZLandroid/view/View;IIILandroid/animation/ObjectAnimator;)V
    .locals 0

    .prologue
    .line 1193
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iput-boolean p2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$open:Z

    iput-object p3, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$panelView:Landroid/view/View;

    iput p4, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$color:I

    iput p5, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$cardIndex:I

    iput p6, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$size:I

    iput-object p7, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$cardAnimator:Landroid/animation/ObjectAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .prologue
    .line 1196
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_1

    .line 1197
    iget-boolean v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$open:Z

    if-eqz v0, :cond_2

    .line 1198
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$panelView:Landroid/view/View;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v1}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$1300(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 1202
    :goto_0
    iget v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$cardIndex:I

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$size:I

    div-int/lit8 v1, v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1203
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->access$100(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;)Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPInteractiveMomentsManager;->playPanelShuffleSound()V

    .line 1205
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$cardAnimator:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0, p0}, Landroid/animation/ObjectAnimator;->removeUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 1207
    :cond_1
    return-void

    .line 1200
    :cond_2
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$panelView:Landroid/view/View;

    iget v1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$10;->val$color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0
.end method
