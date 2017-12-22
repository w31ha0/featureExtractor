.class public final enum Lcom/netflix/falkor/task/CmpTaskMode;
.super Ljava/lang/Enum;
.source "CmpTaskMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/falkor/task/CmpTaskMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/falkor/task/CmpTaskMode;

.field public static final enum FROM_CACHE_ONLY:Lcom/netflix/falkor/task/CmpTaskMode;

.field public static final enum FROM_CACHE_OR_NETWORK:Lcom/netflix/falkor/task/CmpTaskMode;

.field public static final enum FROM_NETWORK:Lcom/netflix/falkor/task/CmpTaskMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4
    new-instance v0, Lcom/netflix/falkor/task/CmpTaskMode;

    const-string/jumbo v1, "FROM_CACHE_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/netflix/falkor/task/CmpTaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/falkor/task/CmpTaskMode;->FROM_CACHE_ONLY:Lcom/netflix/falkor/task/CmpTaskMode;

    .line 5
    new-instance v0, Lcom/netflix/falkor/task/CmpTaskMode;

    const-string/jumbo v1, "FROM_CACHE_OR_NETWORK"

    invoke-direct {v0, v1, v3}, Lcom/netflix/falkor/task/CmpTaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/falkor/task/CmpTaskMode;->FROM_CACHE_OR_NETWORK:Lcom/netflix/falkor/task/CmpTaskMode;

    .line 6
    new-instance v0, Lcom/netflix/falkor/task/CmpTaskMode;

    const-string/jumbo v1, "FROM_NETWORK"

    invoke-direct {v0, v1, v4}, Lcom/netflix/falkor/task/CmpTaskMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/falkor/task/CmpTaskMode;->FROM_NETWORK:Lcom/netflix/falkor/task/CmpTaskMode;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/falkor/task/CmpTaskMode;

    sget-object v1, Lcom/netflix/falkor/task/CmpTaskMode;->FROM_CACHE_ONLY:Lcom/netflix/falkor/task/CmpTaskMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/falkor/task/CmpTaskMode;->FROM_CACHE_OR_NETWORK:Lcom/netflix/falkor/task/CmpTaskMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/falkor/task/CmpTaskMode;->FROM_NETWORK:Lcom/netflix/falkor/task/CmpTaskMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/falkor/task/CmpTaskMode;->$VALUES:[Lcom/netflix/falkor/task/CmpTaskMode;

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
    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/falkor/task/CmpTaskMode;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/netflix/falkor/task/CmpTaskMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/falkor/task/CmpTaskMode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/falkor/task/CmpTaskMode;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/netflix/falkor/task/CmpTaskMode;->$VALUES:[Lcom/netflix/falkor/task/CmpTaskMode;

    invoke-virtual {v0}, [Lcom/netflix/falkor/task/CmpTaskMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/falkor/task/CmpTaskMode;

    return-object v0
.end method
