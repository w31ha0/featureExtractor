.class public final enum Lcom/netflix/mediaclient/servicemgr/NrdpComponent;
.super Ljava/lang/Enum;
.source "NrdpComponent.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/NrdpComponent;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

.field public static final enum MdxLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

.field public static final enum NrdApp:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

.field public static final enum NrdLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 16
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    const-string/jumbo v1, "NrdLib"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->NrdLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    .line 17
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    const-string/jumbo v1, "NrdApp"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->NrdApp:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    .line 18
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    const-string/jumbo v1, "MdxLib"

    invoke-direct {v0, v1, v4}, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->MdxLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    .line 15
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->NrdLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->NrdApp:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->MdxLib:Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    aput-object v1, v0, v4

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

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
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/NrdpComponent;
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/NrdpComponent;
    .locals 1

    .prologue
    .line 15
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/NrdpComponent;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/NrdpComponent;

    return-object v0
.end method
