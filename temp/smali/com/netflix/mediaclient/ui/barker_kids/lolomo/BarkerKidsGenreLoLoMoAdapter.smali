.class public Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsGenreLoLoMoAdapter;
.super Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;
.source "BarkerKidsGenreLoLoMoAdapter.java"


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;Z)V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;-><init>(Lcom/netflix/mediaclient/ui/lolomo/LoLoMoFrag;Ljava/lang/String;)V

    .line 13
    return-void
.end method


# virtual methods
.method protected initTitleView(Landroid/view/View;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 17
    invoke-super {p0, p1}, Lcom/netflix/mediaclient/ui/lolomo/GenreLoLoMoAdapter;->initTitleView(Landroid/view/View;)Landroid/widget/TextView;

    move-result-object v0

    .line 18
    invoke-static {v0}, Lcom/netflix/mediaclient/ui/barker_kids/lolomo/BarkerKidsLoLoMoAdapter;->updateTitleStyle(Landroid/widget/TextView;)V

    .line 19
    return-object v0
.end method
