.class public Lcom/novel/reader/MainActivity$UpdateInfo;
.super Ljava/lang/Object;
.source "MainActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/novel/reader/MainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UpdateInfo"
.end annotation


# instance fields
.field public newest_version:I

.field final synthetic this$0:Lcom/novel/reader/MainActivity;

.field public updateLink:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/novel/reader/MainActivity;)V
    .locals 1
    .param p1, "this$0"    # Lcom/novel/reader/MainActivity;

    .prologue
    .line 643
    iput-object p1, p0, Lcom/novel/reader/MainActivity$UpdateInfo;->this$0:Lcom/novel/reader/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    const-string v0, ""

    iput-object v0, p0, Lcom/novel/reader/MainActivity$UpdateInfo;->updateLink:Ljava/lang/String;

    return-void
.end method
