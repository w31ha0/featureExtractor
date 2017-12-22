.class public Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter;
.super Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;
.source "BarkerMovieDetailsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;ZI)V
    .locals 1

    .prologue
    .line 400
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter;->this$0:Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;

    .line 401
    new-instance v0, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;

    invoke-direct {v0, p1}, Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag$BarkerSimilarItemsGridViewAdapter$1;-><init>(Lcom/netflix/mediaclient/ui/barker/details/BarkerMovieDetailsFrag;)V

    invoke-direct {p0, p2, p3, v0}, Lcom/netflix/mediaclient/ui/common/SimilarItemsGridViewAdapter;-><init>(ZILcom/netflix/mediaclient/android/widget/RecyclerViewHeaderAdapter$IViewCreator;)V

    .line 428
    return-void
.end method
