.class public Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;
.super Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;
.source "RowLinearLayoutManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "RowLinearLayoutManager"


# instance fields
.field private mTrackingName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 22
    const-string/jumbo v0, "RowLinearLayoutManager"

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->mTrackingName:Ljava/lang/String;

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IZ)V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3}, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 22
    const-string/jumbo v0, "RowLinearLayoutManager"

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->mTrackingName:Ljava/lang/String;

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/netflix/android/widgetry/widget/TrackedLinearLayoutManager;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 22
    const-string/jumbo v0, "RowLinearLayoutManager"

    iput-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->mTrackingName:Ljava/lang/String;

    .line 34
    return-void
.end method


# virtual methods
.method protected getTrackingName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->mTrackingName:Ljava/lang/String;

    return-object v0
.end method

.method public setTrackingName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 37
    iput-object p1, p0, Lcom/netflix/android/widgetry/lolomo/RowLinearLayoutManager;->mTrackingName:Ljava/lang/String;

    .line 38
    return-void
.end method
