.class public Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag_Ab7994;
.super Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;
.source "ShowDetailsFrag_Ab7994.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag;-><init>()V

    return-void
.end method

.method public static create(Ljava/lang/String;Ljava/lang/String;)Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag_Ab7994;
    .locals 3

    .prologue
    .line 11
    new-instance v0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag_Ab7994;

    invoke-direct {v0}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag_Ab7994;-><init>()V

    .line 13
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    const-string/jumbo v2, "extra_video_id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string/jumbo v2, "extra_episode_id"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag_Ab7994;->setArguments(Landroid/os/Bundle;)V

    .line 18
    return-object v0
.end method


# virtual methods
.method protected getLayoutId()I
    .locals 1

    .prologue
    .line 23
    const v0, 0x7f03011b

    return v0
.end method

.method protected initDetailsViewGroup(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 28
    const v0, 0x7f1003c6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup_Ab7994;

    iput-object v0, p0, Lcom/netflix/mediaclient/ui/details/ShowDetailsFrag_Ab7994;->detailsViewGroup:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup;

    .line 29
    return-void
.end method
