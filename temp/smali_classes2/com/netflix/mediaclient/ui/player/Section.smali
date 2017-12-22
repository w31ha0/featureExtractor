.class public abstract Lcom/netflix/mediaclient/ui/player/Section;
.super Ljava/lang/Object;
.source "Section.java"


# static fields
.field protected static final DISABLED_ALPHA:F = 0.3f


# instance fields
.field protected activity:Landroid/app/Activity;

.field protected transpColor:I


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/netflix/mediaclient/ui/player/Section;->transpColor:I

    .line 40
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/player/Section;->activity:Landroid/app/Activity;

    .line 41
    return-void
.end method


# virtual methods
.method protected animateView(Landroid/view/View;FF)V
    .locals 2

    .prologue
    .line 107
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p2, p3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 108
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 109
    invoke-virtual {p1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    return-void
.end method

.method public abstract changeActionState(Z)V
.end method

.method public abstract destroy()V
.end method

.method protected enableButton(Landroid/view/MenuItem;Z)V
    .locals 0

    .prologue
    .line 85
    if-eqz p1, :cond_0

    .line 86
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 88
    :cond_0
    return-void
.end method

.method protected enableButton(Landroid/view/View;Z)V
    .locals 1

    .prologue
    .line 73
    invoke-static {p1}, Lcom/netflix/mediaclient/util/ViewUtils;->isVisible(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 75
    if-eqz p2, :cond_1

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->clearAnimation()V

    .line 81
    :cond_0
    :goto_0
    return-void

    .line 78
    :cond_1
    invoke-virtual {p0, p1}, Lcom/netflix/mediaclient/ui/player/Section;->setDisableOverlayForImageButton(Landroid/view/View;)V

    goto :goto_0
.end method

.method public abstract hide()V
.end method

.method protected setDisableOverlayForImageButton(Landroid/view/View;)V
    .locals 1

    .prologue
    const v0, 0x3e99999a    # 0.3f

    .line 96
    invoke-virtual {p0, p1, v0, v0}, Lcom/netflix/mediaclient/ui/player/Section;->animateView(Landroid/view/View;FF)V

    .line 97
    return-void
.end method

.method public abstract show()V
.end method

.method protected updateText(Ljava/lang/String;Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 121
    if-eqz p2, :cond_0

    .line 125
    invoke-virtual {p2, p4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    const-string/jumbo v0, "View is null!"

    invoke-static {p1, v0}, Lcom/netflix/mediaclient/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
