.class public Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;
.super Ljava/lang/Object;
.source "OfflineAdapterData.java"


# instance fields
.field public final numEpisodes:I

.field public final type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

.field public final video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;


# direct methods
.method public constructor <init>(Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmProfile;Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;I)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->type:Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$ViewType;

    .line 42
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->video:Lcom/netflix/mediaclient/servicemgr/interface_/offline/realm/RealmVideoDetails;

    .line 43
    iput p4, p0, Lcom/netflix/mediaclient/servicemgr/interface_/offline/OfflineAdapterData$VideoAndProfileData;->numEpisodes:I

    .line 44
    return-void
.end method
