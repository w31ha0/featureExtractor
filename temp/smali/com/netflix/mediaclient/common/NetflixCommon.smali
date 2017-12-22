.class public final Lcom/netflix/mediaclient/common/NetflixCommon;
.super Ljava/lang/Object;
.source "NetflixCommon.java"


# static fields
.field private static final DEBUG_FEATURE_PREFS_NAME:Ljava/lang/String; = "NetflixCommon.debug"

.field private static final TAG:Ljava/lang/String; = "NetflixCommon"

.field public static final debug:Z

.field private static sHost:Lcom/netflix/mediaclient/common/NetflixCommon$Host;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    sput-object v0, Lcom/netflix/mediaclient/common/NetflixCommon;->sHost:Lcom/netflix/mediaclient/common/NetflixCommon$Host;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getHost()Lcom/netflix/mediaclient/common/NetflixCommon$Host;
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/netflix/mediaclient/common/NetflixCommon;->sHost:Lcom/netflix/mediaclient/common/NetflixCommon$Host;

    return-object v0
.end method

.method public static initWith(Landroid/app/Application;Lcom/netflix/mediaclient/common/NetflixCommon$Host;)V
    .locals 4

    .prologue
    .line 43
    sput-object p1, Lcom/netflix/mediaclient/common/NetflixCommon;->sHost:Lcom/netflix/mediaclient/common/NetflixCommon$Host;

    .line 44
    const-string/jumbo v0, "NetflixCommon"

    const-string/jumbo v1, "Initialized with %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v0, v1, v2}, Lcom/netflix/mediaclient/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 45
    return-void
.end method

.method public static isDebugFeatureEnabled(Landroid/content/Context;I)Z
    .locals 1

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public static setDebugFeatureEnabled(Landroid/content/Context;IZ)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method
