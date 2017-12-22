.class public Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsLoLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;
.source "BarkerKidsLoLoMoAdapter.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;)V

    .line 21
    return-void
.end method

.method static updateTitleStyle(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 31
    const v0, 0x7f0f0091

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewColor(Landroid/widget/TextView;I)V

    .line 32
    const v0, 0x7f0a0047

    invoke-static {p0, v0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewSizeByRes(Landroid/widget/TextView;I)V

    .line 33
    invoke-static {p0}, Lcom/netflix/mediaclient/util/ViewUtils;->setTextViewToBold(Landroid/widget/TextView;)V

    .line 35
    invoke-static {p0}, Lcom/netflix/mediaclient/ui/user_theme/ThemeUtils;->setTextColorIfApplicable(Landroid/widget/TextView;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected initTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/LoLoMoAdapter;->initTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 26
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsLoLoMoAdapter;->updateTitleStyle(Landroid/widget/TextView;)V

    .line 27
    return-object v0
.end method
