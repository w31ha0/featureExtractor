.class public final Lcom/netflix/mediaclient/ui/rating/Ratings;
.super Ljava/lang/Object;
.source "Ratings.java"


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/netflix/model/leafs/Rating;

    invoke-static {v0}, Lcom/netflix/mediaclient/util/LogUtils;->getTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/ui/rating/Ratings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lcom/netflix/mediaclient/ui/rating/Ratings;->TAG:Ljava/lang/String;

    return-object v0
.end method
