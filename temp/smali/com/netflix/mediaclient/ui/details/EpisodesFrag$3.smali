.class Lcom/netflix/mediaclient/ui/details/EpisodesFrag$3;
.super Ljava/lang/Object;
.source "EpisodesFrag.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/EpisodesFrag;)V
    .locals 0

    .prologue
    .line 578
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$3;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 581
    iget-object v1, p0, Lcom/netflix/mediaclient/ui/details/EpisodesFrag$3;->this$0:Lcom/netflix/mediaclient/ui/details/EpisodesFrag;

    const-wide/16 v2, 0x1

    cmp-long v0, p4, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, p3, v0}, Lcom/netflix/mediaclient/ui/details/EpisodesFrag;->switchSeason(IZ)V

    .line 582
    return-void

    .line 581
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 586
    const-string/jumbo v0, "EpisodesFrag"

    const-string/jumbo v1, "Season spinner - Nothing selected"

    invoke-static {v0, v1}, Lcom/netflix/mediaclient/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    return-void
.end method
