.class public Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;
.super Ljava/lang/Object;
.source "Outline.java"


# static fields
.field public static final DEPRESSED:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

.field public static final DROP_SHADOW:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

.field public static final RAISED:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

.field public static final UNIFORM:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;


# instance fields
.field public final dx:I

.field public final dy:I

.field public final radius:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 199
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    const/4 v1, -0x2

    invoke-direct {v0, v3, v2, v1}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;-><init>(FII)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->RAISED:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    .line 200
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    invoke-direct {v0, v3, v2, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;-><init>(FII)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->DEPRESSED:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    .line 201
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    invoke-direct {v0, v3, v4, v4}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;-><init>(FII)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->DROP_SHADOW:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    .line 202
    new-instance v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;-><init>(FII)V

    sput-object v0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->UNIFORM:Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;

    return-void
.end method

.method private constructor <init>(FII)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 220
    iput p1, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->radius:F

    .line 221
    iput p2, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->dx:I

    .line 222
    iput p3, p0, Lcom/netflix/mediaclient/service/player/subtitles/text/Outline$Shadow;->dy:I

    .line 223
    return-void
.end method
