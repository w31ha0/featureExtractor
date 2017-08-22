.class public Lcom/novel/reader/api/NovelAPI$BackupInfo;
.super Ljava/lang/Object;
.source "NovelAPI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/api/NovelAPI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BackupInfo"
.end annotation


# instance fields
.field public collects:Ljava/lang/String;

.field public downloads:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public updated:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "email"    # Ljava/lang/String;
    .param p2, "collects"    # Ljava/lang/String;
    .param p3, "downloads"    # Ljava/lang/String;
    .param p4, "updated"    # Ljava/lang/String;

    .prologue
    .line 1232
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1233
    iput-object p1, p0, Lcom/novel/reader/api/NovelAPI$BackupInfo;->email:Ljava/lang/String;

    .line 1234
    iput-object p2, p0, Lcom/novel/reader/api/NovelAPI$BackupInfo;->collects:Ljava/lang/String;

    .line 1235
    iput-object p3, p0, Lcom/novel/reader/api/NovelAPI$BackupInfo;->downloads:Ljava/lang/String;

    .line 1236
    iput-object p4, p0, Lcom/novel/reader/api/NovelAPI$BackupInfo;->updated:Ljava/lang/String;

    .line 1237
    return-void
.end method
