.class public Lcom/novel/reader/api/NovelAPI$RestoreResult;
.super Ljava/lang/Object;
.source "NovelAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/api/NovelAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestoreResult"
.end annotation


# instance fields
.field public message:Ljava/lang/String;

.field public result:Z


# direct methods
.method public constructor <init>(ZLjava/lang/String;)V
    .locals 0
    .param p1, "result"    # Z
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 1074
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1075
    iput-boolean p1, p0, Lcom/novel/reader/api/NovelAPI$RestoreResult;->result:Z

    .line 1076
    iput-object p2, p0, Lcom/novel/reader/api/NovelAPI$RestoreResult;->message:Ljava/lang/String;

    .line 1077
    return-void
.end method
