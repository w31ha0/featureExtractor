.class public final enum Lcom/netflix/mediaclient/util/l10n/BidiMarker;
.super Ljava/lang/Enum;
.source "BidiMarker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/util/l10n/BidiMarker;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/util/l10n/BidiMarker;

.field public static final enum EMBEDDING_LTR:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

.field public static final enum EMBEDDING_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

.field public static final enum FORCED_LTR:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

.field public static final enum FORCED_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;


# instance fields
.field marker:C


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    const-string/jumbo v1, "FORCED_RTL"

    const/16 v2, 0x200f

    invoke-direct {v0, v1, v3, v2}, Lcom/netflix/mediaclient/util/l10n/BidiMarker;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->FORCED_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    const-string/jumbo v1, "FORCED_LTR"

    const/16 v2, 0x200e

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/util/l10n/BidiMarker;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->FORCED_LTR:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    .line 9
    new-instance v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    const-string/jumbo v1, "EMBEDDING_RTL"

    const/16 v2, 0x202b

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/util/l10n/BidiMarker;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->EMBEDDING_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    const-string/jumbo v1, "EMBEDDING_LTR"

    const/16 v2, 0x202a

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/util/l10n/BidiMarker;-><init>(Ljava/lang/String;IC)V

    sput-object v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->EMBEDDING_LTR:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    .line 6
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->FORCED_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    aput-object v1, v0, v3

    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->FORCED_LTR:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->EMBEDDING_RTL:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->EMBEDDING_LTR:Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    aput-object v1, v0, v6

    sput-object v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->$VALUES:[Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IC)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(C)V"
        }
    .end annotation

    .prologue
    .line 14
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 15
    iput-char p3, p0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->marker:C

    .line 16
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/util/l10n/BidiMarker;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/util/l10n/BidiMarker;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->$VALUES:[Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/util/l10n/BidiMarker;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/util/l10n/BidiMarker;

    return-object v0
.end method


# virtual methods
.method public getMarker()C
    .locals 1

    .prologue
    .line 19
    iget-char v0, p0, Lcom/netflix/mediaclient/util/l10n/BidiMarker;->marker:C

    return v0
.end method
