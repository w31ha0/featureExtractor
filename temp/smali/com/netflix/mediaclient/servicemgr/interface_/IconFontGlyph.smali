.class public final enum Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;
.super Ljava/lang/Enum;
.source "IconFontGlyph.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

.field public static final enum EVIDENCE_AWARDS:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

.field public static final enum EVIDENCE_BOX_OFFICE:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

.field public static final enum EVIDENCE_GENERIC:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

.field public static final enum EVIDENCE_TALENT:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

.field public static final enum EVIDENCE_TV_RATINGS:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

.field public static final enum NETFLIX_LOGO:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

.field public static final enum PLAY_W_RING:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;


# instance fields
.field private final unicodeChar:Ljava/lang/Character;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 7
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    const-string/jumbo v1, "NETFLIX_LOGO"

    const v2, 0xe600

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v4, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;-><init>(Ljava/lang/String;ILjava/lang/Character;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->NETFLIX_LOGO:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    .line 8
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    const-string/jumbo v1, "PLAY_W_RING"

    const v2, 0xe647

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v5, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;-><init>(Ljava/lang/String;ILjava/lang/Character;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->PLAY_W_RING:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    .line 10
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    const-string/jumbo v1, "EVIDENCE_AWARDS"

    const v2, 0xe736

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v6, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;-><init>(Ljava/lang/String;ILjava/lang/Character;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->EVIDENCE_AWARDS:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    .line 11
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    const-string/jumbo v1, "EVIDENCE_BOX_OFFICE"

    const v2, 0xe737

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v7, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;-><init>(Ljava/lang/String;ILjava/lang/Character;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->EVIDENCE_BOX_OFFICE:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    .line 12
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    const-string/jumbo v1, "EVIDENCE_TALENT"

    const v2, 0xe739

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-direct {v0, v1, v8, v2}, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;-><init>(Ljava/lang/String;ILjava/lang/Character;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->EVIDENCE_TALENT:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    .line 13
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    const-string/jumbo v1, "EVIDENCE_TV_RATINGS"

    const/4 v2, 0x5

    const v3, 0xe733

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;-><init>(Ljava/lang/String;ILjava/lang/Character;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->EVIDENCE_TV_RATINGS:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    .line 14
    new-instance v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    const-string/jumbo v1, "EVIDENCE_GENERIC"

    const/4 v2, 0x6

    const v3, 0xe738

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;-><init>(Ljava/lang/String;ILjava/lang/Character;)V

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->EVIDENCE_GENERIC:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    .line 6
    const/4 v0, 0x7

    new-array v0, v0, [Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->NETFLIX_LOGO:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    aput-object v1, v0, v4

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->PLAY_W_RING:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    aput-object v1, v0, v5

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->EVIDENCE_AWARDS:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    aput-object v1, v0, v6

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->EVIDENCE_BOX_OFFICE:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    aput-object v1, v0, v7

    sget-object v1, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->EVIDENCE_TALENT:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->EVIDENCE_TV_RATINGS:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->EVIDENCE_GENERIC:Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    aput-object v2, v0, v1

    sput-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/Character;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Character;",
            ")V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 19
    iput-object p3, p0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->unicodeChar:Ljava/lang/Character;

    .line 20
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;
    .locals 1

    .prologue
    .line 6
    const-class v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    return-object v0
.end method

.method public static values()[Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;
    .locals 1

    .prologue
    .line 6
    sget-object v0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->$VALUES:[Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    invoke-virtual {v0}, [Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;

    return-object v0
.end method


# virtual methods
.method public getUnicodeChar()Ljava/lang/Character;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/netflix/mediaclient/servicemgr/interface_/IconFontGlyph;->unicodeChar:Ljava/lang/Character;

    return-object v0
.end method
