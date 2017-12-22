.class final enum Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;
.super Ljava/lang/Enum;
.source "WPCardLayout.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

.field public static final enum HIDDEN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

.field public static final enum HIDING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

.field public static final enum SHOWING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

.field public static final enum SHOWN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 53
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    const-string/jumbo v1, "HIDING"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->HIDING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    .line 54
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    const-string/jumbo v1, "HIDDEN"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->HIDDEN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    const-string/jumbo v1, "SHOWING"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->SHOWING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    const-string/jumbo v1, "SHOWN"

    invoke-direct {v0, v1, v5}, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->SHOWN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    .line 52
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->HIDING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->HIDDEN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->SHOWING:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->SHOWN:Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->$VALUES:[Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

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
    .line 52
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;
    .locals 1

    .prologue
    .line 52
    const-class v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->$VALUES:[Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/iko/wordparty/moments/WPCardLayout$VideoTextureState;

    return-object v0
.end method
