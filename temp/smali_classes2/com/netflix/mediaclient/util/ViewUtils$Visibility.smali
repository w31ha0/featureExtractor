.class public final enum Lcom/netflix/mediaclient/util/ViewUtils$Visibility;
.super Ljava/lang/Enum;
.source "ViewUtils.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/util/ViewUtils$Visibility;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

.field public static final enum GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

.field public static final enum INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

.field public static final enum VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 336
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    const-string/jumbo v1, "VISIBLE"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 337
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    const-string/jumbo v1, "INVISIBLE"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 338
    new-instance v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    const-string/jumbo v1, "GONE"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    .line 335
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->VISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->INVISIBLE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->GONE:Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->$VALUES:[Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

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
    .line 335
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/ViewUtils$Visibility;
    .locals 1

    .prologue
    .line 335
    const-class v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/ViewUtils$Visibility;
    .locals 1

    .prologue
    .line 335
    sget-object v0, Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->$VALUES:[Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/ViewUtils$Visibility;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/ViewUtils$Visibility;

    return-object v0
.end method
