.class public final enum Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;
.super Ljava/lang/Enum;
.source "ISearchLogging.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

.field public static final enum keyboard:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

.field public static final enum speech:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 55
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    const-string/jumbo v1, "speech"

    invoke-direct {v0, v1, v2}, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->speech:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    .line 56
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    const-string/jumbo v1, "keyboard"

    invoke-direct {v0, v1, v3}, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->keyboard:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->speech:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->keyboard:Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

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
    .line 54
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/ISearchLogging$InputMode;

    return-object v0
.end method
