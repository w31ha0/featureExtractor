.class public Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;
.super Lcom/netflix/mediaclient/service/player/manifest/NfManifest;
.source "CachedNfManifest.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field protected mManifestJsonString:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/netflix/mediaclient/service/player/manifest/NfManifest;-><init>(Ljava/lang/String;)V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    .line 28
    iput-object p1, p0, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;->mManifestJsonString:Ljava/lang/String;

    .line 29
    return-void
.end method


# virtual methods
.method public loadJSONObject()V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;->mManifestJsonString:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    .line 33
    return-void
.end method

.method public unloadJSONObject()V
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/netflix/mediaclient/service/player/manifest/CachedNfManifest;->manifestJSONObject:Lorg/json/JSONObject;

    .line 36
    return-void
.end method
