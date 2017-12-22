.class public final enum Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;
.super Ljava/lang/Enum;
.source "OfflineRegistry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

.field public static final enum CHECKSUM_ERROR:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

.field public static final enum NOT_READY:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

.field public static final enum STORAGE_ERROR:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

.field public static final enum SUCCESS:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    const-string/jumbo v1, "NOT_READY"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->NOT_READY:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    .line 61
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    const-string/jumbo v1, "SUCCESS"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->SUCCESS:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    .line 62
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    const-string/jumbo v1, "CHECKSUM_ERROR"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->CHECKSUM_ERROR:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    .line 63
    new-instance v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    const-string/jumbo v1, "STORAGE_ERROR"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->STORAGE_ERROR:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    .line 59
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->NOT_READY:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->SUCCESS:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->CHECKSUM_ERROR:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->STORAGE_ERROR:Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->$VALUES:[Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 59
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;
    .locals 1

    .prologue
    .line 59
    sget-object v0, Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->$VALUES:[Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/offline/registry/OfflineRegistry$RegistryState;

    return-object v0
.end method
