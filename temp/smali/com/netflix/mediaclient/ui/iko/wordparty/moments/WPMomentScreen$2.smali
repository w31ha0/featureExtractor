.class Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WPMomentScreen.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

.field final synthetic val$card:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;)V
    .locals 0

    .prologue
    .line 488
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    iput-object p2, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$2;->val$card:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 491
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 495
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$2;->this$0:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen;->isMomentClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 500
    :goto_0
    return-void

    .line 499
    :cond_0
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPMomentScreen$2;->val$card:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout;->revealCard()V

    goto :goto_0
.end method
