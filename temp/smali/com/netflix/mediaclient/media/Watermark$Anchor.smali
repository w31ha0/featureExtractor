.class public final enum Lcom/netflix/mediaclient/media/Watermark$Anchor;
.super Ljava/lang/Enum;
.source "Watermark.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/media/Watermark$Anchor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/media/Watermark$Anchor;

.field public static final enum bottom_center:Lcom/netflix/mediaclient/media/Watermark$Anchor;

.field public static final enum top_center:Lcom/netflix/mediaclient/media/Watermark$Anchor;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/media/Watermark$Anchor;

    const-string/jumbo v1, "top_center"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/media/Watermark$Anchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/media/Watermark$Anchor;->top_center:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    .line 83
    new-instance v0, Lcom/netflix/mediaclient/media/Watermark$Anchor;

    const-string/jumbo v1, "bottom_center"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/media/Watermark$Anchor;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/media/Watermark$Anchor;->bottom_center:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    .line 81
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/media/Watermark$Anchor;

    sget-object v1, Lcom/netflix/mediaclient/media/Watermark$Anchor;->top_center:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/media/Watermark$Anchor;->bottom_center:Lcom/netflix/mediaclient/media/Watermark$Anchor;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/media/Watermark$Anchor;->$VALUES:[Lcom/netflix/mediaclient/media/Watermark$Anchor;

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
    .line 81
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/media/Watermark$Anchor;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/netflix/mediaclient/media/Watermark$Anchor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/media/Watermark$Anchor;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/media/Watermark$Anchor;
    .locals 1

    .prologue
    .line 81
    sget-object v0, Lcom/netflix/mediaclient/media/Watermark$Anchor;->$VALUES:[Lcom/netflix/mediaclient/media/Watermark$Anchor;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/media/Watermark$Anchor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/media/Watermark$Anchor;

    return-object v0
.end method
