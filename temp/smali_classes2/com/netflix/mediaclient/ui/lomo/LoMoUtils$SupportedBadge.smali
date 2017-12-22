.class final enum Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;
.super Ljava/lang/Enum;
.source "LoMoUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

.field public static final enum NEW:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 101
    new-instance v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->NEW:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    .line 100
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    sget-object v1, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->NEW:Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    aput-object v1, v0, v2

    sput-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->$VALUES:[Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

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
    .line 100
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;
    .locals 1

    .prologue
    .line 100
    sget-object v0, Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->$VALUES:[Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/ui/lomo/LoMoUtils$SupportedBadge;

    return-object v0
.end method
