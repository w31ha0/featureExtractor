.class Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$1;
.super Ljava/lang/Object;
.source "BarkerKidsShowDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createItemView()Landroid/view/View;
    .locals 4

    .prologue
    .line 104
    new-instance v0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsEpisodeView;

    iget-object v1, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;

    iget-object v2, p0, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$1;->this$0:Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;

    invoke-virtual {v2}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f03007d

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag$BarkerKidsEpisodeView;-><init>(Lcom/netflix/mediaclient/ui/barker_kids/details/BarkerKidsShowDetailsFrag;Landroid/content/Context;I)V

    return-object v0
.end method
