.class public final enum Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;
.super Ljava/lang/Enum;
.source "WhistleEngineConfig.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

.field public static final enum TLS:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

.field public static final enum UDP:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    const-string/jumbo v1, "UDP"

    invoke-direct {v0, v1, v2}, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;->UDP:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    .line 300
    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    const-string/jumbo v1, "TLS"

    invoke-direct {v0, v1, v3}, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;->TLS:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    .line 290
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;->UDP:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;->TLS:Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;->$VALUES:[Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

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
    .line 290
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;
    .locals 1

    .prologue
    .line 290
    const-class v0, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    return-object v0
.end method

.method public static values()[Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;
    .locals 1

    .prologue
    .line 290
    sget-object v0, Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;->$VALUES:[Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    invoke-virtual {v0}, [Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vailsys/whistleengine/WhistleEngineConfig$TransportMode;

    return-object v0
.end method
