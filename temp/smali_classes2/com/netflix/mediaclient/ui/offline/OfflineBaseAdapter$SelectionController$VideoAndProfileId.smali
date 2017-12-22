.class Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController$VideoAndProfileId;
.super Ljava/lang/Object;
.source "OfflineBaseAdapter.java"


# instance fields
.field public profileId:Ljava/lang/String;

.field final synthetic this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

.field public videoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 70
    iput-object p1, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController$VideoAndProfileId;->this$1:Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p2, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController$VideoAndProfileId;->videoId:Ljava/lang/String;

    .line 72
    iput-object p3, p0, Lcom/netflix/mediaclient/ui/offline/OfflineBaseAdapter$SelectionController$VideoAndProfileId;->profileId:Ljava/lang/String;

    .line 73
    return-void
.end method
