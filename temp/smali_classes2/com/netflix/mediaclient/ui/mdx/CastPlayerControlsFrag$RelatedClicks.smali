.class Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$RelatedClicks;
.super Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;
.source "CastPlayerControlsFrag.java"


# instance fields
.field final synthetic this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V
    .locals 0

    .prologue
    .line 307
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag$RelatedClicks;->this$0:Lcom/netflix/mediaclient/ui/mdx/CastPlayerControlsFrag;

    .line 308
    invoke-direct {p0, p2, p3}, Lcom/netflix/mediaclient/android/widget/VideoDetailsClickListener;-><init>(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/ui/common/PlayContextProvider;)V

    .line 309
    return-void
.end method


# virtual methods
.method protected launchDetailsActivity(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/Video;Lcom/netflix/mediaclient/ui/common/PlayContext;)V
    .locals 3

    .prologue
    .line 312
    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getType()Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;

    move-result-object v0

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/netflix/mediaclient/servicemgr/interface_/Video;->getTitle()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2, p3}, Lcom/netflix/mediaclient/ui/details/DetailsActivityLauncher;->showMemento(Lcom/netflix/mediaclient/android/activity/NetflixActivity;Lcom/netflix/mediaclient/servicemgr/interface_/VideoType;Ljava/lang/String;Ljava/lang/String;Lcom/netflix/mediaclient/ui/common/PlayContext;)V

    .line 313
    return-void
.end method
