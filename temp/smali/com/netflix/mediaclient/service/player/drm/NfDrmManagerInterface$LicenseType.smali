.class public final enum Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;
.super Ljava/lang/Enum;
.source "NfDrmManagerInterface.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

.field public static final enum LICENSE_TYPE_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

.field public static final enum LICENSE_TYPE_OFFLINE:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

.field public static final enum LICENSE_TYPE_STANDARD:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;


# instance fields
.field private description:Ljava/lang/String;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    const-string/jumbo v1, "LICENSE_TYPE_LDL"

    const-string/jumbo v2, "LDL"

    invoke-direct {v0, v1, v5, v3, v2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    const-string/jumbo v1, "LICENSE_TYPE_STANDARD"

    const-string/jumbo v2, "STANDARD"

    invoke-direct {v0, v1, v3, v4, v2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_STANDARD:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    const-string/jumbo v1, "LICENSE_TYPE_OFFLINE"

    const-string/jumbo v2, "OFFLINE"

    invoke-direct {v0, v1, v4, v6, v2}, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_OFFLINE:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    .line 10
    new-array v0, v6, [Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_LDL:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_STANDARD:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->LICENSE_TYPE_OFFLINE:Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->$VALUES:[Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 17
    iput p3, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->type:I

    .line 18
    iput-object p4, p0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->description:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;
    .locals 1

    .prologue
    .line 10
    const-class v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;
    .locals 1

    .prologue
    .line 10
    sget-object v0, Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->$VALUES:[Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/player/drm/NfDrmManagerInterface$LicenseType;

    return-object v0
.end method
