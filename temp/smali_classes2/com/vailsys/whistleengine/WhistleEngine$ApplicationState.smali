.class final enum Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;
.super Ljava/lang/Enum;
.source "WhistleEngine.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

.field public static final enum BACKGROUND:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

.field public static final enum FOREGROUND:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

.field public static final enum UNKNOWN:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 586
    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v2}, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->UNKNOWN:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    .line 587
    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    const-string/jumbo v1, "BACKGROUND"

    invoke-direct {v0, v1, v3}, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->BACKGROUND:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    .line 588
    new-instance v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    const-string/jumbo v1, "FOREGROUND"

    invoke-direct {v0, v1, v4}, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->FOREGROUND:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    .line 584
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->UNKNOWN:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->BACKGROUND:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->FOREGROUND:Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    aput-object v1, v0, v4

    sput-object v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->$VALUES:[Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

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
    .line 584
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;
    .locals 1

    .prologue
    .line 584
    const-class v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    return-object v0
.end method

.method public static values()[Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;
    .locals 1

    .prologue
    .line 584
    sget-object v0, Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->$VALUES:[Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    invoke-virtual {v0}, [Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/vailsys/whistleengine/WhistleEngine$ApplicationState;

    return-object v0
.end method
