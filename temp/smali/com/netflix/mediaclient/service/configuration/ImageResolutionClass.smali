.class public final enum Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
.super Ljava/lang/Enum;
.source "ImageResolutionClass.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

.field public static final enum HIGH:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

.field public static final enum LOW:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

.field public static final enum MEDIUM:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;


# instance fields
.field public final urlParamValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 4
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    const-string/jumbo v1, "LOW"

    const-string/jumbo v2, "low"

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->LOW:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    .line 5
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    const-string/jumbo v1, "MEDIUM"

    const-string/jumbo v2, "medium"

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->MEDIUM:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    .line 6
    new-instance v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    const-string/jumbo v1, "HIGH"

    const-string/jumbo v2, "high"

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->HIGH:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    .line 3
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->LOW:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->MEDIUM:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->HIGH:Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    aput-object v1, v0, v5

    sput-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->$VALUES:[Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 10
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 11
    iput-object p3, p0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->urlParamValue:Ljava/lang/String;

    .line 12
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
    .locals 1

    .prologue
    .line 3
    const-class v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;
    .locals 1

    .prologue
    .line 3
    sget-object v0, Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->$VALUES:[Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/service/configuration/ImageResolutionClass;

    return-object v0
.end method
