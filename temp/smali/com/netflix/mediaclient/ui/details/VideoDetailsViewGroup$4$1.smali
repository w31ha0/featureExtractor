.class Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4$1;
.super Lcom/netflix/mediaclient/ui/rating/Ratings$ThumbRatingWithCLCallback;
.source "VideoDetailsViewGroup.java"


# instance fields
.field final synthetic this$1:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;


# direct methods
.method constructor <init>(Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V
    .locals 0

    .prologue
    .line 593
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4$1;->this$1:Lcom/netflix/mediaclient/ui/details/VideoDetailsViewGroup$4;

    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/ui/rating/Ratings$ThumbRatingWithCLCallback;-><init>(Ljava/lang/String;Lcom/netflix/mediaclient/servicemgr/interface_/details/VideoDetails;)V

    return-void
.end method


# virtual methods
.method protected onThumbRatingError(Lcom/netflix/mediaclient/android/app/Status;)V
    .locals 0

    .prologue
    .line 600
    return-void
.end method

.method protected onThumbRatingSet(Lcom/netflix/mediaclient/servicemgr/interface_/RatingInfo;)V
    .locals 0

    .prologue
    .line 596
    return-void
.end method
