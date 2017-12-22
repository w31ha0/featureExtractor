.class public final enum Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;
.super Ljava/lang/Enum;
.source "IASPlayer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

.field public static final enum CLOSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

.field public static final enum OPENING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

.field public static final enum PAUSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

.field public static final enum PLAYING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

.field public static final enum STOPPED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    const-string/jumbo v1, "OPENING"

    invoke-direct {v0, v1, v4, v4}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->OPENING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    const-string/jumbo v1, "PLAYING"

    invoke-direct {v0, v1, v5, v5}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->PLAYING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    .line 15
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    const-string/jumbo v1, "PAUSED"

    invoke-direct {v0, v1, v6, v6}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->PAUSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    const-string/jumbo v1, "STOPPED"

    invoke-direct {v0, v1, v7, v7}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->STOPPED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    const-string/jumbo v1, "CLOSED"

    invoke-direct {v0, v1, v8, v8}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->CLOSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    const-string/jumbo v1, "UNKNOWN"

    const/4 v2, 0x5

    const/16 v3, 0x63

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->UNKNOWN:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    .line 12
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->OPENING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->PLAYING:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->PAUSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->STOPPED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->CLOSED:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->UNKNOWN:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->$VALUES:[Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 21
    iput p3, p0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->value:I

    .line 22
    return-void
.end method

.method public static getState(I)Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;
    .locals 5

    .prologue
    .line 28
    invoke-static {}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->values()[Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 29
    invoke-virtual {v0}, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 33
    :goto_1
    return-object v0

    .line 28
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 33
    :cond_1
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->UNKNOWN:Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;
    .locals 1

    .prologue
    .line 12
    const-class v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->$VALUES:[Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .prologue
    .line 24
    iget v0, p0, Lcom/netflix/mediaclient/javabridge/ui/IASPlayer$NrdpPlayerState;->value:I

    return v0
.end method
