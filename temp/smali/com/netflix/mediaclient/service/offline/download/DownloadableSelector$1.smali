.class final Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector$1;
.super Ljava/lang/Object;
.source "DownloadableSelector.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)I
    .locals 2

    .prologue
    .line 158
    invoke-virtual {p2}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->getValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;->getValue()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 155
    check-cast p1, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    check-cast p2, Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;

    invoke-virtual {p0, p1, p2}, Lcom/netflix/mediaclient/service/offline/download/DownloadableSelector$1;->compare(Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;Lcom/netflix/mediaclient/servicemgr/ISubtitleDef$SubtitleProfile;)I

    move-result v0

    return v0
.end method
