.class Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$3;
.super Ljava/lang/Object;
.source "BarkerShowDetailsFrag.java"

# interfaces
.implements Lcom/netflix/mediaclient/ui/barker/details/BarkerSeasonsDialogAdapter$OnSeasonSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;)V
    .locals 0

    .prologue
    .line 404
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSeasonSelected(I)V
    .locals 2

    .prologue
    .line 407
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag$3;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerShowDetailsFrag;->switchSeason(IZ)V

    .line 408
    return-void
.end method
