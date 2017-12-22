.class public Lcom/netflix/mediaclient/util/LastKeyEvent;
.super Ljava/lang/Object;
.source "LastKeyEvent.java"


# static fields
.field public static final EXPIRED:J = 0xfaL

.field private static final TAG:Ljava/lang/String; = "nf_key"


# instance fields
.field private expirationTimeout:J

.field private lastKey:I

.field private ts:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->expirationTimeout:J

    .line 33
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->lastKey:I

    .line 45
    return-void
.end method

.method public constructor <init>(J)V
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->expirationTimeout:J

    .line 33
    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->lastKey:I

    .line 53
    iput-wide p1, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->expirationTimeout:J

    .line 54
    return-void
.end method


# virtual methods
.method public shouldIgnore(Landroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 64
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 65
    iget-wide v2, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->ts:J

    iget-wide v4, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->expirationTimeout:J

    add-long/2addr v2, v4

    sub-long/2addr v2, v0

    .line 67
    iget v4, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->lastKey:I

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 68
    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 72
    const/4 v0, 0x1

    .line 83
    :goto_0
    return v0

    .line 81
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    iput v2, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->lastKey:I

    .line 82
    iput-wide v0, p0, Lcom/netflix/mediaclient/util/LastKeyEvent;->ts:J

    .line 83
    const/4 v0, 0x0

    goto :goto_0
.end method
