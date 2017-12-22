.class public final enum Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;
.super Ljava/lang/Enum;
.source "LogBlobType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum MAINTENANCE_JOB:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum MDX_LOGBLOB_TYPE:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum NETWORK_DIAGNOSIS:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum OFFLINE_CDN_URL_DOWNLOAD:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

.field public static final enum OFFLINE_LOGBLOB_TYPE:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const-string/jumbo v1, "OFFLINE_CDN_URL_DOWNLOAD"

    const-string/jumbo v2, "offlinedlreport"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->OFFLINE_CDN_URL_DOWNLOAD:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const-string/jumbo v1, "OFFLINE_LOGBLOB_TYPE"

    const-string/jumbo v2, "offline"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->OFFLINE_LOGBLOB_TYPE:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const-string/jumbo v1, "MDX_LOGBLOB_TYPE"

    const-string/jumbo v2, "mdx"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->MDX_LOGBLOB_TYPE:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const-string/jumbo v1, "NETWORK_DIAGNOSIS"

    const-string/jumbo v2, "NetworkDiagnostics"

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->NETWORK_DIAGNOSIS:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 19
    new-instance v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    const-string/jumbo v1, "MAINTENANCE_JOB"

    const-string/jumbo v2, "maintenance"

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->MAINTENANCE_JOB:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    .line 14
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->OFFLINE_CDN_URL_DOWNLOAD:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->OFFLINE_LOGBLOB_TYPE:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->MDX_LOGBLOB_TYPE:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->NETWORK_DIAGNOSIS:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->MAINTENANCE_JOB:Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    aput-object v1, v0, v7

    sput-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->$VALUES:[Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 25
    iput-object p3, p0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->value:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;
    .locals 1

    .prologue
    .line 14
    const-class v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->$VALUES:[Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;

    return-object v0
.end method


# virtual methods
.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/netflix/mediaclient/service/logging/logblob/LogBlobType;->value:Ljava/lang/String;

    return-object v0
.end method
