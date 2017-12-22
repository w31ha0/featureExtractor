.class public final enum Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;
.super Ljava/lang/Enum;
.source "ImageLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

.field public static final enum CACHE:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

.field public static final enum NETWORK:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

.field public static final enum PLACEHOLDER:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    const-string/jumbo v1, "NETWORK"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->NETWORK:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    .line 81
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    const-string/jumbo v1, "CACHE"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->CACHE:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    .line 82
    new-instance v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    const-string/jumbo v1, "PLACEHOLDER"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->PLACEHOLDER:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    .line 79
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    sget-object v1, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->NETWORK:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->CACHE:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->PLACEHOLDER:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->$VALUES:[Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

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
    .line 79
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;
    .locals 1

    .prologue
    .line 79
    const-class v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->$VALUES:[Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    return-object v0
.end method


# virtual methods
.method public isImmediate()Z
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;->NETWORK:Lcom/netflix/mediaclient/service/resfetcher/volley/ImageLoader$Type;

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
