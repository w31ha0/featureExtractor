.class Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$2;
.super Ljava/lang/Object;
.source "BarkerMovieDetailsFrag.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)V
    .locals 0

    .prologue
    .line 319
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$2;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    invoke-virtual {v0}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/netflix/mediaclient/ui/details/DetailsActivity;->finishAllDetailsActivities(Landroid/content/Context;)V

    .line 324
    return-void
.end method
