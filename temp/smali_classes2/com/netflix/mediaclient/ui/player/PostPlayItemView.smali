.class public abstract Lcom/netflix/mediaclient/ui/player/PostPlayItemView;
.super Landroid/widget/LinearLayout;
.source "PostPlayItemView.java"


# static fields
.field private static final FADE_DURATION_MS:J = 0x12cL


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 21
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method


# virtual methods
.method protected abstract findViews()V
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 63
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 64
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->findViews()V

    .line 65
    return-void
.end method

.method public onTick(I)V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method final startPostPlay(I)V
    .locals 4

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->setAlpha(F)V

    .line 35
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 36
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->startTimer(I)V

    .line 38
    return-void
.end method

.method protected abstract startTimer(I)V
.end method

.method final stopPostPlay()V
    .locals 4

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/netflix/mediaclient/ui/player/PostPlayItemView$1;

    invoke-direct {v1, p0}, Lcom/netflix/mediaclient/ui/player/PostPlayItemView$1;-><init>(Lcom/netflix/mediaclient/ui/player/PostPlayItemView;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x12c

    .line 50
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 51
    return-void
.end method

.method protected abstract stopTimer()V
.end method

.method public abstract updateViews(Lcom/netflix/model/leafs/PostPlayItem;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/player/PlayerFragment;Lcom/netflix/mediaclient/ui/player/PostPlayRequestContext;Landroid/view/View$OnClickListener;)V
.end method
