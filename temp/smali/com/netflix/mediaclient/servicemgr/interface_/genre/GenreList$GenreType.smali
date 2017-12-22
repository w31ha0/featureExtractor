.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;
.super Ljava/lang/Enum;
.source "GenreList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

.field public static final enum GALLERY:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

.field public static final enum LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

.field public static final enum UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 21
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    const-string/jumbo v1, "GALLERY"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->GALLERY:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    .line 22
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    const-string/jumbo v1, "LOLOMO"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    .line 23
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    const-string/jumbo v1, "UNKNOWN"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    .line 20
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->GALLERY:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->LOLOMO:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->UNKNOWN:Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

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
    .line 20
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/genre/GenreList$GenreType;

    return-object v0
.end method
