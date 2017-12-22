.class Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Location;
.super Ljava/lang/Object;
.source "Location.java"


# instance fields
.field public level:Ljava/lang/Integer;

.field public locid:Ljava/lang/String;

.field public rank:I

.field public weight:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/Integer;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Location;->locid:Ljava/lang/String;

    .line 16
    iput p2, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Location;->rank:I

    .line 17
    iput p3, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Location;->weight:I

    .line 18
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/nrdpplayback/playbackreporter/Location;->level:Ljava/lang/Integer;

    .line 19
    return-void
.end method
